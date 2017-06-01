package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Camp extends Building
{
	public function new(place:Place, index:Int, level:Int = 1)
	{
		super(place, index, level);
		type = BuildingType.B00_CAMP;
	}
	
	public override function get_spawnGap():Int
	{
		return 2000;
	}
	public override function get_options():IntList
	{
		var ret = new IntList();
		ret.push(BuildingType.B01_BARRACKS);
		ret.push(BuildingType.B02_RAPID);
		ret.push(BuildingType.B03_HEAVY);
		ret.push(BuildingType.B04_SNIPER);
		return ret;
	}
}