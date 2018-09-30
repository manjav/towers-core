package com.gt.towers.battle;
import com.gt.towers.Game;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.battle.units.Card;
import com.gt.towers.battle.units.Unit;
import com.gt.towers.constants.MessageTypes;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.interfaces.IUnitHitCallback;
import com.gt.towers.utils.lists.FloatList;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntIntIntMap;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntUnitMap;
import haxe.Int64;

/**
 * ...
 * @author Mansour Djawadi
 */
class BattleField
{
	public static var POPULATION_MAX:Int = 10;
	public static var POPULATION_INIT:Int = 5;
	public static var WIDTH:Int = 1080;
	public static var HEIGHT:Int = 1440;
	public static var PADDING:Int = 150;
	private var questProvider:FieldProvider;

	public var elixirBar:FloatList;
	public var singleMode:Bool;
	public var map:FieldData;
	public var difficulty:Int;
	public var arena:Int;
	public var extraTime:Int = 0;
	public var decks:IntIntIntMap;
	public var units:IntUnitMap;
	public var now:Float = 0;
	public var startAt:Float = 0;
	public var deltaTime:Int = 100;
	public var side:Int = 0;
	
#if java 
	public var games:java.util.List<Game>;
	public var unitId:Int = 0;
	public var unitsHitCallback:IUnitHitCallback;
#end

	public function new(game_0:Game, game_1:Game, mapName:String, side:Int, hasExtraTime:Bool)
	{
		var isOperation = mapName.substr(0, 10) == "operation_";
		singleMode = game_1.player.cards.keys().length == 0;
		this.side = side;
		if( isOperation )
			map = game_0.fieldProvider.operations.get(mapName);
		else
			map = game_0.fieldProvider.battles.get(mapName);
			
		if( hasExtraTime )
			extraTime = map.times.get(3);
		
		units = new IntUnitMap();
#if java

		//waitingUnits = new java.util.concurrent.ConcurrentHashMap();
		//game_0.calculator.setField(this);
		//game_1.calculator.setField(this);
		games = new java.util.ArrayList();
		games.add(game_0);
		games.add(game_1);
		
		game_0.player.hardMode = false;
		if( singleMode )
		{
			if( isOperation )
			{
				if( map.index == 2 )
				{
					game_0.player.hardMode = game_0.player.emptyDeck();
					difficulty = game_0.player.hardMode ? 14 : 0;
					//map.places.get(3).enabled = !game_0.player.hardMode;
					//map.places.get(0).enabled = game_0.player.hardMode;
				}
				else
					difficulty = Math.round(map.index / 5) - 1;
			}
			else
			{
				var winStreak = game_0.player.getResource(ResourceType.WIN_STREAK);
				if( winStreak < -100000 )
					winStreak = 214748364;
				arena = game_0.player.get_arena(0);
				if( winStreak > 2 )
					difficulty = arena + winStreak - 2;
				else if( winStreak < -2 )
					difficulty = arena + winStreak + 2;
				else
					difficulty = arena;
				
				if( difficulty != 0 )
				{
					var ep:Int = game_0.player.get_point() + Math.round(Math.pow(1.6, Math.abs(difficulty) ) * difficulty / Math.abs(difficulty));
					game_1.player.resources.set(ResourceType.POINT, ep );
				}
			}
			
			if( difficulty != 0 )
			{
				var arenaScope = game_0.arenas.get(arena).max - game_0.arenas.get(arena).min;
				game_1.player.resources.set(ResourceType.POINT, Math.round( Math.max(0, game_0.player.get_point() + Math.random() * arenaScope - arenaScope * 0.5) ) );
			}
			
			var cards = game_0.player.cards.keys();
			var i = 0;
			while ( i < cards.length )
			{
				game_1.player.cards.set(cards[i], game_0.player.cards.get(cards[i]));
				i ++;
			}
		}
		
		// create decks	
		decks = new IntIntIntMap();
		decks.set(0, game_0.player.getSelectedDeck().randomize());
		if( singleMode )		
			decks.set(1, game_0.player.getSelectedDeck().randomize());//addRandomDeck(game_0);
		else
			decks.set(1, game_1.player.getSelectedDeck().randomize());
#end
		
		elixirBar = new FloatList();
		elixirBar.push(POPULATION_INIT);
		elixirBar.push(POPULATION_INIT);
	}
	
	function addRandomDeck(game:Game) : Void
	{
		var botDeck = new IntIntMap();
		var availableCards = game.player.availabledCards(); // random arena
		var i = 1;
		while( i < 9 )
		{
			var randType = availableCards.get(Math.floor ( Math.random() * availableCards.size() ));
			if( randType > (i * 100 + 100) && randType < (i * 100 + 200) )
			{
				botDeck.set(i, randType);
				i ++;
			}
		}
		decks.set(1, botDeck);
	}
	
	public function update(deltaTime:Int) : Void
	{
		this.deltaTime = deltaTime;
		this.now += deltaTime;
		
		// update units	
		var deadUnits = new IntList();
		var keys = units.keys();
		var i = keys.length - 1;
		while ( i >= 0 )
		{
			if( units.get(keys[i]).disposed )
				deadUnits.push(keys[i]);
			else
				units.get(keys[i]).update();
			i --;
		}
		// remove dead units
		i = deadUnits.size() - 1;
		while ( i >= 0 )
		{
			units.remove(deadUnits.get(i));
			i --;
		}
		
		// increase elixir bars
		//#if java
		var increaseCoef = (getDuration() > getTime(2) ? 0.001 : 0.0005) * deltaTime;
		elixirBar.set(0, Math.min(BattleField.POPULATION_MAX, elixirBar.get(0) + increaseCoef ));
		elixirBar.set(1, Math.min(BattleField.POPULATION_MAX, elixirBar.get(1) + increaseCoef ));
		//trace("elixirBar " + elixirBar.get(0) + " " + elixirBar.get(1));
		//#end
	}
	
	public function getDuration() : Float
	{
		return now / 1000 - startAt;
	}
	
	#if java
	public function deployUnit(type:Int, side:Int, x:Float, y:Float) : Int
	{
		var response = cardAvailabled(side, type);
		if( response != MessageTypes.RESPONSE_SUCCEED )
			return response;
		
		trace("id:" + unitId, " type:" + type, " side:" + side, " x:"+x, " y:"+y);
        var card = games.get(side).player.cards.get(type);
		var unit = new Unit(unitId, this, card, side, x, y);
		elixirBar.set(side, elixirBar.get(side) - card.elixirSize );
		units.set(unitId, unit);
		unitId ++;
		return unit.id;
	}
	
	public function hitUnit(offender:Unit, hitUnits:java.util.List<Unit>) : Void
	{
		if( unitsHitCallback != null )
			unitsHitCallback.hit(offender.id, hitUnits);
			
		var index:Int = hitUnits.size() - 1;
		var res = "Offender: " + offender.id;
        while( index >= 0 )
		{
			res += "|" + hitUnits.get(index).id + " (" + hitUnits.get(index).health + ") => ";
			hitUnits.get(index).hit(offender.card.bulletDamage);
			res += "(" + hitUnits.get(index).health + ")";
			index --;
		}
		//trace(res);
	}


	/*public function removeTroop(id:Int) : Void
	{
		if( troops.containsKey(id) )
			troops.remove(id);
	}*/
	
	public function getSide(id:Int):Int
	{
		var gLen = games.size() - 1;
		while( gLen >= 0 )
		{
			if( id == games.get(gLen).player.id )
				return gLen;
			gLen --;
		}
		return 0;
	}
	
	public function cardAvailabled(side:Int, type:Int) : Int
	{
		if( !games.get(side).player.cards.exists(type) )
			return MessageTypes.RESPONSE_NOT_FOUND;
		if( !decks.get(side).existsValue(type) )
			return MessageTypes.RESPONSE_NOT_ALLOWED;
		
		return elixirBar.get(side) >= games.get(side).player.cards.get(type).elixirSize ? MessageTypes.RESPONSE_SUCCEED : MessageTypes.RESPONSE_NOT_ENOUGH_REQS;
	}
	
	#end
	public function dispose() 
	{
		/*var p:Int = places.size() - 1;
		while ( p >= 0 )
		{
			places.get(p).dispose();
			p --;
		}*/
		
		// dispose troops
		/*var iterator : java.util.Iterator<java.util.Map.Map_Entry<Int, Troop>> = troops.entrySet().iterator();
        while( iterator.hasNext() )
        {
            var troop:Troop = iterator.next().getValue();
			troop.dispose();
		}*/
		units.clear();
	}

	
	public function getColorIndex(side:Int):Int
	{
		return side == this.side ? 0 : 1;
	}
	public function getTime(score:Int):Int
	{
		if( map == null || score< 0 || score > 3 )
			return 0;
		return map.times.get(score) + extraTime;
	}
}