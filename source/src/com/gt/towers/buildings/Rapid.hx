package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Rapid extends Building 
{
	public override function get_troopSpeed():Int
	{
		return Math.round( 2000 * (1/timeScale) - ( Math.log(get_level()) * Math.log(get_level()) * 0.8 + 3 * (Math.log(improveLevel)) ) * 180);
	}
}