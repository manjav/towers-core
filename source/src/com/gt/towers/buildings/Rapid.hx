package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Rapid extends Building 
{
	public function new(place:Place, index:Int, level:Int = 1)
	{
		super(place, index, level);
		type = BuildingType.B02_RAPID;
	}
	
	public override function get_troopSpeed():Int
	{
		return 2000 - Math.round( Math.log(level) * 200);
	}
	public override function get_options():IntList
	{
		var ret = new IntList();
		ret.push(BuildingType.UPGRADE);
		ret.push(BuildingType.B00_CAMP);
		return ret;
	}	
}