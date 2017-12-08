package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopSpeedCalculator 
{
	public var BASE_VALUE:Int = 4000;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		if( CardTypes.get_category( type ) == CardTypes.C200 )// rapids
			return BASE_VALUE - 1800 - Math.log(level) * 300 ;
			
		if ( type % 100 == 1 )
			return BASE_VALUE;
			
		if( type > 300 && type < 500 )// powered and shielded
			return BASE_VALUE + 500 - Math.log(level) * 100;

		return BASE_VALUE - Math.log(level) * 200 ;
	}
}