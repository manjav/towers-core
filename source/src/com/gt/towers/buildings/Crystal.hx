package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Crystal extends Building 
{
	public function new(place:Place, index:Int, level:Int=1) 
	{
		super(place, index, level);
		type = BuildingType.B04_CRYSTAL;
	}
	
	public override function get_damage():Float
	{
		return 1.01 + Math.log(level) / 3;
	}
	public override function get_damageGap():Float
	{
		return 700 - Math.round( Math.log(level) * 400 );
	}
	public override function get_damageRadius():Float
	{
		return 60 + Math.round( Math.log(level) * 20);
	}
	
	public override function get_options():IntList
	{
		var ret = new IntList();
		if (level < 4 )
			ret.push(BuildingType.UPGRADE);
		ret.push(BuildingType.B00_CAMP);
		return ret;
	}
}