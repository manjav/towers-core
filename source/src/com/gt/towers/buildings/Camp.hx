package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Camp extends Building
{
	/*public function new(place:Place, index:Int, type:Int = 1)
	{
		super(place, index, type);
	}*/
	
	public override function get_spawnGap():Int
	{
		return 2000;
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