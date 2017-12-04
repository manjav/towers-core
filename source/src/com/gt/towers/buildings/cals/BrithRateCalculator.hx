package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class BrithRateCalculator 
{
	public static var BASE_VALUE:Float = 0.15;
	public static function get(type:Int, level:Int):Float 
	{
		if( type > 400 && type < 500 ) // gen
			return BASE_VALUE + Math.log(level) * ( 10 / (200 - type) ) * Building.TIME_SCALE;
		if( type > 200 && type < 400 ) // powered and shilded
			return BASE_VALUE - 0.02 + Math.log(level) * Math.log(level) * 0.05 * Building.TIME_SCALE;

		return BASE_VALUE + Math.log(level) * 0.05 * Building.TIME_SCALE;
	}
}