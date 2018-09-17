package com.gt.towers.utils.lists;

/**
 * ...
 * @author Mansour Djawadi
 */
class DeckList
{

	#if java
	private var _list:java.util.List<IntList>;
	#elseif flash
	private var _list:flash.Vector<IntList>;
	#end

	public function new()
	{
		#if java
		_list = new java.util.ArrayList<IntList>();
		#elseif flash
		_list = new flash.Vector<IntList>();
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
		_list.remove(_list.size() - 1);
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
		if( index >= size() )
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
		return _list.indexOf(element);
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