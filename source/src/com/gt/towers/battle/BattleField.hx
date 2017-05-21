package com.gt.towers.battle;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Place;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.lists.LinkList;
import com.gt.towers.utils.lists.PlaceList;
import com.gt.towers.utils.maps.IntBuildingMap;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class BattleField 
{

	public var places:PlaceList;
	
	public function new() 
	{
		places = new PlaceList();
		var b:Int = 0;
		while (b < 15)
		{
			places.push(new Place(b));
			b ++;
		}
		
		var b:Int = 0;
		while (b < 15)
		{
		//if (Game.get_instance().get_player().get_arena() >= 1)
		//{
			places.get(b).building = new Building(0, b);
			b ++;
		//}
		}
		
		// change start points troop types
		places.get(1).building.troopType = TroopType.T0;
		places.get(13).building.troopType = TroopType.T1;
		
		createLinks();
	}
	
	private function createLinks():Void
	{
		var _links:LinkList = new LinkList();
		//if (Game.get_instance().get_player().get_arena() >= 1)
	//	{
			
			// horizontal links
			_links.push(0, 1);
			_links.push(1, 2);
			_links.push(3, 4);
			_links.push(4, 5);
			_links.push(6, 7);
			_links.push(7, 8);
			_links.push(9, 10);
			_links.push(10, 11);
			_links.push(12, 13);
			_links.push(13, 14);
			
			// vertical links
			_links.push(0, 3);
			_links.push(3, 6);
			_links.push(6, 9);
			_links.push(9, 12);
			_links.push(1, 4);
			_links.push(4, 7);
			_links.push(7, 10);
			_links.push(10, 13);
			_links.push(2, 5);
			_links.push(5, 8);
			_links.push(8, 11);
			_links.push(11, 14);
		//}
	
		var placesLen:Int = places.size();
		var linksLen:Int = _links.size();
		var p:Int = 0;
		var l:Int = 0;
		while (p < placesLen)
		{
			places.get(p).links = new PlaceList();
			l = 0;
			while (l < linksLen)
			{
				if(p == _links.getX(l))
					places.get(p).links.push(places.get(_links.getY(l)));
				else if(p == _links.getY(l))
					places.get(p).links.push(places.get(_links.getX(l)));
					
				l ++;
			}
			p ++;
		}
	}
	
		
	public function getAllTowers(troopType:Int):PlaceList
	{
		if(troopType == -1)
			return places;

		var ret:PlaceList = new PlaceList();
		var placesLen:Int = places.size();
		var p:Int = 0;
		while ( p < placesLen )
		{
			if(places.get(p).building.troopType == troopType)
				ret.push(places.get(p));
			
			p ++;
		}
		return ret;
	}
}