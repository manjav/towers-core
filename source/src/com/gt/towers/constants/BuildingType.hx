package com.gt.towers.constants;
import com.gt.towers.buildings.Barracks;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Camp;
import com.gt.towers.buildings.Heavy;
import com.gt.towers.buildings.Place;
import com.gt.towers.buildings.Rapid;
import com.gt.towers.buildings.Sniper;

/**
 * ...
 * @author Mansour Djawadi
 */

class BuildingType
{
	public static var UPGRADE:Int = -10;
	
	public static var NONE:Int = -1;
	
	public static var B00_CAMP:Int = 0;
	public static var B01_BARRACKS:Int = 1;
	public static var B02_RAPID:Int = 2;
	public static var B03_HEAVY:Int = 3;
	public static var B04_SNIPER:Int = 4;
	
	public static var NUM_WEAPONS:Int = 5;

	public function new(){}
	
	public static function instantiate(type:Int, place:Place, index:Int):Building
	{
		if (type == BuildingType.B00_CAMP)
			return new Camp(place, index);
		else if (type == BuildingType.B01_BARRACKS)
			return new Barracks(place, index);
		else if (type == BuildingType.B02_RAPID)
			return new Rapid(place, index);
		else if (type == BuildingType.B03_HEAVY)
			return new Heavy(place, index);
		else if (type == BuildingType.B04_SNIPER)
			return new Sniper(place, index);
		else 
			return null;
	}
}