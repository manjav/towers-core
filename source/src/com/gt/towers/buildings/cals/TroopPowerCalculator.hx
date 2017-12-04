package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopPowerCalculator 
{
	public static var BASE_VALUE:Float = 1;
	public static function get(type:Int, level:Int):Float 
	{
		if( type > 300 && type < 400 )
			return BASE_VALUE + 0.1 + Math.log(level) * 0.25;
		if( type > 100 && type < 200 )
			return BASE_VALUE + Math.log(level) * 0.15;

		return BASE_VALUE + Math.log(level) * 0.10;
	}
}