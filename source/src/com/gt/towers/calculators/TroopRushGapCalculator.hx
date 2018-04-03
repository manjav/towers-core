package com.gt.towers.calculators;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopRushGapCalculator 
{
	public var BASE_VALUE:Float = 450;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		//if( CardTypes.get_category( type ) == CardTypes.C200 )// rapids
		//	return BASE_VALUE - 50 - Math.log(level) * 20 ;

		return BASE_VALUE ;
	}
}