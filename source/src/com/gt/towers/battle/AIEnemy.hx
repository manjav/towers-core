package com.gt.towers.battle;
import com.gt.towers.battle.BattleField;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Place;
import com.gt.towers.buildings.cals.BrithRateCalculator;
import com.gt.towers.buildings.cals.DamageCalculator;
import com.gt.towers.constants.BuildingFeatureType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.lists.PlaceList;
import com.gt.towers.utils.maps.IntBuildingMap;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class AIEnemy 
{

	public static var TYPE_ANY_ENEMY:Int = -10;
	public static var TYPE_ANY_ENABLED_ENEMY:Int = -11;
	public static var TYPE_WAIT_FOR_GROW:Int = -12;
	
	public static var TYPE_NO_CHANCE:Int = -1;
	
	public static var TYPE_FIGHT:Int = 1;
	public static var TYPE_FIGHT_DOUBLE:Int = 2;
	public static var TYPE_FIGHT_TRIPLE:Int = 3;
	
	public static var TYPE_IMPROVE:Int = 10;
	
	public static var TYPE_START_STICKER:Int = 21;

	public var actionType:Int = -100;
	public var sources:IntList;
	public var target:Int;
	public var destinations:IntIntMap;
	public var maxEnemy:Int;
	public var dangerousPoint:Int = -1;
	public var numFighters:Int = 0;
	
	public var accessPoint:Float;
	
	private var battleField:BattleField;
	var stickerStarted:Bool;
	
	public function new(battleField:BattleField)
	{
		this.battleField = battleField;
		accessPoint = Math.floor(battleField.startAt % 5);
		
		var min = Math.max(1, battleField.difficulty * 0.5);
		var max = Math.max(2, battleField.difficulty * 2.0);
		maxEnemy = Math.floor( min < max ? Math.random() * (max-min) + min : max);
		trace("winStreak: " + battleField.places.get(0).game.player.resources.get(ResourceType.WIN_STREAK) + " difficulty " + battleField.difficulty + " maxEnemy " + maxEnemy);
	}
	
	public function tryAction():Int
	{
		var botPopulation = 0;
		var minPlayerPopulation:Float = 1000;
		var botPlaces = battleField.getPlacesByTroopType(1);
		var playerPlaces = battleField.getPlacesByTroopType(0);
		var botPlacesLen:Int = botPlaces.size();
		var activeBotPlaces = new IntList();
		destinations = new IntIntMap();
		target = -1;
		
		// cover crisis point
		if ( existsIndex(botPlaces, dangerousPoint) && botPlaces.size() <= playerPlaces.size() * 1.2 )
		{
			target = dangerousPoint;
			dangerousPoint = -1;
			//battleField.places.get(0).game.tracer.log(numFighters + " dangerousPoint "+ target );
			return Math.ceil(Math.min( 3, numFighters / 3 ));
		}
		dangerousPoint = -1;
		
		if( botPlacesLen == 0 )
			return TYPE_ANY_ENEMY;
		
		else if ( botPlacesLen == 1 )
		{
			var singlePlace = botPlaces.get(0);
			if( singlePlace.enabled && singlePlace.building.type==CardTypes.C001 && battleField.getDuration()<battleField.map.times.get(0) )
			{
				if ( (Math.random() < 0.8 || battleField.places.get(0).game.player.hardMode) && battleField.difficulty >= 1 )
				{
					if( transform(singlePlace.building, true) )
						return TYPE_IMPROVE;
				}
			}
		}
		
		var p:Int = 0;
		var m:Int = 0;
		while( p < botPlacesLen )
		{
			
			if ( botPlaces.get(p).enabled )//checkSelfPopulation < enemyPlaces.get(p).building.get_population() && 
			{
				activeBotPlaces.push(botPlaces.get(p).index);
				botPopulation += botPlaces.get(p).building.get_population();
	
				//if ( botPlaces.get(p).building.get_population() < botPlaces.get(p).building.get_capacity() * 0.5 )
				//	target = botPlaces.get(p).index;

				// find weakest of enemeis
				m = 0;
				var linksLen:Int = botPlaces.get(p).links.size();
				while( m < linksLen && target == -1 )
				{
					if( botPlaces.get(p).links.get(m).building.troopType != 1 )
					{
						var building = botPlaces.get(p).links.get(m).building;
						var distance = battleField.difficulty < 4 ? 1 : Math.sqrt(Math.pow(botPlaces.get(p).x - botPlaces.get(p).links.get(m).x, 2) + Math.pow(botPlaces.get(p).y - botPlaces.get(p).links.get(m).y, 2)) / 20;
						var power = building.get_population() * (building.damage / building.game.featureCaculator.getBaseline(BuildingFeatureType.F21_DAMAGE)) * (building.troopPower / building.game.featureCaculator.getBaseline(BuildingFeatureType.F03_TROOPS_COUNT)) + distance ;
						power *= building.troopType == -1 ? 1.1 : 1;
						//building.game.tracer.log(botPlaces.get(p).index + " ->> " + botPlaces.get(p).links.get(m).index + " damage:"+(building.get_damage() / Building.BASE_DAMAGE) + " birthRate:"+(building.get_birthRate() / Building.BASE_BIRTH_RATE) + " distance:" + distance + " population:"+building.get_population() + " power:"+power);
						if( power <= minPlayerPopulation )
						{
							if ( power < minPlayerPopulation )
								destinations = new IntIntMap();
							
							/*if ( power < building.get_capacity() * 0.3 )
							{
								target = building.index;
								break;
							}*/
							destinations.set(botPlaces.get(p).links.get(m).index, Math.round(power * 1000) );
							minPlayerPopulation = power;
						}
					}
					m ++;
				}
			}
			p ++;
		}
		
		// stop fighting when enemy loses or wins
		var keys = destinations.keys();
		if( ( keys.length == 0 && target == -1 ) || activeBotPlaces.size() == 0 )
			return TYPE_ANY_ENABLED_ENEMY;
		
		//if num enemies greater than max enemies reduce to max enemies 
		var max:Int = (activeBotPlaces.size() > maxEnemy ? maxEnemy : activeBotPlaces.size()) - 1;
		sources = new IntList();
		while ( max >= 0 )
		{
			var plc = battleField.getPlace(activeBotPlaces.get(max));
			if( plc != null && plc.hasTroop() )
				sources.push(activeBotPlaces.get(max));
			max --;
		}
		
		// remove stroge targets
		minPlayerPopulation = Math.round(minPlayerPopulation * 1000);
		var targetsSize = keys.length;
		var targets = new IntList();
		while ( targetsSize > 0 )
		{
			//battleField.places.get(0).game.tracer.log(keys[targetsSize-1] + " minPlayerPopulation "+minPlayerPopulation + " >= " + destinations.get(keys[targetsSize-1]));
			if( minPlayerPopulation >= destinations.get(keys[targetsSize-1]) )
				targets.push(keys[targetsSize-1]);
			targetsSize --;
		}

		if( target != -1 )
			return getAppropriateFight();
			
		//battleField.places.get(0).game.tracer.log("destinations ");

		// get random target
		targetsSize = targets.size();
		
		if( targetsSize == 0 )
			return TYPE_ANY_ENABLED_ENEMY;
			
		target = targets.get(  Math.floor( Math.random() * targetsSize ) );
		
		var pc = getAllCapacities(playerPlaces);
		var bc = getAllCapacities(botPlaces);
	
		var needPopulation = pc > bc ;
		improvePopulous(botPlaces, needPopulation);
		
		//battleField.places.get(0).game.tracer.log(playerPlaces.size() +"<="+ botPlaces.size()*1.1);
		if ( pc > bc && playerPlaces.size() <= botPlaces.size()*1.1 )
			return battleField.difficulty >= 2 ? TYPE_WAIT_FOR_GROW : getAppropriateFight();
		
		if ( battleField.places.get(target).building.get_population() > botPopulation * 0.5 )
			if ( battleField.difficulty >= 2 && Math.random() > 0.5 )
				return TYPE_WAIT_FOR_GROW ;
			
		return getAppropriateFight();
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
	
	private function getAppropriateFight() : Int
	{
		if ( battleField.difficulty > 7 )
			return TYPE_FIGHT_TRIPLE;
		else if ( battleField.difficulty > 3 )
			return TYPE_FIGHT_DOUBLE;
		else
			return TYPE_FIGHT;
	}
	
	
	private function getAllCapacities(places:PlaceList) :Int
	{
		var size = places.size();
		var b = 0;
		var p = 0;
		while ( b < size )
		{
			p += places.get(b).building.capacity;
			b ++;
		}
		return p;
	}
	
	private function improvePopulous(botPlaces:PlaceList, needPopulation:Bool) :Bool
	{
		if ( battleField.difficulty < 3 )
			return false;
		var b = botPlaces.size() - 1;
		while ( b >= 0 )
		{
			if( transform(botPlaces.get(b).building, needPopulation) )
					return true;
			b --;
		}
		return false;
	}
	
	private function transform(building:Building, needPopulation:Bool) : Bool
	{
		if ( building.type == CardTypes.C001 )
		{
			if ( needPopulation || battleField.getDuration() < battleField.map.times.get(0))
				return building.transform(battleField.deckBuildings.get(4).building);
			
			var rand = Math.random();
			if ( rand > 0.9 )
				return building.transform(battleField.deckBuildings.get(7).building);
			else if ( rand > 0.8 )
				return building.transform(battleField.deckBuildings.get(6).building);
			else if ( rand > 0.7 )
				return building.transform(battleField.deckBuildings.get(5).building);
				
			return building.transform(battleField.deckBuildings.get(4).building);
		}
		return false;
	}
	
	public function doAction():Int
	{
		var seed:Int = Math.floor(battleField.now % 5);
		if ( seed == accessPoint && ( actionType == TYPE_NO_CHANCE || actionType == -100 ) )
			return actionType = tryAction();
			
			
		if ( !battleField.map.isQuest && Math.random() < 0.002 && !stickerStarted )
		{
			stickerStarted = true;
			return actionType = TYPE_START_STICKER;
		}
		return actionType = TYPE_NO_CHANCE;
	}
	
}