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
	private var maxEnemy:Int = 7;


	public var actionType:String = "";
	public var sources:IntList;
	public var target:Int;
	public var destinations:IntIntMap;
	
	var battleField:BattleField;
	
	public function new(battleField:BattleField)
	{
		this.battleField = battleField;
	}
	
	public function fightToWeakestPlace():Bool
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
			return false;
		}
		else if ( enemyLen == 1 )
		{
			var singlePlace = enemyPlaces.get(0);
			if( singlePlace.enabled && singlePlace.building.type==BuildingType.B01_CAMP && battleField.getDuration()<battleField.map.times.get(0) )
			{
				singlePlace.building.improve(BuildingType.B11_BARRACKS);
				return true;
			}
		}
		
		var p:Int = 0;
		var m:Int = 0;
		while( p < enemyLen )
		{
			
			if (checkSelfPopulation < enemyPlaces.get(p).building.get_population() && enemyPlaces.get(p).enabled)
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
			return false;
		
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
		
		if (battleField.places.get(target).building.get_population() > enemyPopulation )
			return false;
		
		actionType = "fight";
		return true;
	}
	
	public function doAction():Bool
	{
		var seed:Int = Math.round(battleField.now%5);
		if ( seed == 1 )
			return fightToWeakestPlace();
		return false;
	}
	
}