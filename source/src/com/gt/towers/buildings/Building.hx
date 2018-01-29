package com.gt.towers.buildings;

import com.gt.towers.Game;
import com.gt.towers.battle.Troop;
import com.gt.towers.buildings.cals.*;
import com.gt.towers.constants.*;
import com.gt.towers.events.BuildingEvent;
import com.gt.towers.utils.GTimer;

/**
 * ...
 * @author Mansour Djawadi
 */
class Building extends AbstractBuilding
{
	public var place:Place;
	public var index:Int;
	public var troopType:Int = -1;
	public var healRate:Float = 0.15;
	
	public var troopHealth:Float = 1;
	public var troopPower:Float = 1;
	public var troopSpeed:Int = 4000;
	public var troopRushGap:Int = 250;
	
	public var damage:Float = 1.05;
	public var damageGap:Int = 800;
	public var damageRangeMin:Float = 50;
	public var damageRangeMax:Float = 180;
#if java
	public var troops:java.util.ArrayDeque<Troop>;
	#end

	var _health:Float = 10;
	//var _population:Float = 0;
	var transfromTimeoutId:Int = -1;
	
	public function new(game:Game, place:Place, index:Int, type:Int, level:Int = 0)
	{
		this.game = game;
		this.place = place;
		if( place != null )
			this._health = place.health;
		this.index = index;
		
		if ( level == 0 )
		{
			if( getAbstract(type) != null )
				level = getAbstract(type).get_level() ;
			else
				level = 1;
		}
		super( game, type, level + (place == null ? 0 : place.levelOffset) );
	#if java
		this.troops = new java.util.ArrayDeque<Troop>();
	#end	
	}

	override private function setFeatures():Void
	{
		super.setFeatures();
		
		// troops data
		troopSpeed = game.featureCaculator.getInt(BuildingFeatureType.F11_TROOP_SPEED, type, get_level());
		troopPower = game.featureCaculator.get(BuildingFeatureType.F12_TROOP_POWER, type, get_level());
		troopHealth = game.featureCaculator.get(BuildingFeatureType.F13_TROOP_HEALTH, type, get_level());
		troopRushGap = game.featureCaculator.getInt(BuildingFeatureType.F14_TROOP_RUSH_GAP, type, get_level());
		
		// defensive data
		damage = game.featureCaculator.get(BuildingFeatureType.F21_DAMAGE, type, get_level());
		damageGap = game.featureCaculator.getInt(BuildingFeatureType.F22_DAMAGE_GAP, type, get_level());
		damageRangeMin = game.featureCaculator.get(BuildingFeatureType.F23_RANGE_RANGE_MIN, type, get_level());
		damageRangeMax = game.featureCaculator.get(BuildingFeatureType.F24_RANGE_RANGE_MAX, type, get_level());
	}

	public function get_health():Int
	{
		return Math.floor(_health);
	}
	
	// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-  methods  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
	
	public function reset(troopType:Int):Void
	{
		this.troopType = troopType;
		#if java
		_health = place.health * 0.5;
		#end
	}

#if java
	public function get_population():Int
	{
		return troops.size();
	}
	
	public function interval():Void
	{
	//	if ( place==null || !place.enabled )
	//		return;
	//	_health = Math.min(_health + healRate, place.health);
		if( troopType > -1 && place.mode == 1 )
			place.battlefield.elixirBar.set(troopType, place.battlefield.elixirBar.get(troopType) + 0.02 );
		
		if ( _health < place.health )
			_health = Math.min(_health + 0.1, place.health);

		/*if ( _population > place.health )
		{
			var br = Math.ceil((_population - place.health) * 0.1 );
			if( _population - br < place.health )
				_population = place.health;
			else
				_population -= br;
		}*/
	}
	
	public function popTroop(troop:Troop):Bool
	{
		var ret = get_population() >= 1;
		if ( ret )
		{
			troops.removeFirst();
			place.battlefield.fighters.put(troop.id, troop);
		}
			
		if( get_population() <= 0 )
			type = CardTypes.C001;
		
		return ret;
	}
	
	public function pushTroops(troop:Troop) : Void
	{
		place.battlefield.fighters.remove(troop.id);
		if ( troopType == troop.type )
		{
			
			//if ( _health >= place.health )
				troops.offerLast(troop);
			//else
			//	_health = Math.min(_health + 1, place.health);
		}
		else
		{
			if ( get_population() > 0 )
				troops.removeLast(); //_population = Math.max(_population - troop.power, 0);
			else
				_health -= troop.power;
		}

		if( _health <= 0 )
			occupy(troop);
	}
	
	function occupy(troop:Troop) 
	{
		GTimer.clearTimeout(transfromTimeoutId);
		type = CardTypes.C001;
		reset(troop.type);
		//place.game = game = troop.building.game;
		place.enabled = true; 
		//place.levelOffset = troop.building.place.levelOffset;
		//place.powerCoef = troop.building.place.powerCoef;
		setFeatures(); 
		dispatchEvent(place.index, BuildingEvent.OCCUPIED, null);
	}
	
	public function transform(card:Building) : Bool
	{
		if ( !transformable(card) )
			return false;
		
		//trace(" type:" + type + " population:" + get_population() + " card.type:" + card.type + " card._population:" + card._population + " card.index:" + card.index + " card.troopType:" + card.troopType );
		deployTime = game.featureCaculator.getInt(BuildingFeatureType.F04_DEPLOY_TIME, type, get_level());
		dispatchEvent(place.index, BuildingEvent.TRANSFORM_STARTED, null);
		place.enabled = false;
		place.battlefield.elixirBar.set(troopType, place.battlefield.elixirBar.get(troopType) - card.elixirSize );
		transfromTimeoutId = GTimer.setTimeout(activeFighters, card.deployTime, [card]);
		return true;
	}
	function activeFighters(card:Building) : Void
	{
		place.enabled = true;
		//reset(card.troopType);
		this.type = card.type;
		setFeatures();
		
		var i = 0;
		while( i < troopsCount )
		{
			var tid = place.getIncreasedId();
			troops.addLast( new Troop(tid, this) );
			i ++;
		}
		dispatchEvent(place.index, BuildingEvent.TRANSFORM_COMPLETE, null);
	}
	
	public function getPower():Float
	{
		var ret:Float = 0;
		var itr = troops.iterator();
		while ( itr.hasNext() )
		{
			ret += itr.next().power;
		}
		return ret;
	}
	
#end
	
	public function transformable(card:Building) : Bool
	{
		if ( !place.enabled || troopType != card.troopType || place.battlefield.elixirBar.get(troopType) < card.elixirSize/* || (get_health() < place.health && place.mode < 2 )*/ )
			return false;
		return true;
	}
	
	public function getAbstract(type:Int):AbstractBuilding
	{
		if ( !game.player.buildings.exists(type) )
			return null;
		return game.player.buildings.get(type);
	}
	public function equalsCategory(type:Int):Bool
	{
		return category == CardTypes.get_category(type);
	}
 
	override public function upgrade(confirmedHards:Int=0):Bool
	{
		var ret = super.upgrade(confirmedHards);
		if ( !ret )
			return false;
		setFeatures();
		return ret;
	}
	
#if flash	
	/*public function get_troopName () : String
	{
		return "dwarf3b-move-";
	}
	public function get_troopSpriteCount () : Int
	{
		return 12;
	}*/
#end
	override public function dispose():Void
	{
		super.dispose();
#if java
		GTimer.clearTimeout(transfromTimeoutId);
#end
	}
	

	
}