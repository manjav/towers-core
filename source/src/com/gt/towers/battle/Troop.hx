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
	
	private var timeoutId:Int;

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
		
		var distance:Float = Math.sqrt(Math.pow(source.x - destination.x, 2) + Math.pow(source.y - destination.y, 2) ) / 300;
		timeoutId = GTimer.setTimeout(onTroopArrived, Math.round(building.get_troopSpeed() * distance), [destination]);
		//building.game.tracer.log("troop-> rush id:" + id );
	}
	private function onTroopArrived(destination:Place):Void
	{
		if( health <= 0 )
			return ;
			
		var allow = destination.building.pushTroops(this);
		if ( allow && path.size() > 0)
		{
			timeoutId = GTimer.setTimeout(destination.rush, building.get_exitGap(), [this]);
		}
		//building.game.tracer.log("troop-> onTroopArrived id:" + id + " allow:" + allow+ " path.size():" + path.size());
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