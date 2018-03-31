package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageRangMaxCalculator 
{
	public var BASE_VALUE:Float = 370;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		return switch( type )
		{
			/*case 501 : 135;
			case 502 : 180;
			case 503 : 255;
			case 504 : 160;*/
		
			default : 370;
		}
	}
}