package com.gt.towers.utils.lists;
import com.gt.towers.utils.GameError;

#if java
	import java.util.ArrayList;
	import java.lang.Error;
#elseif flash
	import flash.Vector;
	import flash.errors.Error;
#end

/**
 * ...
 * @author Mansour Djawadi
 */
class IntList
{
	
	#if java
	private var _list:ArrayList<Int>;
	#elseif flash
	private var _list:Vector<Int>;
	#end

	public function new()
	{
		#if java
		_list = new ArrayList<Int>();
		#elseif flash
		_list = new Vector<Int>();
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

	public function push(value:Int):Void
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

	public function set(index:Int, value:Int):Void
	{
		#if java
		_list.set(index, value);
		#elseif flash
		_list[index] = value;
		#end
	}

	public function get(index:Int):Int
	{
		#if java
		return _list.get(index);
		#elseif flash
		return _list[index];
		#end
		return -1;
	}

	public function indexOf(element:Int):Int
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
	
	public static function parse(value:String, separator:String=","):IntList
	{
		var ret = new IntList();
		var t = 0;
		var ts = value.split(",");
		while (t < ts.length)
		{
			ret.push(Std.parseInt(ts[t]));
			t ++;
		}
		return ret;
	}
}