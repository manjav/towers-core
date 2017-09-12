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
		
		var troopType = 1;
		var enemyPopulation:Int = 0;
		var minPlayerPopulation:Float = 1000;
		var enemyPlaces = battleField.getAllTowers(troopType);
		var enemyLen:Int = enemyPlaces.size();
		var enemies = new IntList();
		destinations = new IntIntMap();
		
		if (enemyLen == 0)
		{
			return TYPE_ANY_ENEMY;
		}
		else if ( enemyLen == 1 )
		{
			var singlePlace = enemyPlaces.get(0);
			if( singlePlace.enabled && singlePlace.building.type==BuildingType.B01_CAMP && battleField.getDuration()<battleField.map.times.get(0) )
			{
				if ( Math.random() < 0.8 && difficulty >= 2)
				{
					singlePlace.building.improve(BuildingType.B11_BARRACKS);
					return TYPE_IMPROVE;
				}
			}
		}
		
		var p:Int = 0;
		var m:Int = 0;
		while( p < enemyLen )
		{
			
			if ( enemyPlaces.get(p).enabled )//checkSelfPopulation < enemyPlaces.get(p).building.get_population() && 
			{
				enemies.push(enemyPlaces.get(p).index);
				enemyPopulation += enemyPlaces.get(p).building.get_population();
				
				// find weakest of enemeis
				m = 0;
				var linksLen:Int = enemyPlaces.get(p).links.size();
				while( m < linksLen )
				{
					if( enemyPlaces.get(p).links.get(m).building.troopType != troopType )
					{
						var building = enemyPlaces.get(p).links.get(m).building;
						var population = building.get_population() * building.get_troopPower() * building.get_damage();
						population *= building.troopType == -1 ? 2 : 1;
						if( population <= minPlayerPopulation )
						{
							if ( population < minPlayerPopulation )
								destinations = new IntIntMap();
							
							destinations.set(enemyPlaces.get(p).links.get(m).index, Math.round(population * 1000) );
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
		if ( keys.length == 0 || enemies.size() == 0 )
			return TYPE_ANY_ENABLED_ENEMY;
		
		//if num enemies greater than max enemies reduce to max enemies 
		var max:Int = (enemies.size() > maxEnemy ? maxEnemy : enemies.size()) - 1;
		sources = new IntList();
		while ( max >= 0 )
		{
			sources.push(enemies.get(max));
			max --;
		}
		
		// get random target
		target = keys [ Math.floor( Math.random() * keys.length ) ];
		//destination = destinations[0];
		
		if (battleField.places.get(target).building.get_population() > enemyPopulation && difficulty >= 2 )
			return TYPE_WAIT_FOR_GROW;
		
		if (battleField.places.get(target).building.get_population() > enemyPopulation*0.7 && difficulty >= 1)
			return TYPE_FIGHT_DOUBLE;
		return TYPE_FIGHT;
	}
	
	public function doAction():Int
	{
		var seed:Int = Math.floor(battleField.now%5);
		if ( seed == accessPoint && ( actionType == TYPE_NO_CHANCE ||  actionType == -100 ) )
			return actionType = tryAction();
		return actionType = TYPE_NO_CHANCE;
	}
	
}