package com.gt.towers.battle.tilemap;

/**
* ...
* @author Mansour Djawadi
*/
class TileMap
{
	static public var STATE_EMPTY:Int = 0;
	static public var STATE_OCCUPIED:Int = 0xFF0000;
	static public var STATE_TARGET:Int = 0x00FF00;
	static public var STATE_START:Int = 0xFFFF00;

	public var width:Int = 30;
	public var height:Int = 40;
	public var tileWidth:Int;
	public var tileHeight:Int;
	var map:Array<Array<Int>>;
	var target:Tile;
	public function new() 
	{
		tileWidth = Math.floor( BattleField.WIDTH / width );
		tileHeight = Math.floor( BattleField.HEIGHT / height );
		
		map = new Array<Array<Int>>();
		var i:Int = 0;
		var j:Int = 0;
		while ( i < width )
		{
			map[i] = new Array<Int>();
			j = 0;
			while ( j < height )
			{
				map[i][j] = 0;
				j ++;
			}
			i ++;
		}
	}
	
	public function set(i:Int, j:Int, value:Int) : Void
	{
		map[i][j] = value;
	}
	public function get(i:Int, j:Int) : Int
	{
		return map[i][j];
	}

	public function findPath(destI:Int, destJ:Int, sourceI:Int, sourceJ:Int, removeWrongs:Bool = true) : Array<Tile>
	{
		set(destI, destJ, STATE_START);
		set(sourceI, sourceJ, STATE_TARGET);
		
		var queue:Array<Tile> = new Array<Tile>();
		queue.push(new Tile(destI, destJ, 0, 0));
		//run recursive function to find the shortest path
		checkQueue(0, 1, queue);
		
		if( !removeWrongs )
			return queue;
		
		// remove wrong ways
		var ret:Array<Tile> = new Array<Tile>();
		target.x = target.i * tileWidth + tileWidth * 0.5;
		target.y = target.j * tileHeight + tileHeight * 0.5;
		ret.push(target);
		while ( true )
		{
			var last:Int = ret[ret.length - 1].last;
			queue[last].x = queue[last].i * tileWidth + tileWidth * 0.5;
			queue[last].y = queue[last].j * tileHeight + tileHeight * 0.5;
			ret.push(queue[last]);
			if( last == 0 )
				break;
		}
		set(destI, destJ, STATE_EMPTY);
		set(sourceI, sourceJ, STATE_EMPTY);
		target = null;
		return ret;
	}

	private function checkQueue( startIndex:Int, cost:Int, queue:Array<Tile> ) : Void
	{
		var lastQueueLength:Int = queue.length;
		var i:Int = startIndex;
		
		//check neigbours of the queue element
		while ( i < lastQueueLength )
		{
			checkTile(queue[i].i,		queue[i].j - 1, cost + 0.00, i, queue); // top
			checkTile(queue[i].i + 1,	queue[i].j - 1, cost + 0.42, i, queue); // top-right
			checkTile(queue[i].i + 1,	queue[i].j,		cost + 0.00, i, queue); // right
			checkTile(queue[i].i + 1,	queue[i].j + 1, cost + 0.42, i, queue); // right-bottom
			checkTile(queue[i].i,		queue[i].j + 1, cost + 0.00, i, queue); // bottom
			checkTile(queue[i].i - 1,	queue[i].j + 1, cost + 0.42, i, queue); // left-bottom
			checkTile(queue[i].i - 1,	queue[i].j, 	cost + 0.00, i, queue); // left
			checkTile(queue[i].i - 1,	queue[i].j - 1,	cost + 0.42, i, queue); // left-top
			
			i ++;
		}
		if( target == null )
			checkQueue(lastQueueLength, cost + 1, queue);
	}
	
	public function checkTile(i:Int, j:Int, cost:Float, last:Int, queue:Array<Tile>) : Void
	{
		if( i < 0 || j < 0 || i >= width || j >= height || map[i][j] == STATE_OCCUPIED )
			return;
		
		//if this coordinate is the start finish algorythm as the shortest path was just found
		if( map[i][j] == STATE_TARGET )
		{
			if( target == null || target.cost > cost )
			{
				target = new Tile(i, j, cost, last);
				queue.push(target);
			}
			return;
		}
		
		var coordinate = new Tile(i, j, cost, last);
		if( canBeAddedToQueue(coordinate, queue) )
			queue.push(coordinate);
	}

	/**
	 * if a coordinate already exists in the queue  and has higher coordinate it won't be added. but if it has lower coordinate it will replace the one in the queue
	 * @param	coordinate
	 * @param	queue
	 * @return
	 */
	private function canBeAddedToQueue(coordinate:Tile, queue:Array<Tile>) : Bool
	{
		var i:Int = queue.length - 1;
		while ( i >= 0 )
		{
			if( coordinate.i == queue[i].i && coordinate.j == queue[i].j )
			{
				if( coordinate.cost >= queue[i].cost )
					return false;
				
				queue.splice(i, 1);
				return true;
			}
			i --;
		}
		return true;
	}
	
	public function getTile(x:Float, y:Float) : Tile
	{
		if( x < 0 || y < 0 || x > BattleField.WIDTH || y > BattleField.HEIGHT )
			return null;
		var t:Tile = new Tile(Math.floor(x / tileWidth), Math.floor(y / tileHeight), 0, 0);
		return t;
	}
	
	public function occupy(x:Float, y:Float, width:Float, height:Float) : Void
	{
		var from = getTile(x, y);
		var to = getTile(x + width, y + height);
		var i:Int = from.i;
		var j:Int;
		while ( i <= to.i )
		{
			j = from.j;
			while ( j <= to.j )
			{
				map[i][j] = STATE_OCCUPIED;
				j ++;
			}
			i ++;
		}
	}
}