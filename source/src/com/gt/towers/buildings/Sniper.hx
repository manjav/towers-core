package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Sniper extends Building 
{
	public function new(place:Place, index:Int, level:Int=1) 
	{
		super(place, index, level);
		type = BuildingType.B04_SNIPER;
	}
	
	public override function get_damage():Float
	{
		return 1.01 + Math.log(level) / 3;
	}
	public override function get_damageGap():Float
	{
		return 800 - Math.round( Math.log(level) * 200);
	}
	public override function get_damageRadius():Float
	{
		return 50 + Math.round( Math.log(level) * 10);
	}
	
	public override function get_options():IntList
	{
		var ret = new IntList();
		ret.push(BuildingType.UPGRADE);
		ret.push(BuildingType.B00_CAMP);
		return ret;
	}
}