package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopHealthCalculator 
{
	public var BASE_VALUE:Float = 1;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		if( CardTypes.get_category( type ) == CardTypes.C400 )
			return BASE_VALUE + 0.1 + Math.log(level) * 0.25;
			
		if ( type % 100 == 1 )
			return BASE_VALUE;
		
		if ( CardTypes.get_category( type ) == CardTypes.C200 )// rapids
			return BASE_VALUE - Math.log(type-200 + 1) * 0.5;
		/*	
		if( CardTypes.get_category( type ) == CardTypes.C200 ) 
			return BASE_VALUE + Math.log(level) * 0.12;
		*/

		return BASE_VALUE + Math.log(level) * 0.10;	
	}
}