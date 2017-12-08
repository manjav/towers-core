package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageRangMaxCalculator 
{
	public var BASE_VALUE:Float = 180;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		if( type < CardTypes.C500 )
			return BASE_VALUE ;
		
		return BASE_VALUE + Math.log(level) * ( type == CardTypes.C502 ? 50 : 30 );
	}

}