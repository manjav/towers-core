package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class BrithRateCalculator 
{
	public var BASE_VALUE:Float = 0.15;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		if( CardTypes.get_category( type ) == CardTypes.C100 ) // gen
			return ( BASE_VALUE + 0.05 + Math.log(level) * 0.1 + type % 400 * 0.02 );
			
		if ( type % 100 == 1 )
			return BASE_VALUE;
			
		if( type > 300 && type < 500 ) // powered and shielded
			return ( BASE_VALUE - 0.01 + Math.log(level) * Math.log(level) * 0.05 );

		return  BASE_VALUE + Math.log(level) * 0.05 ;
	}
}