package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Rapid extends Building 
{
	
	/*#if flash
	public override function get_troopName () : String
	{
		return "darkelfassassin-move-";
	}
	public override function get_troopSpriteCount () : Int
	{
		return 10;
	}
	#end*/
	
	public override function get_troopSpeed():Int
	{
		return Math.round( 2000 * (1/Building.TIME_SCALE) - ( Math.log(get_level()) * Math.log(get_level()) * 0.8 + 3 * (Math.log(improveLevel)) ) * 180);
	}
}