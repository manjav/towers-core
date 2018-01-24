package com.gt.towers.battle;
import com.gt.towers.battle.BattleField;
import com.gt.towers.buildings.Place;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.lists.PlaceList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Bot 
{
	//public static var TYPE_ANY_ENEMY:Int = -10;
	//public static var TYPE_ANY_ENABLED_ENEMY:Int = -11;
	
	public static var ACTION_NO_CHANCE:Int = -1;
	public static var ACTION_FIGHT:Int = 1;
	public static var ACTION_TRANSFORM:Int = 10;
	public static var ACTION_START_STICKER:Int = 21;

	public var actionType:Int = -100;
	public var sources:IntList;
	public var sourcesPowers:Float;
	public var target:Int;
	
	public var dangerousPoint:Int = -1;
	public var numFighters:Int = 0;
	
	public var accessPoint:Float;
	
	private var battleField:BattleField;
	var stickerStarted:Bool;
	
	var allPlaces:PlaceList;
	var allTowers:PlaceList;
	var playerCastle:Place;
	var robatCastle:Place;
	
	public function new(battleField:BattleField)
	{
		this.battleField = battleField;
		accessPoint = Math.floor(battleField.startAt % 3);
		
		/*var min = Math.max(1, battleField.difficulty * 0.5);
		var max = Math.max(2, battleField.difficulty * 2.0);
		maxEnemy = Math.floor( min < max ? Math.random() * (max-min) + min : max);*/
		trace("winStreak: " + battleField.places.get(0).game.player.resources.get(ResourceType.WIN_STREAK) + " difficulty " + battleField.difficulty);
		
		allPlaces = battleField.getPlacesByTroopType(TroopType.NONE, true);
		allTowers = battleField.getPlacesByMode(1, TroopType.NONE);
		
		playerCastle = battleField.getPlacesByMode(2, TroopType.T_0).get(0);
		robatCastle = battleField.getPlacesByMode(2, TroopType.T_1).get(0);
	}
	
	function tryAction():Int
	{
		var ret:Int = ACTION_NO_CHANCE;
		
		/**
		 * transform for defence main places
		 */
		if ( dangerousPoint > -1 )
		{
			var dangerousPlace = battleField.getPlaceByIndex(dangerousPoint);
			if( dangerousPlace.mode > 0 )
				dangerousPlace.building.transform(battleField.deckBuildings.get(4).building);
			dangerousPoint = -1;
		}

		/**
		 * transform and fight troops to empty places
		 */
		var step = allPlaces.size() - 1;
		var placeTargetIndex = -1;
		while ( step >= 0 )
		{
			if ( allPlaces.get(step).building.troopType != TroopType.T_1 && isNeighbor(allPlaces.get(step)) )
			{
				if( placeTargetIndex == -1 || estimateHealth(allPlaces.get(step)) < estimateHealth(allPlaces.get(placeTargetIndex)) )
					placeTargetIndex = step;
			}
			step --;
		}
		
		//trace("placeTargetIndex", placeTargetIndex, allPlaces.get(placeTargetIndex).index);
		if ( placeTargetIndex > -1 )
			ret = fightToPlace(allPlaces.get(placeTargetIndex));
			
		return ret;
	}
	
	function fightToPlace(target:Place) : Int
	{
		sources = new IntList();
		var fightersList = new IntList();
		var transformersList = new IntList();
		var transformed = false;
		sourcesPowers = 0;
		var estimaestimatedTargetHealth:Float = estimateHealth(target);

		addFighters(target, fightersList, estimaestimatedTargetHealth);
		if( addTransformers(target, transformersList) )
			transformed = true;
		
		//trace("target: , " + target.index , " sourcesPowers: " + sourcesPowers , "  estimaestimatedTargetHealth: " + estimaestimatedTargetHealth);
		if ( sources.size() > 0 && ( sourcesPowers >= estimaestimatedTargetHealth || battleField.getPlacesByTroopType(TroopType.T_1, true).size() <= 1 ) )
		{
			this.target = target.index;
			return ACTION_FIGHT;
		}
		
		if ( transformed )
			return ACTION_TRANSFORM;
		
		return ACTION_NO_CHANCE;
	}
	
	function addFighters(place:Place, fightersList:IntList, estimaestimatedTargetHealth:Float) : Void
	{
		if ( fightersList.indexOf(place.index) > -1 || sourcesPowers >= estimaestimatedTargetHealth / 0.6 )
			return;
		
		fightersList.push(place.index);
		var placeLinks = place.getLinks(TroopType.T_1);
		var step = placeLinks.size() - 1;
		while ( step >= 0 )
		{
			if( placeLinks.get(step).hasTroop() )
			{
				sourcesPowers += estimateTroopsPower(placeLinks.get(step));
				sources.push(placeLinks.get(step).index);
			}
			addFighters(placeLinks.get(step), fightersList, estimaestimatedTargetHealth);
			step --;
		}
	}
	
	function addTransformers(place:Place, transformersList:IntList) : Bool
	{
		if ( transformersList.indexOf(place.index) > -1 )
			return false;
		
		var ret = false;
		if( place.building.get_population() < battleField.deckBuildings.get(5).building.troopsCount )
			ret = place.building.transform(battleField.deckBuildings.get(5).building) || ret;
		
		transformersList.push(place.index);
		
		// transform neighbors
		var placeLinks = place.getLinks(TroopType.T_1);
		var step = placeLinks.size() - 1;
		while ( step >= 0 )
		{
			ret = addTransformers(placeLinks.get(step), transformersList) || ret;
			step --;
		}		
		return ret;
	}


	public function doAction() : Int
	{
		var seed:Int = Math.floor(battleField.now % 5);
		if ( seed == accessPoint && ( actionType == ACTION_NO_CHANCE || actionType == -100 ) )
			return actionType = tryAction();
			
			
		if ( !battleField.map.isQuest && Math.random() < 0.002 && !stickerStarted )
		{
			stickerStarted = true;
			return actionType = ACTION_START_STICKER;
		}
		return actionType = ACTION_NO_CHANCE;
	}
	
	function existsIndex(places:PlaceList, index:Int) : Bool
	{
		var size = places.size()-1;
		if ( battleField.difficulty < 6 || index == -1 || size <= 0 )
			return false;
		while ( size >= 0 )
		{
			if ( places.get(size).index == index )
				return true;
			size --;
		}
		return false;
	}
	
	// tools
	function isNeighbor(place:Place) : Bool
	{
		var placeLinks = place.getLinks(TroopType.T_1);
		return placeLinks.size() > 0;
	}
	function estimateTroopsPower(place:Place) : Float
	{
		return place.building.get_population() * place.building.troopPower;
	}
	function estimateHealth(place:Place) : Float
	{
		if ( place.getLinks(TroopType.T_1).indexOf(robatCastle) > -1 )
			return 0.1;
		return (place.building.get_population() + place.building.get_health()) / (place.mode + 1) ;
	}	
}