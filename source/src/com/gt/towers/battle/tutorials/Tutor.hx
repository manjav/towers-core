package com.gt.towers.battle.tutorials;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Tutor 
{
	
	public static var TYPE_MESSAGE:Int = 0;
	public static var TYPE_SWIPE:Int = 1;
	public static var TYPE_IMPROVE:Int = 2;
	
	public var key:String;
	public var type:Int;
	public var primary:Bool;
	public var buildings:IntList;
	
	public function new(key:String, type:Int, primary:Bool=false, buildings:String=null) 
	{
		this.key = key;
		this.type = type;
		this.primary = primary;
		
		if ( buildings != null )
		{
			this.buildings = new IntList();
			var bs = buildings.split(',');
			var i = 0;
			while (i < bs.length)
			{
				this.buildings.push( Std.parseInt(bs[i]) );
				i++;
			}
		}
	}
}