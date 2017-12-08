package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageRangMinCalculator 
{
	public var BASE_VALUE:Float = 80;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		return BASE_VALUE;
	}
}