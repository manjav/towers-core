package com.gt.towers.buildings;

import com.gt.towers.battle.Troop;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.GTimer;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Building
{
	public var place:Place;
	public var level:Int;
	public var index:Int;
	public var type:Int;
	
	public var troopType:Int = -1;
	
	var _population:Float;
	var spawnIntervalId:Int;
	
	public function new(place:Place, index:Int, level:Int = 1)
	{
		this.place = place;
		this.index = index;
		this.level = level;
	}

	public function get_capacity():Int 
	{
		return 10 + Math.round( Math.log(level) * 14 );
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
		return 2200;
	}
	public function get_options():IntList
	{
		return null;
	}		
	
	
	public function get_population():Int
	{
		return Math.round(_population);
	}
	public function improvable(type:Int):Bool 
	{
		return type != this.type && (type == BuildingType.B00_CAMP || _population >= get_capacity()) ;
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

		spawnIntervalId = GTimer.setInterval(calculatePopulation, get_spawnGap(), []);
		#end
	}

	
	#if java
	
	public function improve(type:Int):Bool
	{
		if ( !improvable(type) )
			return false;
			
		GTimer.clearInterval(spawnIntervalId);
		
		if (type == BuildingType.B00_CAMP)
		{
			place.setBuilidng(type);
			return true;
		}
		
		_population -= Math.round(get_capacity() / 2);
		
		if (type != BuildingType.UPGRADE)
		{
			place.setBuilidng(type);
			return true;
		}
		
		level ++;
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
				_population ++;
			
		}
		else if (_population > get_capacity())
		{
			if (_population - 2 < get_capacity())
				_population = get_capacity();
			else
				_population -= 2;
		}
	}
	
	public function popTroop():Void
	{
		_population --;
	}
	public function pushTroops(troop:Troop) : Bool
	{
		var ret = troopType == troop.type;
		_population += ((ret ? 1 : -1) * troop.heath);
		if (_population < 0)
		{
			_population = Math.abs(_population);
			troopType = troop.type;
			level = 1;
			if (type != BuildingType.B00_CAMP)
				place.setBuilidng(BuildingType.B00_CAMP);
		}
		return ret;
	}
	#end
	
	
	
	
	
	/*
	public function upgrade(type:Int = 0):Bool
	{
		//if(level > 0)
			//Game.get_instance().get_player().get_resources().reduceMap(get_upgradeRequirements());
	}	
	public function get_unlockArena():Int 
	{
		return 100;
	}
	public function availabled():Bool 
	{
		return get_unlockArena() <= Game.get_instance().get_player().get_arena();
	}
	public function get_unlockLevel():Int
	{
		return 100;
	}	
	public function unlocked():Bool 
	{
		return Game.get_instance().get_player().get_buildingsLevel().get(_type) > 0;
	}
	
	public function upgradable():Bool 
	{
		return get_upgradeRequirements().enough();
	}
	public function get_upgradeRequirements():Bundle 
	{
		return new Bundle();
	}
	public function get_upgradeRewards():Bundle 
	{
		return new Bundle();
	}*/

}