package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Barracks extends Building 
{
	
	public override function get_spawnGap():Int
	{
		return 2000 - Math.round( ( Math.log(level)*Math.log(level) + 3*(Math.log(improveLevel)) )* 200 );
	}	
}