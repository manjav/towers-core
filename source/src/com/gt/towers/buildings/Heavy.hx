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
		return 2500;
	}
	public override function get_troopPower():Float
	{
		return 1.2 + ( Math.log(level) + 2*(Math.log(improveLevel)) ) * 0.5;
	}
	public override function get_spawnGap():Int
	{
		return 2500;
	}
}