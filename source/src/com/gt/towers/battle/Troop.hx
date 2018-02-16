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
	public var path:PlaceList;
	public var building:Building;
	
	var timeoutId:Int;
	var arrivenTime:Int64;
	var lastHost:Building;

	public function new( id:Int, building:Building, path:PlaceList ) 
	{
		this.id = id;
		this.building = building;
		this.type = building.troopType;
		this.health = building.get_troopPower();
		
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
		
		timeoutId = GTimer.setTimeout(onTroopArrived, Math.round(building.get_troopSpeed() * PathFinder.getDistance(source, destination)), [destination]);
		//trace("troop-> rush id:" + id );
	}
	private function onTroopArrived(destination:Place):Void
	{
		if( health <= 0 )
			return ;
		arrivenTime = java.lang.System.currentTimeMillis();
		lastHost = destination.building;
		var allow = destination.building.pushTroops(this);
		if( allow && path.size() > 0 )
		{
			timeoutId = GTimer.setTimeout(destination.rush, building.get_exitGap(), [this]);
		}
		//trace("troop-> onTroopArrived id:" + id + " allow:" + allow+ " path.size():" + path.size());
	}
	public function hit(damage:Float):Void
	{
		// recover network lags
		if( java.lang.System.currentTimeMillis() - arrivenTime < 300 )
		{
			if( lastHost != null && lastHost.troopType != type )
			{
				lastHost._population += Math.max(0, Math.min(damage, health));
				trace("recovered missed hit => id:" + id + " damage:" + damage+ " health:" + health);
			}
		}
		
		health -= damage;
		if( type == 0 )

		if( health <= 0 )
			GTimer.clearTimeout(timeoutId);
	}
	#end
}