package com.gt.towers.buildings;

import com.gt.towers.Game;
import com.gt.towers.battle.Troop;
import com.gt.towers.constants.BuildingFeatureType;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.CardTypes;
import com.gt.towers.utils.GTimer;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Building extends AbstractBuilding
{
	public static var TIME_SCALE:Float = 0.88;
	
	public var place:Place;
	public var index:Int;
	public var troopType:Int = -1;
	public var rerity:Int = 0;
	
	var _population:Float;
	
	public function new(game:Game, place:Place, index:Int, type:Int, level:Int = 0)
	{
		this.game = game;
		this.place = place;
		this.index = index;
		
		if ( level == 0 )
		{
			if (getAbstract(type) != null)
				level = getAbstract(type).get_level() ;
			else
				level = 1;
		}
		super( game, type, level + (place == null ? 0 : place.levelCoef) );
		
		setFeatures();
	}
	
	function setFeatures():Void
	{
		rerity = CardTypes.get_rarity(type);
		/*troopSpeed = get_troopSpeed();
		troopPower = get_troopPower();
		troopGeneration = get_birthRate();*/
	}
	
	// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-  generic  data  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-

	public static var BASE_CAPACITY:Int = 10;
	public function get_capacity():Int 
	{
		/*if ( improveLevel == 1 )
			return 15;
		else if ( improveLevel == 2 )
			return 18;
		else if ( improveLevel == 3 )
			return 21;
		else if ( improveLevel == 4 )
			return 24;
		else*/
			return BASE_CAPACITY;

		//return 10 + (5 * improveLevel);
	}
	public static var BASE_EXIT_GAP:Int = 200;
	public function get_exitGap():Int 
	{
		return Math.round(BASE_EXIT_GAP * (1/TIME_SCALE));
	}
	public static var BASE_TROOP_SPEED:Int = 2500;
	public function get_troopSpeed():Int
	{
		return Math.round(BASE_TROOP_SPEED *  (1/TIME_SCALE));
	}
	public static var BASE_TROOP_POWER:Float = 1;
	public function get_troopPower():Float
	{
		return Math.round(BASE_TROOP_POWER);
	}
	
	public static var BASE_BIRTH_RATE:Float = 0.20;
	public function get_birthRate():Float
	{
		return BASE_BIRTH_RATE * TIME_SCALE;
	}

	// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-  defensive  data  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
	public static var BASE_DAMAGE:Float = 1;
	public function get_damage():Float
	{
		return BASE_DAMAGE;
	}
	public static var BASE_DAMAGE_GAP:Int = 1000;
	public function get_damageGap():Int
	{
		return Math.round(BASE_DAMAGE_GAP *  (1/TIME_SCALE));
	}
	public static var BASE_DAMAGE_RADIUS:Float = 50;
	public function get_damageRadius():Float
	{
		return BASE_DAMAGE_RADIUS;
	}


	public function get_population():Int
	{
		return Math.round(_population);
	}

	
	// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-  methods  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
	
	public function createEngine(troopType:Int, initialPopulation:Int = -1):Void
	{
		this.troopType = troopType;
		
		#if java
		if (initialPopulation == -1)
			initialPopulation = get_capacity();
		
		_population = initialPopulation;
		#end
	}

	
#if java
	public function calculatePopulation():Void
	{
		if ( place==null || !place.enabled )
			return;
		
		//var gap = 500 / get_spawnGap() ;
		var gap = get_birthRate() ;
		
		if( _population < get_capacity() )
		{
			if( _population + gap > get_capacity() )
				_population = get_capacity();
			else
				_population += gap;
			
		}
		else if (_population > get_capacity() )
		{
			gap = Math.ceil((_population - get_capacity()) * 0.3 );
			if( _population - gap < get_capacity() )
				_population = get_capacity();
			else
				_population -= gap;
		}
		//game.tracer.log(place.index + " t:" + type + " g: " + gap);
	}
	
	public function popTroop():Bool
	{
		var ret = (_population - 1 > 0);
		if( ret )
			_population --;
		return ret;
	}
	public function pushTroops(troop:Troop) : Bool
	{
		var ret = troopType == troop.type; // if ret true troop is mine
		_population += (ret ? 1 : -troop.health);
		if (_population < 0)
			occupy(troop);
		else if (_population == 0 && !place.enabled) 
			occupy(troop);
		return ret;
	}
	
	function occupy(troop:Troop) 
	{
		_population = 0;
		type = CardTypes.C001;
		troopType = troop.type;
		place.enabled = true;
		place.levelCoef = troop.building.place.levelCoef;
		setFeatures();
	}
	
	public function transform(type:Int, troopType:Int) : Bool
	{
		if ( !transformable(type, troopType) )
			return false;
		this.type = type;
		setFeatures();
		return true;
	}
#end
	
	public function transformable(type:Int, troopType:Int) : Bool
	{
		if ( this.troopType != troopType )
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
		return category == BuildingType.get_category(type);
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
	public function getFeatureValue(feature:Int):Float
	{
		if ( feature == BuildingFeatureType.F01_CAPACITY )
			return get_capacity();
		else if ( feature == BuildingFeatureType.F02_BIRTH_RATE )
			return get_birthRate();
		else if ( feature == BuildingFeatureType.F11_TROOP_SPEED )
			return get_troopSpeed();
		else if ( feature == BuildingFeatureType.F12_TROOP_POWER )
			return get_troopPower();
		else if ( feature == BuildingFeatureType.F21_DAMAGE )
			return get_damage();
		else if ( feature == BuildingFeatureType.F22_FIRE_SPEED )
			return get_damageGap();
		else if ( feature == BuildingFeatureType.F23_RANGE )
			return get_damageRadius();

		return 0;
	}
	
	public function getFeatureBaseValue(feature:Int):Float
	{
		if ( feature == BuildingFeatureType.F01_CAPACITY )
			return BASE_CAPACITY;
		else if ( feature == BuildingFeatureType.F02_BIRTH_RATE )
			return BASE_BIRTH_RATE;
		else if ( feature == BuildingFeatureType.F11_TROOP_SPEED )
			return BASE_TROOP_SPEED;
		else if ( feature == BuildingFeatureType.F12_TROOP_POWER )
			return BASE_TROOP_POWER;
		else if ( feature == BuildingFeatureType.F21_DAMAGE )
			return BASE_DAMAGE;
		else if ( feature == BuildingFeatureType.F22_FIRE_SPEED )
			return BASE_DAMAGE_GAP;
		else if ( feature == BuildingFeatureType.F23_RANGE )
			return BASE_DAMAGE_RADIUS;

		return 0;
	}

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