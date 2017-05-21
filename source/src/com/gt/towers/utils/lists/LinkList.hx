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
class LinkList 
{

	#if java
	private var _list:ArrayList<Link>;
	#elseif flash
	private var _list:Vector<Link>;
	#end

	public function new()
	{
		#if java
		_list = new ArrayList<Link>();
		#elseif flash
		_list = new Vector<Link>();
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

	public function push(x:Int, y:Int):Void
	{
		#if java
		_list.add(new Link(x, y));
		#elseif flash
		_list.push(new Link(x, y));
		#end
	}
	
	public function getX(index:Int):Int
	{
		#if java
		return _list.get(index).x;
		#elseif flash
		return _list[index].x;
		#end
		return -1;
	}
	public function getY(index:Int):Int
	{
		#if java
		return _list.get(index).y;
		#elseif flash
		return _list[index].y;
		#end
		return -1;
	}
}