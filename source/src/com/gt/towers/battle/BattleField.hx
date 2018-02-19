package com.gt.towers.battle;
import com.gt.towers.Game;
import com.gt.towers.battle.fieldes.PlaceData;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Place;
import com.gt.towers.constants.CardTypes;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.lists.FloatList;
import com.gt.towers.utils.lists.PlaceList;

/**
 * ...
 * @author Mansour Djawadi
 */
class BattleField
{
	public static var POPULATION_MAX:Int = 10;
	public static var POPULATION_INIT:Int = 5;
	
	private var questProvider:FieldProvider;
	
	public var elixirBar:FloatList;
	public var deckBuildings:PlaceList;
	public var places:PlaceList;
	public var map:FieldData;
	public var difficulty:Int;
	public var arena:Int;
	public var extraTime:Int = 0;
	
	#if java
	public var fighters:java.util.Map<Int, Troop>;
	#end

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
			
		trace("extraTime", extraTime);
		
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
				if ( map.index == 2 )
				{
					game_0.player.hardMode = game_0.player.isHardMode();
					difficulty = game_0.player.hardMode ? 14 : 0;
					map.places.get(3).enabled = !game_0.player.hardMode;
					//map.places.get(0).enabled = game_0.player.hardMode;
				}
				else
					difficulty = Math.round(map.index / 6);
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
			}
			game_1.player.resources.set(ResourceType.POINT, game_0.player.get_point() + difficulty * 10 * game_0.player.get_arena(0));
		}
		
        // return to normal bot point
		if ( singleMode )
		{
			// game_1.fillAllBuildings();
			if ( difficulty != 0 )
			{
				var arenaScope = game_0.arenas.get(arena).max - game_0.arenas.get(arena).min;
				game_1.player.resources.set(ResourceType.POINT, Math.round( Math.max(0, game_0.player.get_point() + Math.random() * arenaScope - arenaScope * 0.5) ) );
			}
		}
		
		while ( p < placesLen )
		{
			placeData = map.places.get( p );
            place = new Place(placeData.troopType == 1 ? game_1 : game_0, this, placeData.index, (troopType == 1 ? 1080 - placeData.x : placeData.x), (troopType == 1 ? 1920 - placeData.y : placeData.y), placeData.health, placeData.enabled, placeData.mode);
			place.building = new Building(place.game, place, placeData.index, CardTypes.migrate(placeData.type));
			place.building.reset(placeData.troopType);
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
		
		// create decks	
		deckBuildings = new PlaceList();
		addPlayerDeck(game_0, 0);
		if( singleMode )		
			addRandomDeck(game_0);
		else
			addPlayerDeck(game_1, 1);
			
		elixirBar = new FloatList();
		elixirBar.push(POPULATION_INIT);
		elixirBar.push(POPULATION_INIT);
		
	#if java
		fighters = new java.util.HashMap<Int, Troop>();
	#end
	}
	
	function addPlayerDeck(game:Game, troopType:Int) : Void
	{
		var startIndex = troopType == 0 ? 0 : 4;
		var i = 0;
		while ( i < game.player.get_current_deck().size() )
		{
			var p = new Place(game, this, i + startIndex, 0, 0, 10, true, 0);
			p.building = new Building(game, p, i + startIndex, game.player.get_current_deck().get(i));
			p.building.reset(troopType);
			deckBuildings.push(p);
			i ++;
		}
	}
	
	function addRandomDeck(game:Game) : Void
	{
		var availableCards = game.player.availabledCards(); // random arena
		var i = 1;
		while ( i < 5 )
		{
			var randType = availableCards.get(Math.floor ( Math.random() * availableCards.size() ));
			if( randType > (i*100 + 100) && randType < (i*100 + 200) )
			{
				var p = new Place(game, this, i+4, 0, 0, 10, true, 0);
				p.building = new Building(game, p, i+4, randType);
				p.building.reset(1);
				deckBuildings.push(p);
				i ++;
			}
		}
	}

	public function getPlaceInDeck(buildingType:Int, troopType:Int) : Place
	{
		var step:Int = deckBuildings.size() - 1; // random arena
		while ( step >= 0 )
		{
			if ( deckBuildings.get(step).building.type == buildingType && deckBuildings.get(step).building.troopType == troopType )
				return deckBuildings.get(step);
			step --;
		}
		return null;
	}

	
	#if java
	public var now:Float = 0;
	public var startAt:Float = 0;
	public function getDuration() : Float
	{
		return now - startAt;
	}
	
	public function hit(fighterId:Int, damage:Float) : Void
	{
		if( !fighters.containsKey(fighterId) )
			return;
		
		fighters.get(fighterId).hit(damage);
	}
	#end
	public function getTime(score:Int):Int
	{
		if ( map == null || score< 0 || score > 3 )
			return 0;
		return map.times.get(score) + extraTime;
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
	
	public function getPlacesByMode(mode:Int, troopType:Int) : PlaceList
	{
		var ret:PlaceList = new PlaceList();
		var p:Int = places.size() - 1;
		while ( p >= 0 )
		{
			if( places.get(p).mode == mode && places.get(p).building.troopType == troopType  )
				ret.push(places.get(p));		
			p --;
		}
		return ret;
	}
}