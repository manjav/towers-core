package com.gt.towers.battle.tilemap;
import com.gt.towers.utils.Int2;

/**
 * ...
 * @author Mansour Djawadi
 */
class Tile extends Int2
{
	static private var pool:Array<Tile> = new Array<Tile>();
	static public var counter:Int = 0;
	static public function instantiate(i:Int, j:Int, cost:Float, last:Int) : Tile 
	{
		if( counter > 0 )
		{
			var _t = pool[--counter];
			_t.i = i;
			_t.j = j;
			_t.cost = cost;
			_t.last = last;
			return _t;
		}
		return new Tile(i, j, cost, last); 
	} 

	static public function dispose(tile:Tile) : Void
	{
		if( tile == null || tile.last == -128 )
			return;
		tile.last = -128;
		pool[counter++] = tile; 
	} 
	
	static public function disposeAll(oldPath:Array<Tile>) : Void
	{
		if( oldPath != null )
		{
			var len = oldPath.length;
			while ( len > 0 )
				Tile.dispose(oldPath[--len]);
		}
	}
	
	public var cost:Float;
	public var last:Int;
	public var x:Float;
	public var y:Float;
	public function new(i:Int, j:Int, cost:Float, last:Int) 
	{
		super(i, j);
		this.cost = cost;
		this.last = last;
	}
	
	override public function toString() : String
	{
		return "(i:" + i + ", j:" + j + ", cost:" + cost + ", last:" + last + ", x:" + x + ", y:" + y + ")";
	}
}