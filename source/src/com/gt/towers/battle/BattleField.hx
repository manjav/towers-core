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
		var singleMode = game_1 == null;
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
		
		if ( singleMode )
		{
			if ( isQuest )
			{
				game_0.player.hardMode = false;
				if ( map.index == 2 )
				{
					game_0.player.hardMode =  !game_0.player.buildings.exists(BuildingType.B11_BARRACKS) || game_0.player.buildings.get(BuildingType.B11_BARRACKS).get_level() <= 1 ;
					difficulty = game_0.player.hardMode ? 14 : 0;
					map.places.get(3).enabled = !game_0.player.hardMode;
					map.places.get(0).enabled = game_0.player.hardMode;
				}
				else
					difficulty = Math.round(map.index / 6);
			}
			else
			{
				var winStreak = game_0.player.resources.exists(ResourceType.WIN_STREAK) ? game_0.player.resources.get(ResourceType.WIN_STREAK) : 0;
				arena = game_0.player.get_arena(0);
				if ( winStreak > 2 )
					difficulty = arena + winStreak - 2;
				else if ( winStreak < -2 )
					difficulty = arena + winStreak + 2;
				else
					difficulty = arena;
			}
		}
		
		while ( p < placesLen )
		{
			placeData = map.places.get( p );
			place = new Place((placeData.troopType == 1 && game_1 != null) ? game_1 : game_0, placeData.index, (troopType == 1 ? 1080 - placeData.x : placeData.x), (troopType == 1 ? 1920 - placeData.y : placeData.y), placeData.enabled);
			place.levelCoef = (placeData.troopType == 1 && game_1 == null && !isQuest) ? (difficulty - arena) * 2 : 0;
			if ( place.levelCoef < 0 )
				place.levelCoef = 0;
				
			if ( map.isQuest && map.index < 3 )
				place.healthCoef = 2.4;
			if ( game_0.player.hardMode )
				place.healthCoef = 0.4;
			
				
			place.building = BuildingType.instantiate(place.game, placeData.type, place, placeData.index);
			place.building.createEngine(placeData.troopType);
			places.push(place);
			
			p ++;
		}

		p = 0;
		var l = 0;
		while ( p < placesLen )
		{
			placeData = map.places.get( p );
			places.get(p).links = new PlaceList();
			l = 0;
			while (l < placeData.links.size())
			{
				places.get(p).links.push( places.get( placeData.links.get( l ) ) );
				l ++;
			}
			p ++;
		}
	}

	public function getAllTowers(troopType:Int):PlaceList
	{
		if( troopType == TroopType.NONE )
			return places;

		var ret:PlaceList = new PlaceList();
		var p:Int = places.size() - 1;
		while ( p >= 0 )
		{
			if( places.get(p).building.troopType == troopType )
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