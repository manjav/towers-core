package com.gt.towers.utils;
import com.gt.towers.buildings.Place;
import com.gt.towers.utils.lists.PlaceList;

/**
 * ...
 * @author Mansour Djawadi
 */
class PathFinder
{
	static private var closedList:PlaceList;


	/**
	 * Use 'Breadth First Search' (BFS) for finding path of troops
	 */
	public static function find(source:Place, destination:Place, all:PlaceList):PlaceList
	{
		if (source == destination)
			return null;

		var p:Int = 0;
		while (p < all.size())
		{
			all.get(p).owner = null;
			p++;
		}
		
		closedList = new PlaceList();
		if (!sreach(source, destination))
			return null;

		// Create return path
		var ret:PlaceList = new PlaceList();
		var last:Place = closedList.get(closedList.size()-1);
		do
		{
			ret.push(last);
			last = last.owner;
		}
		while (last != null && last != source);
		ret.reverse();

		//trace("Path found:", ret.length);
		return ret;
	}

	private static function sreach(source:Place, destination:Place):Bool
	{
		// Creating our Open List
		var openList:PlaceList = new PlaceList();
		// Adding our starting point to Open List
		openList.push(source);

		// Loop while openList contains some data.
		while (openList.size() > 0)
		{
			// Remove and get the first element from openList.
			var node:Place = openList.shift();

			// Check if tower is Destination
			if (node == destination)
			{
				closedList.push(destination);
				return true;
			}

			var numLinks:Int = node.links.size();
			var i:Int = 0;
			// Add each neighbor to the end of our openList
			while (i < numLinks)
			{
				if ((node.links.get(i) != source && node.links.get(i).building.troopType == source.building.troopType) || node.links.get(i) == destination)
				{
					//trace(node.links.get(i).name, "added to", node.name )
					if (node.links.get(i).owner == null)
					{
						node.links.get(i).owner = node;
						openList.push(node.links.get(i));
					}
				}
				i ++;
			}

			// Add current tower to closedList
			closedList.push(node);
			//trace("closedList", n.index);
		}
		return false;
	}
}