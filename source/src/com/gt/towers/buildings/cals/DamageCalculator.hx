package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageCalculator
{
	public static var BASE_VALUE:Float = 1;
	public static function get(type:Int, level:Int):Float 
	{
		return BASE_VALUE;
	}

      //  return 1.05 + ( Math.log(get_level()) * 0.75 + Math.log(improveLevel) ) * 0.35;

}