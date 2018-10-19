package com.gt.towers.battle;
import com.gt.towers.Game;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.battle.bullets.Bullet;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.battle.fieldes.PlaceData;
import com.gt.towers.battle.units.Card;
import com.gt.towers.battle.units.Unit;
import com.gt.towers.constants.CardFeatureType;
import com.gt.towers.constants.CardTypes;
import com.gt.towers.constants.MessageTypes;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.interfaces.IUnitHitCallback;
import com.gt.towers.utils.CoreUtils;
import com.gt.towers.utils.lists.FloatList;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntBulletMap;
import com.gt.towers.utils.maps.IntIntIntMap;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntUnitMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class BattleField
{
	static public var POPULATION_MAX:Int = 10;
	static public var POPULATION_INIT:Int = 7;
	static public var WIDTH:Int = 960;
	static public var HEIGHT:Int = 1280;
	static public var PADDING:Int = 100;
	private var questProvider:FieldProvider;

	public var elixirBar:FloatList;
	public var singleMode:Bool;
	public var map:FieldData;
	public var difficulty:Int;
	public var arena:Int;
	public var extraTime:Int = 0;
	public var decks:IntIntIntMap;
	public var units:IntUnitMap;
	public var bullets:IntBulletMap;
	public var now:Float = 0;
	public var startAt:Float = 0;
	public var deltaTime:Int = 25;
	public var side:Int = 0;
	public var spellId:Int = 1000000;
	//private var tileMap:TileMap;
#if java 
	public var games:java.util.List<Game>;
	public var unitsHitCallback:IUnitHitCallback;
	private var unitId:Int = 0;
#end

	public function new(game_0:Game, game_1:Game, type:String, index:Int, side:Int)
	{
		var mapName = type + "_" + index;
		singleMode = game_1.player.cards.keys().length == 0;
		this.side = side;
		if( type == FieldData.TYPE_OPERATION )
			map = game_0.fieldProvider.operations.get(mapName);
		else if( type == FieldData.TYPE_TOUCHDOWN )
			map = game_0.fieldProvider.touchdowns.get(mapName);
		else if( type == FieldData.TYPE_HEADQUARTER )
			map = game_0.fieldProvider.headquarters.get(mapName);
		
		extraTime = map.times.get(3);
		
		//tileMap = new TileMap();
		units = new IntUnitMap();
		bullets = new IntBulletMap();
		
#if java
		//waitingUnits = new java.util.concurrent.ConcurrentHashMap();
		//game_0.calculator.setField(this);
		//game_1.calculator.setField(this);
		games = new java.util.ArrayList();
		games.add(game_0);
		games.add(game_1);
		
		if( type == FieldData.TYPE_HEADQUARTER )
		{
			var p:PlaceData;
			while ( unitId < map.places.size() )
			{
				p = map.places.get(unitId);
				var card = new Card(games.get(p.side), p.type, games.get(p.side).player.get_level(0));
				units.set(unitId, new Unit(unitId, this, card, p.side, p.x, p.y));trace(units.get(unitId).toString());
				unitId ++;
			}
		}
		
		game_0.player.hardMode = false;
		if( singleMode )
		{
			if( type == FieldData.TYPE_OPERATION )
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
			decks.set(1, game_0.player.getSelectedDeck().randomize());
			//addRandomDeck(game_0);
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
		var i = 0;
		while( i < 8 )
		{
			var randType = availableCards.get(Math.floor ( Math.random() * availableCards.size() ));
			if( botDeck.existsValue(randType) ) 
				continue;
			botDeck.set(i, randType);
			i ++;
		}
		decks.set(1, botDeck);
	}
	
	public function update(deltaTime:Int) : Void
	{
		this.deltaTime = deltaTime;
		this.now += deltaTime;
		
		
		// -=-=-=-=-=-=-=-  UPDATE AND REMOVE UNITS  -=-=-=-=-=-=-=-=-=-
		var deadUnits = new IntList();
		var keys = units.keys();
		var i = keys.length - 1;
		while ( i >= 0 )
		{
			if( units.get(keys[i]).disposed() )
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
		
		
		// -=-=-=-=-=-=-=-=-  UPDATE AND REMOVE BULLETS  -=-=-=-=-=-=-=-=-
		var explodedBullets = new IntList();
		keys = bullets.keys();
		i = keys.length - 1;
		while ( i >= 0 )
		{
			if( bullets.get(keys[i]).disposed() )
				explodedBullets.push(keys[i]);
			else
				bullets.get(keys[i]).update();
			i --;
		}
		// remove exploded bullets
		i = explodedBullets.size() - 1;
		while ( i >= 0 )
		{
			bullets.remove(explodedBullets.get(i));
			i --;
		}
		
		
		// -=-=-=-=-=-=-=-=-=-=-  INCREASE ELIXIRS  -=-=-=-=-=-=-=-=-=-=-=-
		var increaseCoef = (getDuration() > getTime(2) ? 0.00066 : 0.00033) * deltaTime;
		elixirBar.set(0, Math.min(BattleField.POPULATION_MAX, elixirBar.get(0) + increaseCoef ));
		elixirBar.set(1, Math.min(BattleField.POPULATION_MAX, elixirBar.get(1) + increaseCoef ));
		
		//trace("units: " + units.keys().length + "  bullets: " + bullets.keys().length);
	}
	
	public function getDuration() : Float
	{
		return now / 1000 - startAt;
	}
	
	#if java
	public function summonUnit(type:Int, side:Int, x:Float, y:Float) : Int
	{
		var response = cardAvailabled(side, type);
		if( response != MessageTypes.RESPONSE_SUCCEED )
			return response;
		
        var card = games.get(side).player.cards.get(type);
		elixirBar.set(side, elixirBar.get(side) - card.elixirSize );
		
		if( CardTypes.isSpell(type) )
			return addSpell(card, side, x, y);
		
		var i = card.quantity - 1;
		while ( i >= 0 )
		{
			var unit = new Unit(unitId, this, card, side, CoreUtils.getXPosition(card.quantity, i, x), CoreUtils.getYPosition(card.quantity, i, y));
			units.set(unitId, unit);
			//trace("deploy id:" + unitId, " type:" + type, " side:" + side, " x:" + unit.x, " y:" + unit.y);
			unitId ++;
			i --;
		}
		return unitId - 1;
	}
	
	function addSpell(card:Card, side:Int, x:Float, y:Float) : Int
	{
		bullets.set(spellId, new Bullet(this, spellId, card, side, x, y + games.get(side).calculator.get(CardFeatureType.F28_BULLET_FIRE_POSITION, card.type, 0), x, y));
		spellId ++;
		return spellId - 1;
	}
	
	public function addBullet(unit:Unit, side:Int, x:Float, y:Float, dx:Float, dy:Float) : Void 
	{
		bullets.set(unit.bulletId, new Bullet(this, unit.bulletId, unit.card, side, x, y, dx, dy));
		unit.bulletId ++;
	}
	
	public function explodeBullet(bullet:Bullet) : Void
	{
		var u:Unit;
		var distance:Float = 0;
		//var res = "Bullet=> type: " + bullet.card.type + ", id:" + bullet.id + ", damage:" + bullet.card.bulletDamage;
		var hitUnits:java.util.List<java.lang.Integer> = new java.util.ArrayList();
		var iterator : java.util.Iterator < java.util.Map.Map_Entry<Int, Unit> > = units._map.entrySet().iterator();
        while ( iterator.hasNext() )
		{
			u = iterator.next().getValue();
			if( u.disposed() )
				continue;
			distance = Math.abs(CoreUtils.getDistance(u.x, u.y, bullet.x, bullet.y)) - bullet.card.bulletDamageArea - u.card.sizeH;
			//res += " ,  distance: " + distance + ", bulletDamageArea:" + bullet.card.bulletDamageArea + ", sizeH:" + u.card.sizeH;
            if( ((bullet.card.bulletDamage < 0 && u.side == bullet.side) || (bullet.card.bulletDamage >= 0 && u.side != bullet.side)) && distance <= 0 )
			{
				//res += "|" + u.id + " (" + u.health + ") => ";
				u.hit(bullet.card.bulletDamage);
				//res += "(" + u.health + ")";
				hitUnits.add(u.id);
			}
		}
		//if( bullet.card.type == 109 )
		//trace(res);
		if( unitsHitCallback != null )
			unitsHitCallback.hit(bullet.id, bullet.card.bulletDamage, hitUnits);
	}
	
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
	
	public function reset() : Void
	{
		dispose();
		elixirBar.set(0, POPULATION_INIT);
		elixirBar.set(1, POPULATION_INIT);
	}
	
	public function dispose() : Void
	{
		// dispose all units
		var keys = units.keys();
		var i = keys.length - 1;
		while ( i >= 0 )
		{
			units.get(keys[i]).dispose();
			i --;
		}
		units.clear();
		
		// dispose all bullets
		keys = bullets.keys();
		i = keys.length - 1;
		while ( i >= 0 )
		{
			bullets.get(keys[i]).dispose();
			i --;
		}
		bullets.clear();
	}
	
	public function getColorIndex(side:Int) : Int
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