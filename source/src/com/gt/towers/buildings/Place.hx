package com.gt.towers.buildings;
import com.gt.towers.battle.Troop;
import com.gt.towers.buildings.Building;
import com.gt.towers.others.BalancingData;
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
	public var building:Building;
	public var owner:Place;
	public var links:PlaceList;

	public function new(index:Int) 
	{
		this.index = index;
	}
	
	public function fight(destination:Place, all:PlaceList):Void
	{
		var path:PlaceList = PathFinder.find(this, destination, all);

		if(path == null || destination.building == building)
			return;
		
		var i:Int = 0;
		var len:Int = Math.floor(building.get_population() / 2);
		while(i < len)
		{
			var t:Troop = new Troop(building.troopType, path);
			/*t.x = x;
			t.y = y;
			t.width = raduis/2;
			t.scaleY = t.scaleX;
			parent.addChild(t);*/
			#if java
			GTimer.setTimeout(rush, BalancingData.RUSH_GAP * i, [t]);
			#end
			//setTimeout(rush, Game.DESIGN.RUSH_GAP * i, t);
//				Timer.delay(function() { rush(t); }, BalancingData.RUSH_GAP * i);
			i ++;
		}			
	}
	
	public function rush(t:Troop):Void
	{//trace(i)
		if(t.rush())
			building.popTroop();
	}
	
	
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