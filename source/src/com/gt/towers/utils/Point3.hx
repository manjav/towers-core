package com.gt.towers.utils;

/**
 * ...
 * @author Mansour Djawadi
 */
class Point3 
{
	public var x:Float;
	public var y:Float;
	public var z:Float;

	public function new(x:Float, y:Float, z:Float = 0) 
	{
		this.x = x;
		this.y = y;
		this.z = z;
	}
	
	public function scale(value:Float) : Point3
	{
		this.x *= value;
		this.y *= value;
		this.z *= value;
		return this;
	}

	public function equals(x:Float, y:Float, z:Float) : Bool
	{
		return this.x == x && this.y == y && this.z == z;
	}
	
	public function equalsPoint(point:Point3) : Bool
	{
		return equals(point.x, point.y, point.z);
	}
	
	public function toString() : String
	{
		return "( x:" + x + ", y:" + y + ", z:" + z + " )";
	}
}