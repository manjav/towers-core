package com.gt.towers.utils.lists;
import com.gt.towers.buildings.Place;

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

class PlaceList
{

	#if java
	private var _list:ArrayList<Place>;
	#elseif flash
	private var _list:Vector<Place>;
	#end

	public function new()
	{
		#if java
		_list = new ArrayList<Place>();
		#elseif flash
		_list = new Vector<Place>();
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

	public function push(value:Place):Void
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

	public function set(index:Int, value:Place):Void
	{
		#if java
		_list.set(index, value);
		#elseif flash
		_list[index] = value;
		#end
	}

	public function get(index:Int):Place
	{
		#if java
		return _list.get(index);
		#elseif flash
		return _list[index];
		#end
		return null;
	}

	public function indexOf(place:Place):Int
	{
		#if java
		return _list.indexOf(place);
		#elseif flash
		return _list.indexOf(place);
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
	
	public function shift() : Place
	{
		#if java
		return _list.remove(0);
		#elseif flash
		return _list.shift();
		#end
	}

}