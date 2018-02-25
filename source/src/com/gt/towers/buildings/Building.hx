package com.gt.towers.buildings;

import com.gt.towers.Game;
import com.gt.towers.battle.Troop;
import com.gt.towers.constants.BuildingFeatureType;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;
import haxe.Int64;

/**
 * ...
 * @author Mansour Djawadi
 */
class Building extends AbstractBuilding
{
	public static var TIME_SCALE:Float = 1;
	
	public var place:Place;
	public var index:Int;
	public var troopType:Int = -1;
	
	public var _population:Float;
	var spawnIntervalId:Int;
	
	public function new(game:Game, place:Place, index:Int, type:Int, level:Int = 0)
	{
		this.game = game;
		this.place = place;
		this.index = index;
		
		if( level == 0 )
		{
			if( getAbstract(type) != null)
				level = getAbstract(type).get_level() ;
			else
				level = 1;
		}
		super( game, type, level );
	}

	// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-  generic  data  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
	#if flash
	public function get_troopName () : String
	{
		return "10/";
	}
	public function get_troopSpriteCount () : Int
	{
		return 12;
	}
	public function get_options():IntList
	{
		var ret = new IntList();
		if( !game.player.inTutorial() )
			ret.push( BuildingType.B01_CAMP );
		if( BuildingType.getAll().exists( type + 1 ) )
			ret.push( BuildingType.IMPROVE );
		return ret;
	}
	#end

	public static var BASE_CAPACITY:Int = 10;
	public function get_capacity():Int 
	{
		if ( improveLevel == 1 )
			return 15;
		else if ( improveLevel == 2 )
			return 18;
		else if ( improveLevel == 3 )
			return 21;
		else if ( improveLevel == 4 )
			return 24;
		else
			return BASE_CAPACITY;

		//return 10 + (5 * improveLevel);
	}
	public static var BASE_EXIT_GAP:Int = 350;
	public function get_exitGap():Int 
	{
		return Math.round(BASE_EXIT_GAP * (1 / TIME_SCALE));
	}
	public static var BASE_TROOP_SPEED:Int = 2500;
	public function get_troopSpeed():Int
	{
		return Math.round(BASE_TROOP_SPEED *  (1 / TIME_SCALE));
	}
	public static var BASE_TROOP_POWER:Float = 1;
	public function get_troopPower():Float
	{
		return Math.round(BASE_TROOP_POWER);
	}
	

	public static var BASE_BIRTH_RATE:Float = 0.04;
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
		return Math.round(BASE_DAMAGE_GAP *  (1 / TIME_SCALE));
	}
	public static var BASE_DAMAGE_RADIUS:Float = 50;
	public function get_damageRadius():Float
	{
		return BASE_DAMAGE_RADIUS;
	}

	public function get_population():Int
	{
		return Math.floor(_population);
	}
	
	public function improvable(type:Int):Bool 
	{
		if( type == this.type)
			return false;
		if( type == BuildingType.B01_CAMP)
			return true;
		if( !unlocked(type) )
			return false;
		
		//trace("type "+ type ,this.type, " equalsCategory " + equalsCategory(this.type+1) , " _population " + _population , " get_capacity " + get_capacity());
		return ((type == BuildingType.IMPROVE && equalsCategory(this.type+1)) || (this.type == BuildingType.B01_CAMP && type % 10 == 1)) &&  _population >= get_capacity();
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
	public function improve(type:Int):Bool
	{
		if( !improvable(type) )
			return false;
			
		if( type != BuildingType.B01_CAMP )
			_population -= Math.round( get_capacity() * ( game.player.inTutorial() && !game.player.hardMode ? 0.3 : 0.5) );
		
		if( type == BuildingType.IMPROVE )
			type = this.type + 1;
		
		//trace("improved", index, type);
	if( !equalsCategory(type) )
		{
			place.setBuilidng(type, game);
			return true;
		}
		
		this.type ++;
		improveLevel ++;
		
		return true;
	}
	
	public function update( currentTimeMillis:Int64 ):Void
	{
		if( place == null || !place.enabled )
			return;
		
		//var gap = 500 / get_spawnGap() ;
		var gap = get_birthRate();
		
		if( _population < get_capacity() )
		{
			if( _population + gap > get_capacity())
				_population = get_capacity();
			else
				_population += gap;
			
		}
		else if (_population > get_capacity())
		{
			gap = Math.ceil(( _population - get_capacity()) * gap * 2 );
			if( _population - gap < get_capacity() )
				_population = get_capacity();
			else
				_population -= gap;
		}
		//game.tracer.log(place.index + " t:" + type + " g: " + gap);
	}
	
	public function popTroop() : Bool
	{
		var ret = (_population - 1 > 0);
		if( ret )
			_population --;
		return ret;
	}
	public function pushTroops(troop:Troop) : Bool
	{
		//trace(index, "type", troop.type, troopType, "id", troop.id, "health", troop.health, "_population", _population);
		var ret = troopType == troop.type; // if ret true troop is mine
		_population += (ret ? 1 : -troop.health);
		if( _population < 0 || (_population == 0 && !place.enabled ) ) 
			occupy(troop);
		return ret;
	}
	
	function occupy(troop:Troop) : Void
	{
		troopType = troop.type;
		place.enabled = true;
		_population = ( game.player.inTutorial() && !game.player.hardMode) ? get_capacity() * 0.3 : 0;
		if ( type == BuildingType.B01_CAMP )
		{
			place.game = game = troop.building.game;
			return;
		}
		place.setBuilidng(BuildingType.B01_CAMP, troop.building.game);
	}
	
	public function getPower() : Float
	{
		return _population * get_troopPower();
	}
	#end

	public function getAbstract(type:Int) : AbstractBuilding
	{
		if ( !game.player.buildings.exists(type) )
			return null;
		return game.player.buildings.get(type);
	}
	public function equalsCategory(type:Int):Bool
	{
		return category == BuildingType.get_category(type);
	}
 
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
}