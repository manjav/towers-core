package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopRushGapCalculator 
{
	public static var BASE_VALUE:Int = 250;
	public static function get(type:Int, level:Int):Int 
	{
		return Math.round(BASE_VALUE * (1/Building.TIME_SCALE));
	}
}