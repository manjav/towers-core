package com.gt.towers.buildings;

import com.gt.towers.Game;
import com.gt.towers.battle.Troop;
import com.gt.towers.constants.BuildingFeatureType;
import com.gt.towers.constants.BuildingType;
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
	
	var _population:Float;
	var spawnIntervalId:Int;
	
	public function new(game:Game, place:Place, index:Int, type:Int, level:Int = 0)
	{
		this.game = game;
		this.place = place;
		this.index = index;
		
		if ( level == 0 )
		{
			if (getAbstract(type) != null)
				level = getAbstract(type).level ;
			else
				level = 1;
		}
		super( game, type, level );
	}

	public function get_capacity():Int 
	{
		return 10 + Math.round( Math.log(improveLevel) * 14 );
	}
	public function get_exitGap():Int 
	{
		return 200;
	}
	public function get_troopSpeed():Int
	{
		return 2500;
	}
	public function get_troopPower():Float
	{
		return 1;
	}
	public function get_spawnGap():Int
	{
		return 2300;
	}
	
	
	public function get_options():IntList
	{
		var ret = new IntList();
		if ( BuildingType.getAll().exists( type + 1 ) )
			ret.push(type + 1);
		ret.push( BuildingType.B01_CAMP );
		return ret;
	}
	public function get_population():Int
	{
		return Math.round(_population);
	}
	public function improvable(type:Int):Bool 
	{
		if (type == this.type)
			return false;
		if (type == BuildingType.B01_CAMP)
			return true;
		return (equalsCategory(type) || this.type == BuildingType.B01_CAMP) && getAbstract(type) != null &&  _population >= get_capacity() ;
	}
	
	// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-  defensive  data  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
	public function get_damage():Float
	{
		return 1;
	}
	public function get_damageGap():Float
	{
		return 1000;
	}
	public function get_damageRadius():Float
	{
		return 50;
	}
	public function get_damageRange():Float
	{
		return 0;
	}
	
	// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-  methods  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
	
	public function createEngine(troopType:Int, initialPopulation:Int = -1):Void
	{
		this.troopType = troopType;
		
		#if java
		if (initialPopulation == -1)
			initialPopulation = get_capacity();
		
		_population = initialPopulation;

		if(place.enabled)
			spawnIntervalId = GTimer.setInterval(calculatePopulation, get_spawnGap(), []);
		#end
	}

	
	#if java
	
	public function improve(type:Int):Bool
	{
		if ( !improvable(type) )
			return false;
			
		if (type != BuildingType.B01_CAMP)
			_population -= Math.round(get_capacity() / 2);
		
		if( !equalsCategory(type) )
		{
			place.setBuilidng(type);
			return true;
		}
		
		type ++;
		improveLevel ++;
		
		GTimer.clearInterval(spawnIntervalId);
		spawnIntervalId = GTimer.setInterval(calculatePopulation, get_spawnGap(), []);
		
		return true;
	}
	
	private function calculatePopulation():Void
	{
		if (_population < get_capacity())
		{
			if (_population + 1 > get_capacity())
				_population = get_capacity();
			else
				_population += 1;
			
		}
		else if (_population > get_capacity())
		{
			if (_population - 1 < get_capacity())
				_population = get_capacity();
			else
				_population -= 1;
		}
	}
	
	public function popTroop():Bool
	{
		var ret = (_population - 1 > 0);
		if(ret)
			_population --;
		return ret;
	}
	public function pushTroops(troop:Troop) : Bool
	{
		var ret = troopType == troop.type;
		_population += ((ret ? 1 : -1) * troop.health);
		if (_population < 0)
		{
			_population = 0;
			troopType = troop.type;
			if (type != BuildingType.B01_CAMP)
				place.setBuilidng(BuildingType.B01_CAMP);
		}
		return ret;
	}
	public function dispose() 
	{
		GTimer.clearInterval(spawnIntervalId);
	}
	#end
	
	
	public function getAbstract(type:Int):AbstractBuilding
	{
		if ( !game.player.buildings.exists(type) )
			return null;
		return game.player.buildings.get(type);
	}
	public function equalsCategory(type:Int):Bool
	{
		return BuildingType.get_category(this.type) == BuildingType.get_category(type);
	}

	public function getFeatureValue(feature:Int):Float
	{
		if ( feature == BuildingFeatureType.F01_CAPACITY )
			return get_capacity();
		else if ( feature == BuildingFeatureType.F02_BIRTH_RATE )
			return get_spawnGap();
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
		else if ( feature == BuildingFeatureType.F24_DAMAGE_RANGE )
			return get_damageRange();
		return 0;
	}
}