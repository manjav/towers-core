package com.gt.towers.battle;
import com.gt.towers.buildings.Place;
import com.gt.towers.others.BalancingData;
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

	public function new(type:Int, path:PlaceList) 
	{
		this.type = type;
		
		this.path = new PlaceList();
		var i:Int = 0;
		var pathLen:Int = path.size();
		while ( i < pathLen )
		{
			this.path.push(path.get(i));
			i ++;
		}
	}
	
	public function rush():Bool
	{
		var destination:Place = path.shift();
		if(destination == null)
			return false;
		
		//Timer.delay(function() { onTroopArrived(destination); }, BalancingData.RUSH_TIME);
		GTimer.setTimeout(onTroopArrived, BalancingData.RUSH_TIME, [destination]);
		//setTimeout(onTroopArrived, RUSH_TIME, destination);
		return true;
	}
	private function onTroopArrived(destination:Place):Void
	{
		destination.building.pushTroops(1, type);
		//Timer.delay(function() { destination.rush(this); }, BalancingData.RUSH_GAP);
		GTimer.setTimeout(destination.rush, BalancingData.RUSH_GAP, [this]);
		//setTimeout(destination.rush, RUSH_GAP, this, 0);
	}
}