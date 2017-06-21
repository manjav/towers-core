package com.gt.towers.constants;
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
	
	private static var _all:IntIntMap;
	public static function getAll():IntIntMap
	{
		if ( _all == null )
		{
			_all = new IntIntMap();
		
			_all.set( F01_CAPACITY, 0 );
			_all.set( F02_BIRTH_RATE, 0 );
			
			_all.set( F11_TROOP_SPEED, 0 );
			_all.set( F12_TROOP_POWER, 0 );
			
			_all.set( F21_DAMAGE, 0 );
			_all.set( F22_FIRE_SPEED, 0 );
			_all.set( F23_RANGE, 0 );
		//	_all.set( F24_DAMAGE_RANGE, 0 );
		}
	
		return _all;
	}
}