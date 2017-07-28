package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Rapid extends Building 
{
	/*public function new(place:Place, index:Int, level:Int = 1)
	{
		super(place, index, level);
		type = BuildingType.B21_RAPID;
	}*/
	
	public override function get_troopSpeed():Int
	{
		return 2000 - Math.round( ( Math.log(level)*Math.log(level) + 3*(Math.log(improveLevel)) ) * 200);
	}
}