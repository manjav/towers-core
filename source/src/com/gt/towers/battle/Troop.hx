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
	
	var recoverArrivenTime:Int64;
	var recoverlastHost:Building;

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
		//if( destination != null && destination.index == 5 ) trace("troop -> rush id:" + id, "health:" + health, "arrivenTime:" + arrivenTime, "destination:" + destination == null?"null":destination.index);
	}
	private function arrived():Void
	{
		//if( destination.index == 5 ) trace("troop -> arrived id:" + id, " index:" + destination.index, " destination:" + destination.index, " path.size():" + path.size());
		if( health <= 0 )
			return ;
		recoverArrivenTime = arrivenTime + 1;
		recoverlastHost = destination.building;
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
		//if( destination.index == 5 ) trace("troop -> hit   id:" + id , " health:" + health, " damage:" + damage, " destination:" + destination.index);
		// recover network lags
		if( currentTimeMillis - recoverArrivenTime < 300 )
		{
			if( recoverlastHost != null )
			{
				if( recoverlastHost.troopType == type )
					recoverlastHost._population = Math.max(0, recoverlastHost._population - Math.min(damage, health));
				else
					recoverlastHost._population = Math.max(0, recoverlastHost._population + Math.min(damage, health));
				//if( destination.index == 5 ) trace("recovered hit => id:" + id + " damage:" + damage + " health:" + health + " currentTimeMillis:" + currentTimeMillis + " recoverArrivenTime:" + recoverArrivenTime + " recoverlastHost:" + recoverlastHost.index);
				recoverlastHost = null;
				
			}
		}
		
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