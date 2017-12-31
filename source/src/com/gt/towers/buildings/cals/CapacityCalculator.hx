package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class CapacityCalculator 
{
	public var BASE_VALUE:Float = 10;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		if ( type < 101 )
			return 7;
			
		if ( CardTypes.get_category( type ) == CardTypes.C300 )
			if ( type < 304)
				return BASE_VALUE - 3;
			else if ( type < 307 )
				return BASE_VALUE - 5;
			else if ( type < 309 )
				return BASE_VALUE - 6;
			else if ( type == 309 )
				return BASE_VALUE - 7
			
		return BASE_VALUE + ( level - 1 ) * 2;// + Math.floor(level / 3);
	}
	
}