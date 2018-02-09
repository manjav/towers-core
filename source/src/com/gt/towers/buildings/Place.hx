package com.gt.towers.buildings;
import com.gt.towers.Game;
import com.gt.towers.battle.Troop;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.GTimer;
import com.gt.towers.utils.PathFinder;
import com.gt.towers.utils.lists.PlaceList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Place 
{
	#if java
	var troops:java.util.HashMap<Int, Troop>;
	#end

	public var index:Int;
	public var x:Float;
	public var y:Float;
	public var enabled:Bool;
	public var owner:Place;
	public var links:PlaceList;
	public var building:Building;
	
	private var troopId:Int;
	public var game:Game;

	public function new(game:Game, index:Int, x:Float, y:Float, botEnabled:Bool) 
	{
		this.game = game;
		this.index = index;
		this.x = x;
		this.y = y;
		this.enabled = botEnabled;
		this.troopId = index * 10000;
	#if java
		this.troops = new java.util.HashMap<Int, Troop>();
	#end
	}
	
	#if java
	public function fight(destination:Place, all:PlaceList):Void
	{
		var path:PlaceList = PathFinder.find(this, destination, all);

		if( path == null || destination.building == building )
			return;
		
		var i:Int = 0;
		var len:Int = Math.floor(building.get_population() / 2);
		while( i < len )
		{
			var tid = getIncreasedId();
			var troop = new Troop(tid, building, path);
			troops.put( tid, troop );
			GTimer.setTimeout(rush, building.get_exitGap() * i + 1, [troop]);
			i ++;
		}			
	}
	
	public function rush(troop:Troop):Void
	{
		if (building.popTroop())
			troop.rush(this);
	}

	public function hit(troopId:Int, damage:Float) : Void
	{
		if( !troops.containsKey(troopId) )
			return;
		
		troops.get(troopId).hit(damage);
	}
	
	public function setBuilidng(type:Int, game:Game) 
	{
		enabled = true;
		var troopType = building.troopType;
		var population = building.get_population();
		
		building = BuildingType.instantiate(game, type, this, index);
		
		if( building != null )
			building.createEngine(troopType, population);
	}
	#end
		
	public function getIncreasedId() : Int
	{
		troopId ++;
		return troopId;
	}
	
	public function isAlone():Bool
	{
		var len:Int = links.size();
		var l:Int = 0;
		while ( l < len )
		{
			if( links.get(l).building.troopType == building.troopType )
				return false;
				
			l ++;
		}
		return true;
	}
}