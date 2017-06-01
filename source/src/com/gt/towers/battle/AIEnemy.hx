package com.gt.towers.battle;
import com.gt.towers.battle.BattleField;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Place;
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
	public var actionType:String = "";
	public var sources:IntList;
	public var destination:Int;
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
		var minCapacity:Int = 1000;
		var minPopulation:Float = 1000;
		var enemyPlaces = battleField.getAllTowers(troopType);
		var enemyLen:Int = enemyPlaces.size();
		sources = new IntList();
		destinations = new IntIntMap();
		
		if(enemyLen == 0)
			return false;
		
		var p:Int = 0;
		var m:Int = 0;
		while( p < enemyLen )
		{
			
			if (checkSelfPopulation < enemyPlaces.get(p).building.get_population())
			{
				sources.push(enemyPlaces.get(p).index);
				
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
						if( population <= minPopulation )
						{
							if ( population < minPopulation )
								destinations = new IntIntMap();
							
							destinations.set(enemyPlaces.get(p).links.get(m).index, Math.round(population * 1000) );
							minPopulation = population;
						}
					}
					m ++;
				}
			}
			p ++;
		}
		
		var keys = destinations.keys();
		if ( keys.length == 0 || sources.size() == 0 )
			return false;
		
		// get random target
		destination = keys [ Math.floor( Math.random() * keys.length ) ];
		//destination = destinations[0];
		
		actionType = "fight";
		return true;
	}
	
	public function doAction(seed:Int):Bool
	{
		if (seed == 0)
			return fightToWeakestPlace();

		return false;
	}
	
}