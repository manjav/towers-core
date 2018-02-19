package com.gt.towers.buildings;
import com.gt.towers.Game;
import com.gt.towers.battle.Troop;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.PathFinder;
import com.gt.towers.utils.lists.PlaceList;
import haxe.Timer;

/**
 * ...
 * @author Mansour Djawadi
 */
class Place 
{
	#if java
	public var fightTime:Int = -1;
	var troops:java.util.HashMap<Int, Troop>;
	var timer:haxe.Timer;
	var numTroops:Int = 0;
	var path:PlaceList;
	#end

	public var index:Int;
	public var x:Float;
	public var y:Float;
	public var enabled:Bool;
	public var owner:Place;
	public var links:PlaceList;
	public var building:Building;
	public var game:Game;
	
	private var troopId:Int;


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
	
	
	
	
	
	#if java
	public function fight(destination:Place, all:PlaceList, troopsDivision:Float) : Void
	{
		//trace(index, "fight", "destination", destination.index);
		path = PathFinder.find(this, destination, all);
		if( path == null || destination.building == building )
			return;
		
		if( game.player.inTutorial() && !game.player.hardMode )
			troopsDivision = 0.8;
		
		numTroops = Math.floor(building.get_population() * troopsDivision);
		//trace(index, "population", building.get_population(), "numTroops", numTroops);
		if ( timer == null )
		{
			timer = new Timer(building.get_exitGap());
			timer.run = function() 
			{
				if ( numTroops > 0 && path != null )
				{
					instantiateTroop(path);
					numTroops --;
				}
			}
		}
	}
	private function instantiateTroop(path:PlaceList) : Void
	{
		var tid = getIncreasedId();
		var troop = new Troop(tid, building, path);
		troops.put( tid, troop );
		rush(troop);
	}
	public function rush(troop:Troop) : Void
	{
		if( building.popTroop() )
			troop.rush(this);
	}

	public function hit(troopId:Int, damage:Float) : Void
	{
		if( !troops.containsKey(troopId) )
			return;
		
		troops.get(troopId).hit(damage);
	}
	
	public function setBuilidng(type:Int, game:Game) : Void
	{
		enabled = true;
		var troopType = building.troopType;
		var population = building.get_population();
		
		building = BuildingType.instantiate(game, type, this, index);
		if( timer != null )
			timer.stop();
		timer = null;
		if( building != null )
			building.createEngine(troopType, population);
	}
	
	public function removeTroop(id:Int) : Void
	{
		if( troops.containsKey(id) )
			troops.remove(id);
	}

	public function dispose() 
	{
		if( timer != null )
			timer.stop();
		timer = null;
		
		var iterator : java.util.Iterator<java.util.Map.Map_Entry<Int, Troop>> = troops.entrySet().iterator();
        while( iterator.hasNext() )
        {
            var troop:Troop = iterator.next().getValue();
			troop.dispose();
		}
		troops.clear();
	}
	#end	
	
	public function getIncreasedId() : Int
	{
		troopId ++;
		return troopId;
	}
}