package com.gt.towers.battle.fieldes;

/**
 * ...
 * @author Mansour Djawadi
 */
class ImageData 
{
	public var name:String;
	public var tx:Float;
	public var ty:Float;
	public var a:Float;
	public var b:Float;	
	public var c:Float;
	public var d:Float;
	public var px:Float;
	public var py:Float;
	
	public function new(name:String, tx:Float, ty:Float, a:Float, b:Float, c:Float, d:Float, px:Float=0, py:Float=0) 
	{
		this.name = name;
		this.tx = tx;
		this.ty = ty;
		this.a = a;
		this.b = b;
		this.c = c;
		this.d = d;
		this.px = px;
		this.py = py;
	}
}