package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopHealthCalculator 
{
	public static var BASE_VALUE:Float = 1;
	public static function get(type:Int, level:Int):Float 
	{
		if( type > 200 && type < 300 )
			return BASE_VALUE + 0.1 + Math.log(level) * 0.25;
		if( type > 100 && type < 200 )
			return BASE_VALUE + Math.log(level) * 0.12;

		return BASE_VALUE + Math.log(level) * 0.10;	
	}
}