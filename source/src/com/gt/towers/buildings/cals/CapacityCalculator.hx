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
			
		return BASE_VALUE + ( level - 1 ) * 2;// + Math.floor(level / 3);
	}
	
}