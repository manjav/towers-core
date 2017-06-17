package com.gt.towers.constants;
import com.gt.towers.buildings.Barracks;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Camp;
import com.gt.towers.buildings.Heavy;
import com.gt.towers.buildings.Place;
import com.gt.towers.buildings.Rapid;
import com.gt.towers.buildings.Crystal;

/**
 * ...
 * @author Mansour Djawadi
 */

class BuildingType
{
	public static var NONE:Int = -1;
	
	public static var B00_CAMP:Int = 0;
	
	public static var B10_BARRACKS:Int = 10;
	public static var B11_BARRACKS:Int = 11;
	public static var B12_BARRACKS:Int = 12;
	public static var B13_BARRACKS:Int = 13;
	
	public static var B20_RAPID:Int = 20;
	public static var B21_RAPID:Int = 21;
	public static var B22_RAPID:Int = 22;
	public static var B23_RAPID:Int = 23;
	
	public static var B30_HEAVY:Int = 30;
	public static var B31_HEAVY:Int = 31;
	public static var B32_HEAVY:Int = 32;
	public static var B33_HEAVY:Int = 33;
	
	public static var B40_CRYSTAL:Int = 40;
	public static var B41_CRYSTAL:Int = 41;
	public static var B42_CRYSTAL:Int = 42;
	public static var B43_CRYSTAL:Int = 43;
	public static var B44_CRYSTAL:Int = 44;
	
	//public static var NUM_WEAPONS:Int = 5;

	public function new(){}
	
	public static function get_category(type:Int):Int
	{
		return Math.floor(type / 10) * 10;
	}
		
	public static function instantiate(type:Int, place:Place, index:Int):Building
	{
		var category = get_category( type );
		
		if (category == BuildingType.B00_CAMP)
			return new Camp(place, index, type);
		else if (category == BuildingType.B10_BARRACKS)
			return new Barracks(place, index, type);
		else if (category == BuildingType.B20_RAPID)
			return new Rapid(place, index, type);
		else if (category == BuildingType.B30_HEAVY)
			return new Heavy(place, index, type);
		else if (category == BuildingType.B40_CRYSTAL)
			return new Crystal(place, index, type);
		else 
			return null;
	}
}