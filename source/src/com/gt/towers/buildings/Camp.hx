package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Camp extends Building
{
	
	/*#if flash
	public override function get_troopName () : String
	{
		return "dwarfinf-move-";
	}
	#end*/
	
	public override function get_birthRate():Float
	{
		return 0.2 * Building.TIME_SCALE;
	}
	public override function get_capacity():Int
	{
		return 10;
	}
	public override function get_options():IntList
	{
		var ret = new IntList();
		ret.push(BuildingType.B11_BARRACKS);
		ret.push(BuildingType.B21_RAPID);
		ret.push(BuildingType.B31_HEAVY);
		ret.push(BuildingType.B41_CRYSTAL);
		return ret;
	}
}