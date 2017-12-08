package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageGapCalculator 
{
	public var BASE_VALUE:Float = 1200;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		return BASE_VALUE;
	}

        //return Math.round( 500 * (1/Building.TIME_SCALE) - Math.log(improveLevel) * 80 +  Math.log(get_level()) * 90 );
}