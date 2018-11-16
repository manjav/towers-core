package com.gt.towers.battle.tilemap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Tile 
{
	public var i:Int;
	public var j:Int;
	public var cost:Float;
	public var last:Int;
	public var x:Float;
	public var y:Float;
	public function new(i:Int, j:Int, cost:Float, last:Int) 
	{
		this.i = i;
		this.j = j;
		this.cost = cost;
		this.last = last;
	}
	
	public function toString() : String
	{
		return "(i:" + i + ", j:" + j + ", cost:" + cost + ", last:" + last + ", x:" + x + ", y:" + y + ")";
	}
}