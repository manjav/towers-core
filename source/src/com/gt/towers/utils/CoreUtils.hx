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
	
	static public function getDistance(sx:Float, sy:Float, dx:Float, dy:Float) : Float
	{
		return Math.sqrt(Math.pow(sx - dx, 2) + Math.pow((sy - dy) * 1.4285, 2) );
	}
	
	static var GAP:Float = 70;
	static public function getXPosition(max:Int, i:Int, x:Float) : Float
	{
		if( max == 3 )
		{
			return switch ( i )
			{
				case 0: x;
				case 1: x - GAP;
				case 2: x + GAP;
				default : x;
			}
		}
		return x;
	}
	
	static public function getYPosition(max:Int, i:Int, y:Float) : Float
	{
		if( max == 3 )
		{
			return switch ( i )
			{
				case 0: y - GAP;
				case 1: y + GAP;
				case 2: y + GAP;
				default : y;
			}
		}
		return y;
	}
}