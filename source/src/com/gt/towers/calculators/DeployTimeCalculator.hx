package com.gt.towers.calculators;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class DeployTimeCalculator 
{
	public var BASE_VALUE:Int = 1000;
	public function new () {}
	public function get(type:Int):Int 
	{
		if ( CardTypes.get_category( type ) == CardTypes.C200 )
			return  Math.floor(BASE_VALUE * 0.5);
			
		if ( CardTypes.get_category( type ) == CardTypes.C300 )
			return  BASE_VALUE ;
			
		if ( CardTypes.get_category( type ) == CardTypes.C400 )
			return  BASE_VALUE ;
			
		if ( CardTypes.get_category( type ) == CardTypes.C500 )
			return  BASE_VALUE * 2;
			
		return  BASE_VALUE ;
	}
}