package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Heavy extends Building 
{
	#if flash
	public override function get_troopName () : String
	{
		return "corruptedknight-move-";
	}
	public override function get_troopSpriteCount () : Int
	{
		return 23;
	}
	#end
	
	public override function get_troopSpeed():Int
	{
		return Math.round(2900 * (1/Building.TIME_SCALE));
	}
	public override function get_troopPower():Float
	{
		return 1.1 + ( Math.log(get_level()) * 0.7 + Math.log(improveLevel) ) * 0.3;
	}
	public override function get_birthRate():Float
	{
		return 0.2 * Building.TIME_SCALE;
	}
}