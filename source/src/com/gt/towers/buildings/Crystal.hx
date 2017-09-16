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
		return 1.05 + ( Math.log(get_level()) * 0.7 + Math.log(improveLevel) ) * 0.3;
	}
	public override function get_damageGap():Int
	{
		return 850 - Math.floor(Math.log(improveLevel) * 1.5 +  Math.log(get_level()) * 0.5 ) * 200;
	}
	public override function get_damageRadius():Float
	{
		return 180 + Math.round( (Math.log(improveLevel) + Math.log(get_level())) * 30);
	}
}