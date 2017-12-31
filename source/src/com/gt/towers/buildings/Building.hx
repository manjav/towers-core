package com.gt.towers.buildings;

import com.gt.towers.Game;
import com.gt.towers.battle.Troop;
import com.gt.towers.buildings.cals.*;
import com.gt.towers.constants.*;
import com.gt.towers.utils.GTimer;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Building extends AbstractBuilding
{
	public var place:Place;
	public var index:Int;
	public var troopType:Int = -1;
	
	public var rarity:Int = 0;
	public var capacity:Int = 10;
	public var birthRate:Float = 0.15;
	public var healRate:Float = 0.15;
	
	public var troopHealth:Float = 1;
	public var troopPower:Float = 1;
	public var troopSpeed:Int = 4000;
	public var troopRushGap:Int = 250;
	
	public var damage:Float = 1.05;
	public var damageGap:Int = 800;
	public var damageRangeMin:Float = 50;
	public var damageRangeMax:Float = 180;
	
	var _health:Float = 10;
	var _population:Float = 0;
	
	public function new(game:Game, place:Place, index:Int, type:Int, level:Int = 0)
	{
		this.game = game;
		this.place = place;
		if( place != null )
			this._health = place.health;
		this.index = index;
		
		if ( level == 0 )
		{
			if (getAbstract(type) != null)
				level = getAbstract(type).get_level() ;
			else
				level = 1;
		}
		super( game, type, level + (place == null ? 0 : place.levelOffset) );
		setFeatures();
	}


	function setFeatures():Void
	{
		category = CardTypes.get_category(type);
		rarity = CardTypes.get_rarity(type);
		
		capacity = game.featureCaculator.getInt(BuildingFeatureType.F01_CAPACITY, type, 1);
		birthRate = game.featureCaculator.get(BuildingFeatureType.F02_BIRTH_RATE, type, get_level());
		
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

	public function get_population():Int
	{
		return Math.floor(_population);
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
	/*public function calculatePopulation():Void
	{
		if ( place==null || !place.enabled )
			return;
		
		var br = birthRate;
		if( _population < capacity )
		{
			if( _population + br > capacity )
				_population = capacity;
			else
				_population += br;
			
		}
		else if ( _population > capacity )
		{
			br = Math.ceil((_population - capacity) * 0.2 );
			if( _population - br < capacity )
				_population = capacity;
			else
				_population -= br;
		}
		//trace(place.index + " t:" + type + " br: " + br + " p:" + _population);
	}
	*/
	
	public function heal():Void
	{
		if ( place==null || !place.enabled )
			return;
		_health = Math.min(_health + healRate, place.health);
	}
	
	public function popTroop():Bool
	{
		var ret = get_population() >= 1;
		if ( ret )
		{
			_population --;
		}
		else
		{
			type = CardTypes.C001;
			reset(troopType);
		}
		return ret;
	}
	public function pushTroops(troop:Troop) : Bool
	{
		var ret = troopType == troop.type; // if ret true troop is mine
		if( ret )
			_population = Math.min(capacity, _population + 1 );
		else
			_health -= troop.power;
		
		//if( get_population() > 0 && type == CardTypes.C001 )
		//	type = troop.building.type;
		
		if( _health <= 0 )
			occupy(troop);
		else if ( _health == 0 && !place.enabled ) 
			occupy(troop);
		return ret;
	}
	
	function occupy(troop:Troop) 
	{
		type = CardTypes.C001;
		reset(troop.type);
		place.game = game = troop.building.game;
		place.enabled = true; 
		place.levelOffset = troop.building.place.levelOffset;
		place.powerCoef = troop.building.place.powerCoef;
		setFeatures(); 
	}
	
	public function transform(card:Building) : Bool
	{
		if ( !transformable(card) )
			return false;
		
		//trace(" type:" + type + " _population:" + _population + " card.type:" + card.type + " card._population:" + card._population + " card.index:" + card.index + " card.troopType:" + card.troopType );
		/*if ( this.type == card.type )
			improveLevel ++;
		else
			improveLevel = 1;*/
		this.type = card.type;
		//reset(card.troopType);
		setFeatures();
		_population = capacity;
		place.fightable = place.enabled = true;
		place.battlefield.populationBar.set(troopType, place.battlefield.populationBar.get(troopType) - card.capacity );
		return true;
	}
#end
	
	public function transformable(card:Building) : Bool
	{
		if ( troopType != card.troopType || place.battlefield.populationBar.get(troopType) < card.capacity )
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
	
}