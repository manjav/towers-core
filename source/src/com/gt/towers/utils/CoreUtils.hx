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
	
	static var GAP:Float = 50;
	static public function getXPosition(max:Int, i:Int, x:Float) : Float
	{
		if( max == 2 )
		{
			return switch ( i )
			{
				case 0: x - GAP;
				case 1: x + GAP;
				default : x;
			}
		}
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
		if( max == 2 )
		{
			return switch ( i )
			{
				case 0: y - GAP;
				case 1: y + GAP;
				default : y;
			}
		}
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
	
	static public function getRadString(rad:Float) : String
	{
		var dir:String;
		if( rad >= Math.PI * -0.125 && rad < Math.PI * 0.125 )
			dir = "000";
		else if( rad <= Math.PI * -0.125 && rad > Math.PI * -0.375 )
			dir = "-45";
		else if( rad <= Math.PI * -0.375 && rad > Math.PI * -0.625 )
			dir = "-90";
		else if( rad <= Math.PI * -0.625 && rad > Math.PI * -0.875 )
			dir = "-35";
		else if( rad >= Math.PI * 0.125 && rad < Math.PI * 0.375 )
			dir = "045";
		else if( rad >= Math.PI * 0.375 && rad < Math.PI * 0.625 )
			dir = "090";
		else if( rad >= Math.PI * 0.625 && rad < Math.PI * 0.875 )
			dir = "135";
		else
			dir = "180";
		
		return dir;
	}
}