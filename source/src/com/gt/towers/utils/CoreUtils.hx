package com.gt.towers.utils;
import com.gt.towers.battle.units.Unit;

/**
 * ...
 * @author Mansour Djawadi ...
 */
class CoreUtils 
{
	public function new(){}
	
	static public function round(value:Dynamic) : Int
	{
		if( value < 100 )
			return Math.round(value);
		if( value < 1000 )
			return Math.round(value / 10) * 10;
		if( value < 10000 )
			return Math.round(value / 100) * 100;
		if( value < 100000 )
			return Math.round(value / 1000) * 1000;
		if( value < 1000000 )
			return Math.round(value / 10000) * 10000;
		return Math.round(value / 100000) * 100000;
	}
	
	static public function floor(value:Dynamic) : Int
	{
		if( value < 100 )
			return Math.floor(value);
		if( value < 1000 )
			return Math.floor(value / 10) * 10;
		if( value < 10000 )
			return Math.floor(value / 100) * 100;
		if( value < 100000 )
			return Math.floor(value / 1000) * 1000;
		if( value < 1000000 )
			return Math.floor(value / 10000) * 10000;
		return Math.floor(value / 100000) * 100000;
	}
	
	static public function getDistance(source:Unit, destination:Unit) : Float
	{
		return Math.sqrt(Math.pow(source.x - destination.x, 2) + Math.pow((source.y - destination.y) * 1.4285, 2) );
	}
}