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
		return  BASE_VALUE + Math.log(level) * 0.05 ;
	}
}