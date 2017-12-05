package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopSpeedCalculator 
{
	public static var BASE_VALUE:Int = 4000;
	public static function get(type:Int, level:Int):Int 
	{
		if( type > 100 && type < 200 )
			return Math.round( BASE_VALUE - 1000 - Math.log(level) * 500  * (1 / Building.TIME_SCALE) );
			
		if( type > 200 && type < 400 )//powered and shilded
			return Math.round( BASE_VALUE + 500 - Math.log(level) * 100  * (1 / Building.TIME_SCALE) );

		return Math.round( BASE_VALUE - Math.log(level) * 200  * (1 / Building.TIME_SCALE) );
	}
}