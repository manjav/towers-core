package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class CapacityCalculator 
{
	public static var BASE_VALUE:Int = 10;
	public static function get(type:Int, level:Int):Int 
	{
		if ( type < 101 )
			return 7;
			
		return BASE_VALUE + Math.floor(level / 3);
	}
	
}