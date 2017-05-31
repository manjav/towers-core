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
	public var destinations:IntList;
	
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
		var minPopulation:Int = 1000;
		var enemyPlaces = battleField.getAllTowers(troopType);
		var enemyLen:Int = enemyPlaces.size();
		sources = new IntList();
		var dests = new IntIntMap();
		
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
						if(enemyPlaces.get(p).links.get(m).building.get_population() <= minPopulation )
						{
							minPopulation = enemyPlaces.get(p).links.get(m).building.get_population();
							dests.set(enemyPlaces.get(p).links.get(m).index, minPopulation);
						}
					}
					m ++;
				}
			}
			p ++;
		}
		
		// remove larger size values
		destinations = new IntList();
		var destsKeys = dests.keys();
		p = destsKeys.length - 1;
		minPopulation = 0;
		while ( p >= 0 )
		{
			destination = dests.get(destsKeys[p]);
			if ( minPopulation <= destination )
			{
				minPopulation = destination;
				destinations.push( destsKeys[p] );
			}
			p --;
		}
		
		// get random target
		destination = destinations.get(Math.floor(Math.random() * destinations.size()));
		//destination = destinations.get(0);
		
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