package com.gt.towers.buildings;
import com.gt.towers.Game;
import com.gt.towers.battle.BattleField;
import com.gt.towers.battle.Troop;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.PathFinder;
import com.gt.towers.utils.lists.PlaceList;
import haxe.Int64;

/**
 * ...
 * @author Mansour Djawadi
 */
class Place 
{
	public var index:Int;
	public var x:Float;
	public var y:Float;
	public var enabled:Bool;
	public var health:Float;
	public var owner:Place;
	public var links:PlaceList;
	public var building:Building;
	public var mode:Int;
	public var game:Game;
	public var battlefield:BattleField;
	
#if java
	public var currentTimeMillis:Int64;
	public var fightTime:Int64 = -1;
    var lastRushTime:Int64;
	var numFighters:Int;
	var path:PlaceList;
#end
	var troopId:Int;

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
	}

	public function getLinks(troopType:Int):PlaceList
	{
		if( troopType == TroopType.NONE )
			return links;

		var ret:PlaceList = new PlaceList();
		var p:Int = links.size() - 1;
		while ( p >= 0 )
		{
			if( links.get(p).building.troopType == troopType )
				ret.push(links.get(p));

			p --;
		}
		return ret;
	}
	
#if java
    public function update( currentTimeMillis:Int64 ) : Void
    {
		this.currentTimeMillis = currentTimeMillis;
        building.update(currentTimeMillis);
		//trace(numFighters, lastRushTime, currentTimeMillis, building.get_population());
		if( numFighters > 0 && lastRushTime > 0 && lastRushTime < currentTimeMillis && building.get_population() > 0 )
		{
			var troop:Troop = building.troops.getFirst();
			if( troop != null && path != null )
			{
				numFighters --;
				lastRushTime = numFighters > 0 ? currentTimeMillis + troop.rushDelay : 0;
				
				troop.initPath(path);
				rush(troop);
			}
			
		}
    }

	public function fight(destination:Place, all:PlaceList):Void
	{
		path = PathFinder.find(this, destination, all);
		if( path == null || destination.building == building )
			return;
		
        lastRushTime = currentTimeMillis;
		numFighters = building.get_population();
	}


	public function rush(troop:Troop):Void
	{
		if( !building.popTroop(troop) ) 
			return;
		troop.rush(this);
	}
	
	public function dispose() : Void
	{
		building.dispose();
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