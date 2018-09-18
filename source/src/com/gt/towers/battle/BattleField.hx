package com.gt.towers.battle;
import com.gt.towers.Game;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.battle.units.Unit;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.interfaces.IUnitHitCallback;
import com.gt.towers.utils.lists.FloatList;
import com.gt.towers.utils.lists.IntList;
import haxe.Int64;

/**
 * ...
 * @author Mansour Djawadi
 */
class BattleField
{
	public static var POPULATION_MAX:Int = 10;
	public static var POPULATION_INIT:Int = 5;
	private var questProvider:FieldProvider;

	public var elixirBar:FloatList;
	public var singleMode:Bool;
	public var map:FieldData;
	public var difficulty:Int;
	public var arena:Int;
	public var extraTime:Int = 0;
	
#if java 
	public var games:java.util.List<Game>;
	public var now:Int64 = 0;
	public var startAt:Int64 = 0;
	public var interval:Int = 100;
	public var units:java.util.Map<Int, Unit>;
	public var unitsHitCallback:IUnitHitCallback;
#end

	public function new(game_0:Game, game_1:Game, mapName:String, troopType:Int, hasExtraTime:Bool)
	{
		var isOperation = mapName.substr(0, 10) == "operation_";
		singleMode = game_1.player.cards.keys().length == 0;
		
		if( isOperation )
			map = game_0.fieldProvider.operations.get(mapName);
		else
			map = game_0.fieldProvider.battles.get(mapName);
			
		if( hasExtraTime )
			extraTime = map.times.get(3);

		
#if java 
		//game_0.calculator.setField(this);
		//game_1.calculator.setField(this);
		games = new java.util.ArrayList<Game>();
		games.add(game_0);
		games.add(game_1);
		units = new java.util.concurrent.ConcurrentHashMap<Int, Unit>();
#end
		
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
				else if ( winStreak < -2 )
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
		}
			
		// create decks	
		addPlayerDeck(game_0, 0);
		if( singleMode )		
			addRandomDeck(game_0);
		else
			addPlayerDeck(game_1, 1);
			
		elixirBar = new FloatList();
		elixirBar.push(POPULATION_INIT);
		elixirBar.push(POPULATION_INIT);
	}
	
	function addPlayerDeck(game:Game, troopType:Int) : Void
	{
		game.player.battleDeck = game.player.decks.get(game.player.selectedDeck);
	}
	
	function addRandomDeck(game:Game) : Void
	{
		game.player.battleDeck = new IntList();
		var availableCards = game.player.availabledCards(); // random arena
		var i = 1;
		while( i < 5 )
		{
			var randType = availableCards.get(Math.floor ( Math.random() * availableCards.size() ));
			if( randType > (i * 100 + 100) && randType < (i * 100 + 200) )
			{
				game.player.battleDeck.push(randType);
				i ++;
			}
		}
	}
	
	#if java
	public function update() : Void
	{
		now += interval;
		
		// increase elixir bars
		var increaseCoef = getDuration() > getTime(2) ? 0.1 : 0.04;
		elixirBar.set(0, Math.min(BattleField.POPULATION_MAX, elixirBar.get(0) + increaseCoef ));
		elixirBar.set(1, Math.min(BattleField.POPULATION_MAX, elixirBar.get(1) + increaseCoef ));
		
		// update troops	
		var iterator : java.util.Iterator<java.util.Map.Map_Entry<Int, Unit>> = units.entrySet().iterator();
        while( iterator.hasNext() )
			iterator.next().getValue().update(now);
	}
	
	public function getDuration() : Int64
	{
		return now / 1000 - startAt;
	}
	
	public function hitUnit(defenderId:Int, hittedUnits:java.util.List<Unit>) : Void
	{
		if( unitsHitCallback != null )
			unitsHitCallback.hit(defenderId, hittedUnits);
			
		var index:Int = hittedUnits.size() - 1;
        while( index >= 0 )
		{
			if( hittedUnits.get(index).card.troopHealth <= 0 )
				units.remove(hittedUnits.get(index).id);
			index --;
		}
	}

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
	/*public function removeTroop(id:Int) : Void
	{
		if( troops.containsKey(id) )
			troops.remove(id);
	}*/
	#end
	
	public function getTime(score:Int):Int
	{
		if( map == null || score< 0 || score > 3 )
			return 0;
		return map.times.get(score) + extraTime;
	}
}