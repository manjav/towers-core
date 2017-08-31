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
		return 2500;
	}
	
	/*public override function get_birthRate():Float
	{
		return 0.22;
	}*/
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