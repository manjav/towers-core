package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class ElixirSizeCalculator 
{
	public var BASE_VALUE:Int = 5;
	public function new () {}
	public function get(type:Int):Float 
	{
		return  BASE_VALUE ;
	}
}