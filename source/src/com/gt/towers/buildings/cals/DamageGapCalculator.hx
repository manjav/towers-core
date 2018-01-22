package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageGapCalculator 
{
	public var BASE_VALUE:Float = 1300;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		if( type < CardTypes.C500 )
			return BASE_VALUE ;
		
       return BASE_VALUE - Math.log(level) * ( type == CardTypes.C504 ? 120 : 80 );
	}

}