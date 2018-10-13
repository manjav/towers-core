package com.gt.towers.battle;

/**
 * ...
 * @author Mansour Djawadi
 */
class Tile 
{
	public var i:Int;
	public var j:Int;
	public var cost:Int;
	public var last:Int;
	public function new(i:Int, j:Int, cost:Int, last:Int) 
	{
		this.i = i;
		this.j = j;
		this.cost = cost;
		this.last = last;
	}
	
	public function toString() :String
	{
		return "(i:" + i + ", j:" + j + ", cost:" + cost + ", last:" + last + ")";
	}
}