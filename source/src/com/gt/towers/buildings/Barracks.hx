package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Barracks extends Building 
{
	public function new(place:Place, index:Int, level:Int = 1)
	{
		super(place, index, level);
		type = BuildingType.B01_BARRACKS;
	}
	
	public override function get_spawnGap():Int
	{
		return 1700 - Math.round( Math.log(level) * 280 );
	}
	public override function get_options():IntList
	{
		var ret = new IntList();
		ret.push(BuildingType.UPGRADE);
		ret.push(BuildingType.B00_CAMP);
		return ret;
	}	
}