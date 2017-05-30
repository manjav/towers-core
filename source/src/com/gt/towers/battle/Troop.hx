package com.gt.towers.battle;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Place;
import com.gt.towers.utils.GTimer;
import com.gt.towers.utils.lists.PlaceList;
import haxe.Timer;

/**
 * ...
 * @author Mansour Djawadi
 */
class Troop 
{
	public var type:Int;
	public var path:PlaceList;
	public var building:Building;

	public function new( building:Building, path:PlaceList ) 
	{
		this.building = building;
		this.type = building.troopType;
		
		this.path = new PlaceList();
		var i:Int = 0;
		var pathLen:Int = path.size();
		while ( i < pathLen )
		{
			this.path.push(path.get(i));
			i ++;
		}
	}
	
	#if java
	public function rush():Bool
	{
		var destination:Place = path.shift();
		if(destination == null)
			return false;
		
		GTimer.setTimeout(onTroopArrived, building.get_troopSpeed(), [destination]);
		return true;
	}
	private function onTroopArrived(destination:Place):Void
	{
		destination.building.pushTroops(type, building.get_troopPower());
		GTimer.setTimeout(destination.rush, building.get_exitGap(), [this]);
	}
	#end
}