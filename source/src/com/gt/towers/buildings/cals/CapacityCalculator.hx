package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class CapacityCalculator 
{
	public static var BASE_VALUE:Int = 10;
	public static function get(type:Int):Int 
	{
		if ( type < 101 )
			return 8;
			
		return BASE_VALUE;
	}
	
}