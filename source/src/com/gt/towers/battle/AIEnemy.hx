package com.gt.towers.battle;
import com.gt.towers.battle.BattleField;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Place;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.lists.PlaceList;
import com.gt.towers.utils.maps.IntIntMap;

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
	public static var TYPE_IMPROVE:Int = 10;

	public var actionType:Int = -100;
	public var sources:IntList;
	public var target:Int;
	public var destinations:IntIntMap;
	public var difficulty:Int = 2;
	
	public var accessPoint:Float;
	
	private var battleField:BattleField;
	private var maxEnemy:Int = 7;
	
	public function new(battleField:BattleField)
	{
		this.battleField = battleField;
		accessPoint = Math.floor(battleField.startAt%5);
	}
	
	public function tryAction():Int
	{
		var checkSelfPopulation = 0;
		
		var botPopulation:Int = 0;
		var minPlayerPopulation:Float = 1000;
		var botPlaces = battleField.getAllTowers(1);
		var playerPlaces = battleField.getAllTowers(0);
		var botPlacesLen:Int = botPlaces.size();
		var activeBotPlaces = new IntList();
		destinations = new IntIntMap();
		
		if (botPlacesLen == 0)
		{
			return TYPE_ANY_ENEMY;
		}
		else if ( botPlacesLen == 1 )
		{
			var singlePlace = botPlaces.get(0);
			if( singlePlace.enabled && singlePlace.building.type==BuildingType.B01_CAMP && battleField.getDuration()<battleField.map.times.get(0) )
			{
				if ( Math.random() < 0.8 && difficulty >= 2 )
				{
					if( improve(singlePlace.building) )
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
				
				// find weakest of enemeis
				m = 0;
				var linksLen:Int = botPlaces.get(p).links.size();
				while( m < linksLen )
				{
					if( botPlaces.get(p).links.get(m).building.troopType != 1 )
					{
						var building = botPlaces.get(p).links.get(m).building;
						var dis = difficulty<2 ? 1 : Math.sqrt(Math.pow(botPlaces.get(p).x-botPlaces.get(p).links.get(m).x, 2) + Math.pow((botPlaces.get(p).y-botPlaces.get(p).links.get(m).y)*1.2, 2))/200;
						var population = building.get_population() * building.get_troopPower() * building.get_damage() * dis;
						population *= building.troopType == -1 ? 1.1 : 1;
						//building.game.tracer.log(p + " ->> " + m + " dis:"+dis + "	population:"+population);
						if( population <= minPlayerPopulation )
						{
							if ( population < minPlayerPopulation )
								destinations = new IntIntMap();
							
							destinations.set(botPlaces.get(p).links.get(m).index, Math.round(population * 1000) );
							minPlayerPopulation = population;
						}
					}
					m ++;
				}
			}
			p ++;
		}
		
		// stop fighting when enemy loses or wins
		var keys = destinations.keys();
		if( keys.length == 0 || activeBotPlaces.size() == 0 )
			return TYPE_ANY_ENABLED_ENEMY;
		
		//if num enemies greater than max enemies reduce to max enemies 
		var max:Int = (activeBotPlaces.size() > maxEnemy ? maxEnemy : activeBotPlaces.size()) - 1;
		sources = new IntList();
		while ( max >= 0 )
		{
			sources.push(activeBotPlaces.get(max));
			max --;
		}
		
		// get random target
		target = keys [ Math.floor( Math.random() * keys.length ) ];
		//destination = destinations[0];
		
		if( getPlayerPopulation(playerPlaces) > botPopulation && playerPlaces.size() < botPlaces.size() )
		{
			if ( improvePopulous(botPlaces) )
				return TYPE_IMPROVE;
			else
				return TYPE_WAIT_FOR_GROW;
		}
		
		if( battleField.places.get(target).building.get_population() > botPopulation * 0.7 && difficulty >= 1)
			return TYPE_FIGHT_DOUBLE;
			
		return TYPE_FIGHT;
	}
	
	private function getPlayerPopulation(playerPlaces:PlaceList) :Int
	{
		var size = playerPlaces.size();
		var b = 0;
		var p = 0;
		while ( b < size )
		{
			p += playerPlaces.get(b).building.get_population();
			b ++;
		}
		return p;
	}
	
	private function improvePopulous(botPlaces:PlaceList) :Bool
	{
		if ( difficulty < 2 )
			return false;
		var size = botPlaces.size();
		var b = 0;
		while ( b < size )
		{
			var building = botPlaces.get(b).building;
			var bb = improve(building);
			//building.game.tracer.log("index:" + building.index + " type:" + building.type + " trying to improvement ==> " + bb);
			if ( bb )
				return true;
			b ++;
		}
		return false;
	}
	
	private function improve(building:Building) : Bool
	{
		if ( building.type == BuildingType.B01_CAMP )
		{
			if ( battleField.getDuration() < battleField.map.times.get(0)/2 )
				return building.improve(BuildingType.B11_BARRACKS);
			
			var rand = Math.random();
			if ( rand > 0.9 )
				return building.improve(BuildingType.B41_CRYSTAL);
			else if ( rand > 0.8 )
				return building.improve(BuildingType.B31_HEAVY);
			else if ( rand > 0.7 )
				return building.improve(BuildingType.B21_RAPID);
				
			return building.improve(BuildingType.B11_BARRACKS);
		}
		
		return building.improve(BuildingType.IMPROVE);
	}
	
	public function doAction():Int
	{
		var seed:Int = Math.floor(battleField.now%5);
		if ( seed == accessPoint && ( actionType == TYPE_NO_CHANCE ||  actionType == -100 ) )
			return actionType = tryAction();
		return actionType = TYPE_NO_CHANCE;
	}
	
}