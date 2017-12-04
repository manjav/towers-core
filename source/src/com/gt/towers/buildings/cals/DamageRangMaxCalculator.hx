package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageRangMaxCalculator 
{
	public static var BASE_VALUE:Float = 50;
	public static function get(type:Int, level:Int):Float 
	{
		return BASE_VALUE;
	}
	//        return 180 + Math.round( (Math.log(improveLevel) + Math.log(get_level())) * 32);

}