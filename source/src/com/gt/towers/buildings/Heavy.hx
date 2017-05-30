package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Heavy extends Building 
{
	public function new(place:Place, index:Int, level:Int = 1)
	{
		super(place, index, level);
		_type = BuildingType.B03_HEAVY;
	}
	
	public override function get_troopSpeed():Int
	{
		return 2500;
	}
	public override function get_troopPower():Float
	{
		return 1.3 + (0.15*level);
	}
	public override function get_spawnGap():Int
	{
		return 2500;
	}
	public override function get_options():IntList
	{
		var ret = new IntList();
		ret.push(BuildingType.UPGRADE);
		ret.push(BuildingType.B00_CAMP);
		return ret;
	}	
}