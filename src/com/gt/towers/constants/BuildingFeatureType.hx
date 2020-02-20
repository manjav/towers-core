package com.gt.towers.constants;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class BuildingFeatureType 
{
	public function new() {}
	public static var F03_CAPACITY = 3;
	public static var F05_BIRTH_RATE = 5;
	
	public static var F11_TROOP_SPEED:Int = 11;
	public static var F12_TROOP_POWER:Int = 12;
	public static var F13_TROOP_HEALTH:Int = 13;
	public static var F14_TROOP_RUSH_GAP:Int = 14;
	
	public static var F21_DAMAGE:Int = 21;
	public static var F22_DAMAGE_GAP:Int = 22;
	public static var F23_RANGE_RADIUS_MIN:Int = 23;
	public static var F24_RANGE_RADIUS_MAX:Int = 24;
	public static var F25_DAMAGE_AREA:Int = 25;
	
	public static function getRelatedTo(buildingType:Int):IntList
	{
		var ret = new IntList();
		ret.push( F03_CAPACITY );
		ret.push( F05_BIRTH_RATE );
		ret.push( F11_TROOP_SPEED );
		ret.push( F12_TROOP_POWER );
		if( buildingType > BuildingType.B40_CRYSTAL )
		{
			ret.push( F21_DAMAGE );
			ret.push( F22_DAMAGE_GAP );
			//ret.push( F24_RANGE_RADIUS_MAX );
		}
		return ret;
	}
}