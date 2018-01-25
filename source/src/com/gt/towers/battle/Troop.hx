package com.gt.towers.battle;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Place;
import com.gt.towers.utils.GTimer;
import com.gt.towers.utils.PathFinder;
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
	public var power:Float;
	public var path:PlaceList;
	public var building:Building;
	
	private var timeoutId:Int;

	public function new( id:Int, building:Building, path:PlaceList ) 
	{
		this.id = id;
		this.building = building;
		this.type = building.troopType;
		this.health = building.troopHealth * (this.type == 0 ? building.place.powerCoef : 1 / building.place.powerCoef );
		this.power = building.troopPower * (this.type == 0 ? building.place.powerCoef : 1 / building.place.powerCoef );
		
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
	public function rush(source:Place):Void
	{
		var destination:Place = path.shift();
		if( destination == null || health <= 0 )
			return ;
		
		timeoutId = GTimer.setTimeout(onTroopArrived, Math.round(building.troopSpeed * PathFinder.getDistance(source, destination)), [destination]);
		//building.game.tracer.log("troop-> rush id:" + id );
	}
	private function onTroopArrived(destination:Place):Void
	{
		if( health <= 0 )
			return ;
		
		destination.building.pushTroops(this);
		if( path.size() > 0)
			timeoutId = GTimer.setTimeout(destination.rush, building.troopRushGap, [this]);
		//trace("troop-> onTroopArrived id:" + id + path.size():" + path.size());
	}
	public function hit(damage:Float):Void
	{
		health -= damage;
		//building.game.tracer.log("id:" + id + " damage:" + damage+ " health:" + health);

		if( health <= 0 )
			GTimer.clearTimeout(timeoutId);
	}
	#end
}