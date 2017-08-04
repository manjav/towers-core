package com.gt.towers.constants;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class BuildingFeatureType 
{

	public function new() {}
	
	public static var F01_CAPACITY:Int = 1;
	public static var F02_BIRTH_RATE = 2;
	
	public static var F11_TROOP_SPEED:Int = 11;
	public static var F12_TROOP_POWER:Int = 12;
	
	public static var F21_DAMAGE:Int = 21;
	public static var F22_FIRE_SPEED:Int = 22;
	public static var F23_RANGE:Int = 23;
	public static var F24_DAMAGE_RANGE:Int = 24;
	
	private static var _all:IntList;
	public static function getAll():IntList
	{
		if ( _all == null )
		{
			_all = new IntList();
		
			_all.push( F01_CAPACITY );
			_all.push( F02_BIRTH_RATE );
			
			_all.push( F11_TROOP_SPEED );
			_all.push( F12_TROOP_POWER );
			
			_all.push( F21_DAMAGE );
			_all.push( F22_FIRE_SPEED );
			_all.push( F23_RANGE );
		//	_all.push( F24_DAMAGE_RANGE );
		}
	
		return _all;
	}
	
	public static function getRelatedTo(buildingType:Int):IntList
	{
		var ret = new IntList();
		ret.push( F01_CAPACITY );
		ret.push( F02_BIRTH_RATE );
		ret.push( F11_TROOP_SPEED );
		ret.push( F12_TROOP_POWER );
		if ( buildingType > BuildingType.B40_CRYSTAL )
		{
			ret.push( F21_DAMAGE );
			ret.push( F22_FIRE_SPEED );
			ret.push( F23_RANGE );
		}
		return ret;
	}
	
	public static function getChangables(buildingType:Int):IntList
	{
		var ret = new IntList();
		var cate = BuildingType.get_category(buildingType);
		if ( cate == BuildingType.B10_BARRACKS )
			ret.push( F02_BIRTH_RATE );
		else if ( cate == BuildingType.B20_RAPID )
			ret.push( F11_TROOP_SPEED );
		else if ( cate == BuildingType.B30_HEAVY )
			ret.push( F12_TROOP_POWER );
		else if ( cate == BuildingType.B40_CRYSTAL )
		{
			ret.push( F21_DAMAGE );
			ret.push( F22_FIRE_SPEED );
			ret.push( F23_RANGE );
		}
		return ret;
	}
}