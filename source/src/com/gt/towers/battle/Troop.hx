package com.gt.towers.battle;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Place;
import com.gt.towers.utils.GTimer;
import com.gt.towers.utils.PathFinder;
import com.gt.towers.utils.lists.PlaceList;
import haxe.Int64;

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
	public var buildingType:Int;
	public var path:PlaceList;
	public var speed:Int;
	public var rushDelay:Int;
	//public var building:Building;
	
	var timeoutId:Int;
	var arrivenTime:Int64;
	var lastHost:Building;

	public function new( id:Int, building:Building ) 
	{
		this.id = id;
		this.buildingType = building.type;
		//this.building = building;
		this.type = building.troopType;
		this.health = building.troopHealth;
		this.power = building.troopPower;
		this.speed = building.troopSpeed;
		this.rushDelay =  building.troopRushGap;
	}
	
	#if java
	public function initPath(path:PlaceList):Troop
	{
		this.path = new PlaceList();
		var i:Int = 0;
		var pathLen:Int = path.size();
		while ( i < pathLen )
		{
			this.path.push(path.get(i));
			i ++;
		}
		return this;
	}
	public function rush(source:Place):Void
	{
		if( path.size() == 0 )
			return;
		var destination:Place = path.shift();
		if( destination == null || health <= 0 )
			return ;
		
		timeoutId = GTimer.setTimeout(onTroopArrived, Math.round(speed * PathFinder.getDistance(source, destination)), [destination]);
		//building.game.tracer.log("troop-> rush id:" + id );
	}
	private function onTroopArrived(destination:Place):Void
	{
		if( health <= 0 )
			return ;
		
		arrivenTime = java.lang.System.currentTimeMillis();
		lastHost = destination.building;
		destination.building.pushTroops(this);
		if( path.size() > 0)
			timeoutId = GTimer.setTimeout(destination.rush, rushDelay, [this]);
		//trace("troop-> onTroopArrived id:" + id + path.size():" + path.size());
	}
	public function hit(damage:Float):Void
	{
		var recovered = false;
		// recover network lags
		if( java.lang.System.currentTimeMillis() - arrivenTime < 300 )
		{
			recovered = lastHost != null && lastHost.troopType != type;
			if( recovered )
			{
				lastHost.popTroop(this);
				trace("recovered missed hit => id:" + id + " damage:" + damage+ " health:" + health);
			}
		}
		
		health -= damage;
		if( health <= 0 )
			dispose();
		else if( recovered )
			lastHost.pushTroops(this);
	}
	public function dispose():Void
	{
		GTimer.clearTimeout(timeoutId);
	}
	#end
}