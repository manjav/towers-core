package com.gt.towers.battle;
import com.gt.towers.Game;
import com.gt.towers.battle.fieldes.PlaceData;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.buildings.Place;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.TroopType;
import com.gt.towers.interfaces.ITroopHitCallback;
import com.gt.towers.utils.lists.PlaceList;
import haxe.Int64;

/**
 * ...
 * @author Mansour Djawadi
 */
class BattleField
{
	private var questProvider:FieldProvider;

	public var singleMode:Bool;
	public var places:PlaceList;
	public var map:FieldData;
	public var difficulty:Int;
	public var arena:Int;
	public var extraTime:Int = 0;
	
#if java 
	public var games:java.util.List<Game>;
	public var now:Int64 = 0;
	public var startAt:Int64 = 0;
	public var interval:Int = 100;
	public var troops:java.util.Map<Int, Troop>;
	public var troopHitCallback:ITroopHitCallback;
#end

	public function new(game_0:Game, game_1:Game, mapName:String, troopType:Int, hasExtraTime:Bool)
	{
		var isOperation = mapName.substr(0, 10) == "operation_";
		singleMode = game_1.player.buildings.keys().length == 0;
		
		if( isOperation )
			map = FieldProvider.operations.get(mapName);
		else
			map = FieldProvider.battles.get(mapName);
			
		if( hasExtraTime )
			extraTime = map.times.get(3);
		
		places = new PlaceList();
		var p = 0;
		var placesLen:Int = map.places.size();
		var placeData:PlaceData = null;
		var place:Place = null;
		
#if java 
		game_0.calculator.setField(this);
		game_1.calculator.setField(this);
		games = new java.util.ArrayList<Game>();
		games.add(game_0);
		games.add(game_1);
		troops = new java.util.concurrent.ConcurrentHashMap<Int, Troop>();
#end
		
		game_0.player.hardMode = false;
		if( singleMode )
		{
			if( isOperation )
			{
				if( map.index == 2 )
				{
					game_0.player.hardMode = game_0.player.emptyDeck();
					difficulty = game_0.player.hardMode ? 14 : 0;
					//map.places.get(3).enabled = !game_0.player.hardMode;
					//map.places.get(0).enabled = game_0.player.hardMode;
				}
				else
					difficulty = Math.round(map.index / 5) - 1;
			}
			else
			{
				var winStreak = game_0.player.getResource(ResourceType.R16_WIN_RATE);
				if( winStreak < -100000 )
					winStreak = 214748364;
				arena = game_0.player.get_arena(0);
				if( winStreak > 2 )
					difficulty = arena + winStreak - 2;
				else if ( winStreak < -2 )
					difficulty = arena + winStreak + 2;
				else
					difficulty = arena;
				
				if( difficulty != 0 )
				{
					var ep:Int = game_0.player.get_point() + Math.round(Math.pow(1.6, Math.abs(difficulty) ) * difficulty / Math.abs(difficulty));
					game_1.player.resources.set(ResourceType.R2_POINT, ep );
				}
			}
			
			game_1.fillAllBuildings();
			if( difficulty != 0 )
			{
				var arenaScope = game_0.arenas.get(arena).max - game_0.arenas.get(arena).min;
				game_1.player.resources.set(ResourceType.R2_POINT, Math.round( Math.max(0, game_0.player.get_point() + Math.random() * arenaScope - arenaScope * 0.5) ) );
			}
		}
		
		// log buildings
		game_0.logBuildings();
		game_1.logBuildings();
		
		// create places and buildings
		while ( p < placesLen )
		{
			placeData = map.places.get( p );
			place = new Place(placeData.troopType == 1 ? game_1 : game_0, this, placeData.index, (troopType == 1 ? 1080 - placeData.x : placeData.x), (troopType == 1 ? 1920 - placeData.y : placeData.y), placeData.enabled);
			place.building = BuildingType.instantiate(place.game, placeData.type, place, placeData.index);
			place.building.createEngine(placeData.troopType);
			places.push(place);
			
			p ++;
		}
		
		// create links of places
		p = 0;
		var l = 0;
		while ( p < placesLen )
		{
			placeData = map.places.get( p );
			places.get(p).links = new PlaceList();
			l = 0;
			while ( l < placeData.links.size() )
			{
				places.get(p).links.push( places.get( placeData.links.get( l ) ) );
				l ++;
			}
			p ++;
		}
	}

	public function getPlacesByTroopType(troopType:Int, onlyLinked:Bool = false ):PlaceList
	{
		if( troopType == TroopType.NONE && !onlyLinked )
			return places;
		
		var ret:PlaceList = new PlaceList();
		var p:Int = places.size() - 1;
		while ( p >= 0 )
		{
			//trace(p, troopType,  places.get(p).building.troopType, linked, places.get(p).links.size());
			if( places.get(p).building.troopType == troopType || troopType == TroopType.NONE )
				if( !onlyLinked || places.get(p).links.size() > 0 )
					ret.push(places.get(p));
			p --;
		}
		return ret;
	}
	
	#if java
	public function update() : Void
	{
		now += interval;
		
		// update places and buildnigs	
		var p:Int = places.size() - 1;
		while ( p >= 0 )
		{
			places.get(p).update(now);
			p --;
		}
		
		// update troops	
		var iterator : java.util.Iterator<java.util.Map.Map_Entry<Int, Troop>> = troops.entrySet().iterator();
        while( iterator.hasNext() )
			iterator.next().getValue().update(now);
	}
	
	public function getDuration() : Int64
	{
		return now / 1000 - startAt;
	}
	
	public function hitTroop(defenderId:Int, hittdeTroops:java.util.List<Troop>) : Void
	{
		if( troopHitCallback != null )
			troopHitCallback.hit(defenderId, hittdeTroops);
			
		var index:Int = hittdeTroops.size() - 1;
        while ( index >= 0 )
		{
			if( hittdeTroops.get(index).health <= 0 )
				troops.remove(hittdeTroops.get(index).id);
			index --;
		}
	}

	public function dispose() 
	{
		/*var p:Int = places.size() - 1;
		while ( p >= 0 )
		{
			places.get(p).dispose();
			p --;
		}*/
		
		// dispose troops
		/*var iterator : java.util.Iterator<java.util.Map.Map_Entry<Int, Troop>> = troops.entrySet().iterator();
        while( iterator.hasNext() )
        {
            var troop:Troop = iterator.next().getValue();
			troop.dispose();
		}*/
		troops.clear();
	}	
	/*public function removeTroop(id:Int) : Void
	{
		if( troops.containsKey(id) )
			troops.remove(id);
	}*/


	#end
	
	public function getTime(score:Int):Int
	{
		if ( map == null || score< 0 || score > 3 )
			return 0;
		return map.times.get(score) + extraTime;
	}
}