package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageGapCalculator 
{
	public static var BASE_VALUE:Int = 1200;
	public static function get(type:Int, level:Int):Int 
	{
		return BASE_VALUE;
	}

        //return Math.round( 500 * (1/Building.TIME_SCALE) - Math.log(improveLevel) * 80 +  Math.log(get_level()) * 90 );
}