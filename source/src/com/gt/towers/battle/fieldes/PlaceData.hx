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
	public var troopType:Int;
	public var links:IntList;
	public var enabled:Bool;
	public var tutorIndex:Int;
	
	public function new(index:Int, x:Float, y:Float, type:Int, troopType:Int, links:String, enabled:Bool = true, tutorIndex:Int = -2) 
	{
		this.index = index;
		this.x = x;
		this.y = y;
		this.type = type;
		this.troopType = troopType;
		this.enabled = enabled;
		this.tutorIndex = tutorIndex;
		
		var ls = links.split(',');
		this.links = new IntList();
	
		var i = 0;
		while (i < ls.length)
		{
			this.links.push( Std.parseInt(ls[i]) );
			i++;
		}
	}
}