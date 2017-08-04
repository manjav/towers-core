package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Crystal extends Building 
{

	public override function get_damage():Float
	{
		return 1.01 + (Math.log(improveLevel) +  Math.log(level)) / 3;
	}
	public override function get_damageGap():Int
	{
		return 800 - Math.round(  3*(Math.log(improveLevel) +  Math.log(level) ) * 100 );
	}
	public override function get_damageRadius():Float
	{
		return 60 + Math.round( (Math.log(improveLevel) + Math.log(level)) * 10);
	}
}