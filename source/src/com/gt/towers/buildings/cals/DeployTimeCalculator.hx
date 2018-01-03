package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class DeployTimeCalculator 
{
	public var BASE_VALUE:Float = 1;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		if ( CardTypes.get_category( type ) == CardTypes.C200 )
			return  BASE_VALUE + Math.log(level) * 0.07;
			
		if ( CardTypes.get_category( type ) == CardTypes.C300 )
			return  BASE_VALUE + Math.log(level) * 0.025 - 0.2 ;
			
		if ( CardTypes.get_category( type ) == CardTypes.C400 )
			return  BASE_VALUE + Math.log(level) * 0.05 ;
			
		if ( CardTypes.get_category( type ) == CardTypes.C500 )
			return  BASE_VALUE + Math.log(level) * 0.2;
			
		return  BASE_VALUE + Math.log(level) * 0.05 ;
	}
}