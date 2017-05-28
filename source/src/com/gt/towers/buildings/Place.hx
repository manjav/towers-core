package com.gt.towers.buildings;
import com.gt.towers.battle.Troop;
import com.gt.towers.buildings.Building;
import com.gt.towers.utils.GTimer;
import com.gt.towers.utils.PathFinder;
import com.gt.towers.utils.lists.PlaceList;
import haxe.Timer;

/**
 * ...
 * @author Mansour Djawadi
 */
class Place 
{
	public var index:Int;
	public var owner:Place;
	public var links:PlaceList;
	public var building:Building;

	public function new(index:Int) 
	{
		this.index = index;
	}
	
	#if java
	public function fight(destination:Place, all:PlaceList):Void
	{
		var path:PlaceList = PathFinder.find(this, destination, all);

		if(path == null || destination.building == building)
			return;
		
		var i:Int = 0;
		var len:Int = Math.floor(building.get_population() / 2);
		while(i < len)
		{
			var t:Troop = new Troop(building, path);
			GTimer.setTimeout(rush, building.get_exitGap() * i + 1, [t]);
			i ++;
		}			
	}
	
	public function rush(t:Troop):Void
	{
		if(t.rush())
			building.popTroop();
	}
	#end
	
	
	public function isAlone():Bool
	{
		var len:Int = links.size();
		var l:Int = 0;
		while ( l < len)
		{
			if(links.get(l).building.troopType == building.troopType)
				return false;
				
			l ++;
		}
		return true;
	}
}