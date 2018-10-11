package com.gt.towers.battle;

/**
* ...
* @author ...
*/
class TileMap
{
	static public var STATE_EMPTY:Int = 0;
	static public var STATE_OCCUPIED:Int = 1;
	static public var STATE_TARGET:Int = 1;

	public var width:Int = 30;
	public var height:Int = 40;
	public var tileWidth:Int;
	public var tileHeight:Int = 40;
	var map:Array<Array<Int>>;
	var queue:Array<Tile>;
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


	public function findPath(i:Int, j:Int) : Array<Tile>
	{
		queue = new Array<Tile>();
		queue.push(new Tile(i, j, 0));

		//run recursive function to find the shortest path
		checkQueue(0, 1);

		return queue;
	}

	private function checkQueue(startIndex:Int, counter:Int) : Void
	{
		var lastQueueLength:Int = queue.length;
		var i:Int = startIndex;

		//check neigbours of the queue element
		while ( i < lastQueueLength )
		{
			var coordinate:Tile;
		
		//check top
			if( queue[i].j != 0 && map[queue[i].i][queue[i].j - 1] != STATE_OCCUPIED )
			{
				coordinate = new Tile(queue[i].i, queue[i].j - 1, counter);
				//if this coordinate is the start finish algorothm as 
				//the shortest path was just found
				if( map[coordinate.i][coordinate.j] == STATE_TARGET )
					return;
				//if a coordinate already exists in the queue 
				//and has higher coordinate it won't be added
				//but if it has lower coordinate it will replace the one in the queue
				if( canBeAddedToQueue(coordinate) )
					queue.push(coordinate);
			}
		
		//check right
			if( queue[i].i != map.length - 1 && map[queue[i].i + 1][queue[i].j] != STATE_OCCUPIED )
			{
				coordinate = new Tile(queue[i].i + 1, queue[i].j, counter);
				if( map[coordinate.i][coordinate.j] == STATE_TARGET )
					return;
				if( canBeAddedToQueue(coordinate) )
					queue.push(coordinate);
			}
		
		//check bottom
			if( queue[i].j != map[queue[i].i].length - 1 && map[queue[i].i][queue[i].j + 1] != STATE_OCCUPIED )
			{
				coordinate = new Tile(queue[i].i, queue[i].j + 1, counter);
				if( map[coordinate.i][coordinate.j] == STATE_TARGET )
					return;
				if( canBeAddedToQueue(coordinate) )
					queue.push(coordinate);
			}
		
		//check left
			if( queue[i].i != 0 && map[queue[i].i - 1][queue[i].j] != STATE_OCCUPIED )
			{
				coordinate = new Tile(queue[i].i - 1, queue[i].j, counter);
				if( map[coordinate.i][coordinate.j] == STATE_TARGET )
					return;
				if( canBeAddedToQueue(coordinate) )
					queue.push(coordinate);
			}
			
			i ++;
		}
		
		checkQueue(lastQueueLength, counter + 1);
	}

	public function canBeAddedToQueue(coordinate:Tile) : Bool
	{
		var i:Int = queue.length - 1;
		while ( i >= 0 )
		{
			if( coordinate.i == queue[i].i && coordinate.j == queue[i].j)
			{
				if( coordinate.length >= queue[i].length )
					return false;
				
				queue.splice(i, 1);
				return true;
			}
			i --;
		}
		return true;
	}
}