package com.gt.towers.utils.lists;


#if java
	import java.util.ArrayList;
#elseif flash
	import flash.Vector;
#end
/**
 * ...
 * @author Mansour Djawadi
 */
class DeckList
{

	#if java
	private var _list:ArrayList<IntList>;
	#elseif flash
	private var _list:Vector<IntList>;
	#end

	public function new()
	{
		#if java
		_list = new ArrayList<IntList>();
		#elseif flash
		_list = new Vector<IntList>();
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

	public function push(value:IntList):Void
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

	public function set(index:Int, value:IntList):Void
	{
		#if java
		_list.set(index, value);
		#elseif flash
		_list[index] = value;
		#end
	}

	public function get(index:Int):IntList
	{
		if ( index >= size() )
			return null;
			
		#if java
		return _list.get(index);
		#elseif flash
		return _list[index];
		#end
		return null;
	}

	public function indexOf(element:IntList):Int
	{
		#if java
		return _list.indexOf(element);
		#elseif flash
		return _list.indexOf(element);
		#end
		return -1;
	}
	
	public function clear() : Void
	{
		#if java
		_list.clear();
		#elseif flash
		_list.splice(0, _list.length);
		#end
		
	}
}