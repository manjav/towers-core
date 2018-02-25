package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Camp extends Building
{
	
	public override function get_capacity():Int
	{
		return 10;
	}
	public override function get_troopSpeed():Int
	{
		return Math.round(3000 *  (1 / Building.TIME_SCALE));
	}
	
	
	#if flash
	public override function get_troopName () : String
	{
		return "0/";
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
	#end
}