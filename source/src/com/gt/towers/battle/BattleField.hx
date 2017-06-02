package com.gt.towers.battle;
import com.gt.towers.buildings.Barracks;
import com.gt.towers.buildings.Camp;
import com.gt.towers.buildings.Heavy;
import com.gt.towers.buildings.Place;
import com.gt.towers.buildings.Rapid;
import com.gt.towers.buildings.Crystal;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.lists.LinkList;
import com.gt.towers.utils.lists.PlaceList;

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

		b = 0;
		while (b < 15)
		{
			//if (Game.get_instance().get_player().get_arena() >= 1)
			//{
			if (b == 6 || b == 7 || b == 8)
			places.get(b).building = new Crystal(places.get(b), b);
			else
			places.get(b).building = b == 1 || b == 13 ? new Barracks(places.get(b), b, 2) : new Camp(places.get(b), b);
			b ++;
			//}
		}

		createLinks();

		// change start points troop types
		b = 0;
		var tt:Int = TroopType.NONE;
		while (b < 15)
		{
			if (b == 1)
				tt = TroopType.T0;
			else if (b == 13)
				tt = TroopType.T1;
			else
				tt = TroopType.NONE;

			places.get(b).building.createEngine(tt);
			b ++;
		}
		#if java
		var a = new AIEnemy(this);
		#end
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
				if (p == _links.getX(l))
					places.get(p).links.push(places.get(_links.getY(l)));
				else if (p == _links.getY(l))
					places.get(p).links.push(places.get(_links.getX(l)));

				l ++;
			}
			p ++;
		}
	}

	public function getAllTowers(troopType:Int):PlaceList
	{
		if (troopType == TroopType.NONE)
			return places;

		var ret:PlaceList = new PlaceList();
		var placesLen:Int = places.size();
		var p:Int = 0;
		while ( p < placesLen )
		{
			if (places.get(p).building.troopType == troopType)
				ret.push(places.get(p));

			p ++;
		}
		return ret;
	}
}