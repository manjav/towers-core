package com.gt.towers.buildings;
import com.gt.towers.Game;
import com.gt.towers.battle.BattleField;
import com.gt.towers.battle.Troop;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.TroopType;
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
	public var health:Float;
	public var owner:Place;
	public var links:PlaceList;
	public var building:Building;
	public var mode:Int;
	
	private var troopId:Int;
	public var game:Game;
	public var levelOffset:Int = 0;
	public var powerCoef:Float = 1;
	public var battlefield:BattleField;

	public function new(game:Game, battlefield:BattleField, index:Int, x:Float, y:Float, health:Float, botEnabled:Bool, mode:Int) 
	{
		this.game = game;
		this.battlefield = battlefield;
		this.index = index;
		this.x = x;
		this.y = y;
		this.health = health;
		this.enabled = botEnabled;
		this.mode = mode;
		this.troopId = index * 10000;
	#if java
		this.troops = new java.util.HashMap<Int, Troop>();
	#end
	}
	
	public function hasTroop():Bool
	{
		if ( building == null )
			return false;
		return building.get_population() > 0;
	}
	
	public function getLinks(troopType:Int):PlaceList
	{
		if( troopType == TroopType.NONE )
			return links;

		var ret:PlaceList = new PlaceList();
		var p:Int = links.size() - 1;
		while ( p >= 0 )
		{
		//	trace(p, links.get(p).building.troopType, troopType);
			if( links.get(p).building.troopType == troopType )
				ret.push(links.get(p));

			p --;
		}
		return ret;
	}
	
#if java
	public function fight(destination:Place, all:PlaceList):Void
	{
		var path:PlaceList = PathFinder.find(this, destination, all);

		if( path == null || destination.building == building )
			return;
		
		var i:Int = 0;
		var len:Int = building.get_population();
		while( i < len )
		{
			var tid = getIncreasedId();
			var troop = new Troop(tid, building, path);
			troops.put( tid, troop );
			GTimer.setTimeout(rush, building.troopRushGap * i + 1, [troop]);
			i ++;
		}			
	}
	
	public function rush(troop:Troop):Void
	{
		if ( !building.popTroop() ) 
			return;
		
		troop.rush(this);
	}

	public function hit(troopId:Int, damage:Float) : Void
	{
		if( !troops.containsKey(troopId) )
			return;
		
		troops.get(troopId).hit(damage);
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