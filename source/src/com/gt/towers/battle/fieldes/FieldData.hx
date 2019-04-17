package com.gt.towers.battle.fieldes;
import com.gt.towers.socials.Challenge;
import com.gt.towers.utils.lists.IntList;
import haxe.ds.IntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class FieldData
{
	static private var fields:IntMap<FieldData> = new IntMap<FieldData>();
	static public function intantiate(mode:Int) : FieldData
	{
		if( !fields.exists(mode) )
			fields.set(mode, new FieldData(mode, "60,120,180,240"));
		return fields.get(mode);
	}

	public var mode:Int;
	public var times:IntList;
	public var mapLayout:String;
#if flash
	//public var name:String;
	//public var introNum:IntList;
	//public var startNum:IntList;
	//public var endNum:IntList;
#elseif java
	//public var index:Int;
	//public var type:Int;
	public var mapName:String;
#end

	public function new(mode:Int, times:String = "") 
	{
		this.mode = mode;
		this.times = IntList.parse(times);
#if flash
		//this.introNum = IntList.parse(introNum);
		//this.startNum = IntList.parse(startNum);
		//this.endNum = IntList.parse(endNum);
#elseif java
		//this.mapName = mapName;
		//this.index = index;
#end
	}
	
	public function isOperation() : Bool
	{
		return false;
	}
}