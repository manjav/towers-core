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
	public var id:Int;
	public var type:Int;
	public var health:Float;
	public var path:PlaceList;
	public var building:Building;
	
	var timeoutId:Int;

	public function new( id:Int, building:Building, path:PlaceList ) 
	{
		this.id = id;
		this.health = building.get_troopPower();
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
	public function rush():Void
	{
		var destination:Place = path.shift();
		if(destination == null)
			return ;
		
		timeoutId = GTimer.setTimeout(onTroopArrived, building.get_troopSpeed(), [destination]);
	}
	private function onTroopArrived(destination:Place):Void
	{
		if ( destination.building.pushTroops(this) && path.size() > 0)
			timeoutId = GTimer.setTimeout(destination.rush, building.get_exitGap(), [this]);
	}
	public function kill():Void
	{
		GTimer.clearTimeout(timeoutId);
	}
	#end
}