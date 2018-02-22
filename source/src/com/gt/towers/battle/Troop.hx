package com.gt.towers.battle;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Place;
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
	public var disposed:Bool;
	
	var interval:Int;
	var rushTime:Int64 = 0;
	var arrivenTime:Int64 = 0;
	var currentTimeMillis:Int64;
	var destination:Place;
	
	//var arrivenTime:Int64;
	//var lastHost:Building;

	public function new( id:Int, building:Building, path:PlaceList, currentTimeMillis:Int64) 
	{
		this.id = id;
		this.building = building;
		this.type = building.troopType;
		this.health = building.get_troopPower();
		this.currentTimeMillis = currentTimeMillis;
		
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
	public function update( currentTimeMillis:Int64 ) : Void
	{
		if( disposed )
			return;
		
		this.currentTimeMillis = currentTimeMillis;
		if( arrivenTime != 0 && currentTimeMillis >= arrivenTime )
		{
			arrived();
			arrivenTime = 0;
		}

		if( rushTime != 0 && currentTimeMillis >= rushTime )
		{
			destination.rush(this);
			rushTime = 0;
		}
	}
	
	public function rush(source:Place):Void
	{
		destination = path.shift();
		if( destination == null || health <= 0 )
		{
			dispose();
			return ;
		}
		
		arrivenTime = currentTimeMillis + Math.round(building.get_troopSpeed() * PathFinder.getDistance(source, destination));
		//trace("rush id:" + id, "health:" + health, "arrivenTime:" + arrivenTime, "destination:" + destination == null?"null":destination.index);
	}
	private function arrived():Void
	{
		//trace("arrived id:" + id, "index", destination.index, "path.size():" + path.size());
		if( health <= 0 )
			return ;
		/*arrivenTime = java.lang.System.currentTimeMillis();
		lastHost = destination.building;*/
		var allow = destination.building.pushTroops(this);
		if ( !allow || path.size() == 0 )
		{
			//if( building != null && building.place != null )
			//	building.place.removeTroop(id);
			dispose();
			return;
		}
		
		rushTime = currentTimeMillis + building.get_exitGap();
		//trace("arrived id:" + id + " allow:" + allow+ " path.size():" + path.size());
	}
	public function hit(damage:Float):Void
	{
		//trace("troop -> rush id:" + id , damage, health);
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
		disposed = true;
	}
	#end
}