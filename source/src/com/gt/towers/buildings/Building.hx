package com.gt.towers.buildings;
import com.gt.towers.utils.GTimer;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.Bundle;

class Building
{
	public var level:Int = 1;
	public var index:Int;
	public var troopType:Int = -1;
	public var troops:IntList;
	
	public function new(type:Int, index:Int)
	{
		_type = type;
		this.index = index;
	}
	
	var _type:Int;
	public function get_type():Int 
	{
		return _type;
	}
	
	public function get_unlockLevel():Int 
	{
		return 100;
	}	
	
	public function get_population():Int
	{
		return troops.size();
	}
	
	public function get_capacity():Int 
	{
		return 0;
	}
		
	public function get_delay():Float 
	{
		return 0;
	}	
	
	public function get_troopSpeed():Int
	{
		return 900;
	}
	public function get_spawnPerSecond():Int
	{
		return 1000;
	}
		
	public function get_unlockArena():Int 
	{
		return 100;
	}
	public function availabled():Bool 
	{
		return get_unlockArena() <= Game.get_instance().get_player().get_arena();
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
	}

	
	// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-  methods  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
	
	public function upgrade():Void
	{
		if(level > 0)
			Game.get_instance().get_player().get_resources().reduceMap(get_upgradeRequirements());
		level ++;
	}
	
	
	
	// -_-_-_
	
	
	
	public function createEngine(troopType:Int):Void
	{
		this.troopType = troopType;
		troops = new IntList();
		//for(var i:uint=0; i<capacity; i++)
		//	troops.push(troopType);
		
		update(true);
		#if java
		GTimer.setInterval(calculatePopulation, get_spawnPerSecond(), []);
		#end
		//setInterval(calculatePopulation, spawnPerSecond*1000);
	}
	
	private function calculatePopulation():Void
	{
		var _population:Int = get_population();
			
		if(_population < get_capacity())
			troops.push(troopType);
		else if(_population > get_capacity())
			troops.pop();
		
		update();
	}
	
	public function popTroop():Void
	{
		troops.pop();
		update();
	}
	
	public function pushTroops(len:Int, troopType:Int):Void
	{
		var _population:Int = get_population();
		var i:Int = 0;
		
		if(troopType == this.troopType || _population == 0)
		{
			while (i < len)
			{
				troops.push(troopType);
				i ++;
			}
		}
		else
		{
			if(len >= _population)
			{
				troops.clear();
				i = 0;
				while (i < len - _population)
				{
					troops.push(troopType);
					i ++;
				}
			}
			else
			{
				i = 0;
				while (i < len)
				{
					troops.pop();
					i ++;
				}
			}
		}
		
		// push a troop to occupy building
		if(get_population() == 0)
			troops.push(troopType);
			
		update();
	}

	
	private function update(force:Bool = false):Void
	{
		if(get_population() == 0)
			return;
		
		var isForce:Bool = troops.get(0) != troopType || force;
		if(isForce)
			troopType = troops.get(0);

		//dispatchEventWith(Event.UPDATE, false, isForce);
	}


}