package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Barracks extends Building 
{
	
	/*public override function get_spawnGap():Int
	{
		return 2000 - Math.round( ( Math.log(get_level())*Math.log(get_level()) + 3*(Math.log(improveLevel)) )* 200 );
	}*/
	
	public override function get_birthRate():Float
	{
		return Building.BASE_BIRTH_RATE + Math.log(get_level()) * 0.10 + Math.log(improveLevel) * 0.10;
	}
}