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
			return BASE_VALUE - 2000 - Math.log(level) * 100 - Math.log(type-200) * 100;
			
		if ( type % 100 == 1 )
			return BASE_VALUE;
			
		if( type > 300 && type < 500 )// powered and shielded
			return BASE_VALUE + 500 - Math.log(level) * 100;

		return BASE_VALUE - Math.log(level) * 200 ;
		
		/*return switch( type )
		{
		case 201 : BASE_VALUE - 2000 - Math.log(level) * 100;
		case 202 : BASE_VALUE - 2040 - Math.log(level) * 120;
		default : BASE_VALUE - Math.log(level) * 200;
		}*/
	}
}