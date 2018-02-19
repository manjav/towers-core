package com.gt.towers.battle;
import com.gt.towers.Game;
import com.gt.towers.battle.fieldes.PlaceData;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.buildings.Place;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.lists.PlaceList;

/**
 * ...
 * @author Mansour Djawadi
 */
class BattleField
{
	private var questProvider:FieldProvider;

	public var places:PlaceList;
	public var map:FieldData;
	public var difficulty:Int;
	public var arena:Int;
	public var extraTime:Int = 0;

	public function new(game_0:Game, game_1:Game, mapName:String, troopType:Int, hasExtraTime:Bool)
	{
		var isQuest = mapName.substr(0, 6) == "quest_";
		var singleMode = game_1.player.buildings.keys().length == 0;

		if( isQuest )
			map = game_0.fieldProvider.quests.get(mapName);
		else
			map = game_0.fieldProvider.battles.get(mapName);
			
		if( hasExtraTime )
			extraTime = map.times.get(3);
		
		places = new PlaceList();
		var p = 0;
		var placesLen:Int = map.places.size();
		var placeData:PlaceData = null;
		var place:Place = null;
		
		game_0.player.hardMode = false;
		if ( singleMode )
		{
			if ( isQuest )
			{
				if( map.index == 2 )
				{
					game_0.player.hardMode = game_0.player.isHardMode();
					difficulty = game_0.player.hardMode ? 14 : 0;
					map.places.get(3).enabled = !game_0.player.hardMode;
					map.places.get(0).enabled = game_0.player.hardMode;
				}
				else
					difficulty = Math.round(map.index / 5) - 1;
			}
			else
			{
				var winStreak = game_0.player.resources.exists(ResourceType.WIN_STREAK) ? game_0.player.resources.get(ResourceType.WIN_STREAK) : 0;
				arena = game_0.player.get_arena(0);
				if( winStreak > 2 )
					difficulty = arena + winStreak - 2;
				else if ( winStreak < -2 )
					difficulty = arena + winStreak + 2;
				else
					difficulty = arena;
				
				if( difficulty != 0 )
					game_1.player.resources.set(ResourceType.POINT, game_0.player.get_point() + Math.round(Math.pow(1.6, Math.abs(difficulty) ) * difficulty / Math.abs(difficulty)) );
			}
		}
		
		if ( singleMode )
		{
			game_1.fillAllBuildings();
			if ( difficulty != 0 )
			{
				var arenaScope = game_0.arenas.get(arena).max - game_0.arenas.get(arena).min;
				game_1.player.resources.set(ResourceType.POINT, Math.round( Math.max(0, game_0.player.get_point() + Math.random() * arenaScope - arenaScope * 0.5) ) );
			}
		}
		
		// create places and buildings
		while ( p < placesLen )
		{
			placeData = map.places.get( p );
			place = new Place(placeData.troopType == 1 ? game_1 : game_0, placeData.index, (troopType == 1 ? 1080 - placeData.x : placeData.x), (troopType == 1 ? 1920 - placeData.y : placeData.y), placeData.enabled);
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
	public var now:Float = 0;
	public var startAt:Float = 0;
	public function getDuration() : Float
	{
		return now - startAt;
	}
	#end
	
	public function getTime(score:Int):Int
	{
		if ( map == null || score< 0 || score > 2 )
			return 0;
		return map.times.get(score) + extraTime;
	}
}