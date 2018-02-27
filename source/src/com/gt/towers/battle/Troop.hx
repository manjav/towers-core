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
	public var power:Float;
	public var buildingType:Int;
	public var path:PlaceList;
	public var speed:Int;
	public var rushDelay:Int;
	public var disposed:Bool;
    
    var interval:Int;
    var rushTime:Int64 = 0;
    var arrivenTime:Int64 = 0;
    var currentTimeMillis:Int64;
    var destination:Place;

	var lastHost:Building;

    public function new( id:Int, building:Building, currentTimeMillis:Int64 ) 
	{
		this.id = id;
		this.buildingType = building.type;
		this.type = building.troopType;
		this.health = building.troopHealth;
		this.power = building.troopPower;
		this.speed = building.troopSpeed;
		this.rushDelay =  building.troopRushGap;
        this.currentTimeMillis = currentTimeMillis;
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
	
	public function update( currentTimeMillis:Int64 ) : Void
    {
        if( disposed )
            return;
        //trace("update", "arrivenTime:" + arrivenTime, "rushTime:" + rushTime, "currentTimeMillis:" + currentTimeMillis);
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
	
	public function rush( source:Place ) : Void
	{
		if( path.size() == 0 )
        {
            //dispose();
			return;
		}
		
        destination = path.shift();
		if( destination == null || health <= 0 )
        {
            //dispose();
			return;
		}
		
		arrivenTime = currentTimeMillis + Math.round(speed * PathFinder.getDistance(source, destination));
        //trace("rush id:" + id, "health:" + health, "arrivenTime:" + arrivenTime, "destination:" + destination == null?"null":destination.index);
	}
	
	private function arrived() : Void
	{
        //trace("arrived id:" + id, "index", destination.index, "path.size():" + path.size());
		if( health <= 0 )
        {
            //dispose();
			return;
		}
		
		/*arrivenTime = java.lang.System.currentTimeMillis();
		lastHost = destination.building;*/
		destination.building.pushTroops(this);
		if( path.size() == 0)
        {
            //dispose();
			return;
		}
		
        rushTime = currentTimeMillis + rushDelay;
        //trace("arrived id:" + id + " rushTime:" + rushTime + " path.size():" + path.size());
	}
	
	public function hit( damage:Float ) : Void
	{
		var recovered = false;
		// recover network lags
		/*if( java.lang.System.currentTimeMillis() - arrivenTime < 300 )
		{
			recovered = lastHost != null && lastHost.troopType != type;
			if( recovered )
			{
				lastHost.popTroop(this);
				trace("recovered missed hit => id:" + id + " damage:" + damage+ " health:" + health);
			}
		}*/
		
		health -= damage;
		if( health <= 0 )
			dispose();
		else if( recovered )
			lastHost.pushTroops(this);
	}
	public function dispose() : Void
	{
		disposed = true;
	}
	#end
}