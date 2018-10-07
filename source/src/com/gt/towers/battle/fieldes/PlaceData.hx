package com.gt.towers.battle.fieldes;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class PlaceData 
{
	public var index:Int;
	public var x:Float;
	public var y:Float;
	public var type:Int;
	public var side:Int;

	public function new(index:Int, x:Float, y:Float, type:Int, side:Int) 
	{
		this.index = index;
		this.x = x;
		this.y = y;
		this.type = type;
		this.side = side;
	}
}