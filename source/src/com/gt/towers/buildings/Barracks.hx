package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Barracks extends Building 
{
	/*public function new(place:Place, index:Int, level:Int = 1)
	{
		super(place, index, level);
		type = BuildingType.B11_BARRACKS;
	}*/
	
	public override function get_spawnGap():Int
	{
		return 1650 - Math.round( ( Math.log(level) + Math.log(improveLevel) )* 300 );
	}
	

	
}