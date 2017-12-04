package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopSpeedCalculator 
{
	public static var BASE_VALUE:Int = 3000;
	public static function get(type:Int):Int 
	{
		return Math.round(BASE_VALUE *  (1/Building.TIME_SCALE));
	}
}