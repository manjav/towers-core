package com.gt.towers.utils.lists;
import com.gt.towers.battle.fieldes.PlaceData;

#if java
	import java.util.ArrayList;
	import java.util.Collections;
#elseif flash
	import flash.Vector;
#end

/**
 * ...
 * @author Mansour Djawadi
 */

class PlaceDataList
{

	#if java
	private var _list:ArrayList<PlaceData>;
	#elseif flash
	private var _list:Vector<PlaceData>;
	#end

	public function new()
	{
		#if java
		_list = new ArrayList<PlaceData>();
		#elseif flash
		_list = new Vector<PlaceData>();
		#end
	}

	public function size():Int
	{
		#if java
		return _list.size();
		#elseif flash
		return _list.length;
		#end
		return 0;
	}

	public function push(value:PlaceData):Void
	{
		#if java
		_list.add(value);
		#elseif flash
		_list.push(value);
		#end
	}

	public function pop():Void
	{
		#if java
		_list.remove(_list.size()-1);
		#elseif flash
		_list.pop();
		#end
	}

	public function set(index:Int, value:PlaceData):Void
	{
		#if java
		_list.set(index, value);
		#elseif flash
		_list[index] = value;
		#end
	}

	public function get(index:Int):PlaceData
	{
		#if java
		return _list.get(index);
		#elseif flash
		return _list[index];
		#end
		return null;
	}

	public function indexOf(value:PlaceData):Int
	{
		#if java
		return _list.indexOf(value);
		#elseif flash
		return _list.indexOf(value);
		#end
		return -1;
	}
	
	public function reverse() : Void
	{
		#if java
        Collections.reverse(_list);
		#elseif flash
		_list.reverse();
		#end
	}
	
	public function shift() : PlaceData
	{
		#if java
		return _list.remove(0);
		#elseif flash
		return _list.shift();
		#end
	}

}