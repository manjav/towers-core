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
		return 1.1 + ( Math.log(level) + 2*(Math.log(improveLevel)) ) * 0.5;
	}
	public override function get_damageGap():Int
	{
		return 800 - Math.floor(Math.log(improveLevel) * 1.5 +  Math.log(level) * 0.5 ) * 180;
	}
	public override function get_damageRadius():Float
	{
		return 60 + Math.round( (Math.log(improveLevel) + Math.log(level)) * 10);
	}
}