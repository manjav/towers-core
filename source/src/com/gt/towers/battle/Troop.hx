package com.gt.towers.battle;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Place;
import com.gt.towers.utils.PathFinder;
import com.gt.towers.utils.lists.PlaceList;
import haxe.Int64;
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
	private var timer:Timer;
	
	//var arrivenTime:Int64;
	//var lastHost:Building;

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
		//trace("troop -> rush id:" + id, "health", health, "destination", destination);
		if( destination == null || health <= 0 )
			return ;
		
		var dis = Math.round(building.get_troopSpeed() * PathFinder.getDistance(source, destination));
		timer = new Timer(dis);
        timer.run = function() 
        {
			timer.stop();
			timer = null;
            onTroopArrived(destination);
		}
	}
	private function onTroopArrived(destination:Place):Void
	{
		//trace("troop -> onTroopArrived id:" + id, "index", destination.index, "path.size():" + path.size());
		if( health <= 0 )
			return ;
		/*arrivenTime = java.lang.System.currentTimeMillis();
		lastHost = destination.building;*/
		var allow = destination.building.pushTroops(this);
		if ( !allow || path.size() == 0 )
		{
			if( building != null && building.place != null )
				building.place.removeTroop(id);
				dispose();
			return;
		}

		timer = new Timer(building.get_exitGap());
		timer.run  = function() 
		{
			timer.stop();
			timer = null;
			destination.rush(this);
		}
		//trace("troop-> onTroopArrived id:" + id + " allow:" + allow+ " path.size():" + path.size());
	}
	public function hit(damage:Float):Void
	{
		trace("troop -> rush id:" + id , damage, health);
		// recover network lags
		/*if( java.lang.System.currentTimeMillis() - arrivenTime < 300 )
		{
			if( lastHost != null )
			{
				if( lastHost.troopType == type )
					lastHost._population -= Math.max(0, Math.min(damage, health));
				else
					lastHost._population += Math.max(0, Math.min(damage, health));
				trace("recovered missed hit => id:" + id + " damage:" + damage+ " health:" + health);
				//lastHost = null;
			}
		}
		*/
		health -= damage;
		if( health <= 0 )
			dispose();
	}
	
	public function dispose() 
	{
		if( timer == null )
			return;
		timer.stop();
		timer = null;
	}
	#end
}