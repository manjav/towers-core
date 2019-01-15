package com.gt.towers.battle.tilemap;
import com.gt.towers.battle.tilemap.Tile;
import com.gt.towers.utils.CoreUtils;

/**
* ...
* @author Mansour Djawadi
*/
class TileMap
{
	static public var STATE_EMPTY:Int = 0;
	static public var STATE_OCCUPIED:Int = 0xFF0000;
	static public var STATE_UNIT:Int = 0xFF00FF;
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
	public function getTile(x:Float, y:Float) : Tile
	{
		var t = new Tile(getI(x), getJ(y), 0, 0);
		setTilePosition(t);
		return t;
	}
	public function getI(x:Float) : Int
	{
		if( x < 0 )
			x = 0;
		if( x > BattleField.WIDTH - 1 )
			x = BattleField.WIDTH - 1;
		return Math.floor(x / tileWidth);
	}
	public function getJ(y:Float) : Int
	{
		if( y < 0 )
			y = 0;
		if( y > BattleField.HEIGHT - 1 )
			y = BattleField.HEIGHT - 1;
		return Math.floor(y / tileHeight);
	}
	
	function setTilePosition(tile:Tile) : Void
	{
		tile.x = tile.i * tileWidth + tileWidth * 0.5;
		tile.y = tile.j * tileHeight + tileHeight * 0.5;
	}
	
	public function inMap(i:Int, j:Int) : Bool
	{
		return i > -1 && j > -1 && i < width - 1 && j < height - 1;
	}
	
	public function setTileState(x:Float, y:Float, width:Float, height:Float, state:Int) : Void
	{
		//trace("x:" + x + " y:" + y + " w:" + width + " h:" + height + " s:" + state);
		var from = getTile(x, y);
		var to = getTile(x + width, y + height);
		var i:Int = from.i;
		var j:Int;
		while ( i <= to.i )
		{
			j = from.j;
			while ( j <= to.j )
			{
				//trace("i:" + i + " j:" + j + " state:" + state);
				set(i, j, state);
				j ++;
			}
			i ++;
		}
	}
	
	public function findPath(sourceX:Float, sourceY:Float, destX:Float, destY:Float, side:Int , removeWrongs:Bool = true):Array<Tile>
	{
		var srcTile = getTile(sourceX, sourceY);
		var desTile = getTile(destX, destY);
		if( srcTile.i == desTile.i && srcTile.j == desTile.j )
			return null;
		set(desTile.i,	desTile.j,	STATE_START);
		set(srcTile.i,	srcTile.j,	STATE_TARGET);
		
		var queue:Array<Tile> = new Array<Tile>();
		desTile.cost = desTile.last = 0;
		queue.push(desTile);
		//run recursive function to find the shortest path
		checkQueue(0, 1, queue, side);
		
		if( !removeWrongs )
			return queue;
		
		// remove wrong ways
		var ret:Array<Tile> = new Array<Tile>();
		setTilePosition(target);
		ret.push(target);
		while ( true )
		{
			var last:Int = ret[ret.length - 1].last;
			setTilePosition(queue[last]);
			ret.push(queue[last]);
			if( last == 0 )
				break;
		}
		
		// tiles return to first states
		set(desTile.i, desTile.j, STATE_EMPTY);
		set(srcTile.i, srcTile.j, STATE_EMPTY);
		target = null;
		
		// remove backward ways
		while ( ret.length > 1 )
		{
			//trace(CoreUtils.getNormalDistance(ret[0].x, ret[0].y, ret[1].x, ret[1].y) + " " + CoreUtils.getNormalDistance(sourceX, sourceY, ret[1].x, ret[1].y));
			if( CoreUtils.getNormalDistance(ret[0].x, ret[0].y, ret[1].x, ret[1].y) < CoreUtils.getNormalDistance(sourceX, sourceY, ret[1].x, ret[1].y) )
				break;
			ret.shift();
		}		
		return ret;
	}

	private function checkQueue(startIndex:Int, cost:Int, queue:Array<Tile>, side:Int) : Void
	{
		//trace("checkQueue startIndex:" +  startIndex +  " cost:" + cost + " queue:" + queue + " side:" + side );
		var lastQueueLength:Int = queue.length;
		var i:Int = startIndex;
		
		//check neigbours of the queue element
		while( i < lastQueueLength )
		{
			checkTile(queue[i].i,			queue[i].j - side,	cost + 0.00, i, queue); // top
			checkTile(queue[i].i + side,	queue[i].j - side,	cost + 0.42, i, queue); // top-right
			checkTile(queue[i].i + side,	queue[i].j,			cost + 0.00, i, queue); // right
			checkTile(queue[i].i + side,	queue[i].j + side,	cost + 0.42, i, queue); // right-bottom
			checkTile(queue[i].i,			queue[i].j + side,	cost + 0.00, i, queue); // bottom
			checkTile(queue[i].i - side,	queue[i].j + side,	cost + 0.42, i, queue); // left-bottom
			checkTile(queue[i].i - side,	queue[i].j, 		cost + 0.00, i, queue); // left
			checkTile(queue[i].i - side,	queue[i].j - side,	cost + 0.42, i, queue); // left-top
			
			i ++;
		}
		if( target == null && cost < (tileWidth + tileHeight) )
			checkQueue(lastQueueLength, cost + 1, queue, side);
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
	
	public function findTile(x:Float, y:Float, side:Int, state:Int) : Tile
	{
		var tile = getTile(x, y);
		if( get(tile.i, tile.j) == state )
			return tile;
		//trace(tile.i +"," + tile.j + " start finding...");
		if( !lookingAround(tile, side, 1, state) )
			return null;
		setTilePosition(tile);
		return tile;
	}
	
	function lookingAround (tile:Tile, side:Int, step:Int, state:Int) : Bool
	{
		// vertical check
		var i:Int = 0;
		while ( i <= step )
		{
			if( checkAndFillState(tile.i + step * side, tile.j + i * side, tile, state) )
				return true;
			if( checkAndFillState(tile.i - step * side, tile.j + i * side, tile, state) )
				return true;
			if( i == 0 )
			{
				i ++;
				continue;
			}
			if( checkAndFillState(tile.i + step * side, tile.j - i * side, tile, state) )
				return true;
			if( checkAndFillState(tile.i - step * side, tile.j - i * side, tile, state) )
				return true;
			i ++;
		}
		
		// horizontal check
		i = 0;
		while ( i < step )
		{
			if( checkAndFillState(tile.i + i * side, tile.j + step * side, tile, state) )
				return true;
			if( checkAndFillState(tile.i + i * side, tile.j - step * side, tile, state) )
				return true;
			if( i == 0 )
			{
				i ++;
				continue;
			}
			if( checkAndFillState(tile.i - i * side, tile.j + step * side, tile, state) )
				return true;
			if( checkAndFillState(tile.i - i * side, tile.j - step * side, tile, state) )
				return true;
			i ++;
		}
		
		step ++;
		if( step < 15 )
			return lookingAround(tile, side, step, state);
		return false;
	}
	
	function checkAndFillState(i:Int, j:Int, tile:Tile, state:Int) : Bool
	{
		//trace("checkAndFillState i:" + i + ", j:" + j + ", ti:" + tile.i + ", tj:" + tile.j);
		if( inMap(i, j ) && get(i, j) == state )
		{
			tile.i = i;
			tile.j = j;
			return true;
		}
		return false;
	}
}