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
		_type = BuildingType.B01_BARRACKS;
	}
	
	/*public override function get_troopSpeed():Int
	{
		return 800 - ((level-1) * 25);
	}*/
	public override function get_spawnGap():Int
	{
		return 1700 - ((level-1) * 130);
	}
	public override function get_options():IntList
	{
		var ret = new IntList();
		ret.push(BuildingType.UPGRADE);
		ret.push(BuildingType.B00_CAMP);
		return ret;
	}	
}