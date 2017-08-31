package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Heavy extends Building 
{

	public override function get_troopSpeed():Int
	{
		return 2900;
	}
	public override function get_troopPower():Float
	{
		return 1.1 + ( Math.log(level) * 0.7 + Math.log(improveLevel) ) * 0.3;
	}
	public override function get_spawnGap():Int
	{
		return 2500;
	}
	
	/*public override function get_birthRate():Float
	{
		return 0.2;
	}*/

}