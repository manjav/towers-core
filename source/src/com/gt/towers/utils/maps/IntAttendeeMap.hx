package com.gt.towers.utils.maps;
import com.gt.towers.socials.Attendee;

#if java
	import java.util.Map;
	import java.NativeArray;
#elseif flash
	import flash.Vector;
#end

class IntAttendeeMap
{

	#if java
	private var _map:java.util.HashMap<Int, Attendee>;
	#elseif flash
	private var _map:Map<Int, Attendee>;
	#end

	public function new()
	{
		#if java
		_map = new java.util.HashMap<Int, Attendee>();
		#elseif flash
		_map = new Map<Int, Attendee>();
		#end
	}

	/**
		Maps `key` to `value`.
		If `key` already has a mapping, the previous value disappears.
		If `key` is null, the result is unspecified.
	**/
	public function set(key:Int, value:Attendee) : Void
	{
		#if java
		_map.put(key, value);
		#elseif flash
		_map.set(key, value);
		#end
	}

	/**
		Returns the current mapping of `key`.
		If no such mapping exists, null is returned.

		Note that a check like `map.get(key) == null` can hold for two reasons:
		1. the map has no mapping for `key`
		2. the map has a mapping with a value of `null`

		If it is important to distinguish these cases, `exists()` should be
		used.
		If `key` is null, the result is unspecified.
	**/
	public function get(key:Int) :Attendee
	{
		#if java
		return _map.get(key);
		#elseif flash
		return _map.get(key);
		#end
		return null;
	}
	
	/**
		Returns true if `key` has a mapping, false otherwise.
		If `key` is null, the result is unspecified.
	**/
	public function exists(key:Int):Bool
	{
		#if java
		return _map.containsKey(key);
		#elseif flash
		return _map.exists(key);
		#end
		return false;
	}

	/**
		Removes the mapping of `key` and returns true if such a mapping existed,
		false otherwise.
		If `key` is null, the result is unspecified.
	**/
	public function remove(key:Int):Void
	{
		#if java
		_map.remove(key);
		#elseif flash
		_map.remove(key);
		#end
	}

	#if java
	/**
		Returns an Iterator over the keys of `this` Map.
		The order of keys is undefined.
	**/
	public function keys():NativeArray<Int>
	{
		var keis:NativeArray<Dynamic> = _map.keySet().toArray();
		var ret:NativeArray<Int> = new NativeArray<Int>(keis.length);
		var i:Int = 0;
		while (i < keis.length)
		{
			ret[i] = cast(keis[i], Int);
			i++;
		}
		return ret ;
	}
	/**
		Returns an Iterator over the values of `this` Map.
		The order of values is undefined.
	**/
	public function values():NativeArray<Attendee>
	{
		var keis:NativeArray<Dynamic> = _map.keySet().toArray();
		var ret:NativeArray<Attendee> = new NativeArray<Attendee>(keis.length);
		var i:Int = 0;
		while (i < keis.length)
		{
			ret[i] = cast(get(keis[i]), Attendee);
			i++;
		}
		return ret ;
	}
	#end
	
	#if flash
	/**
		Returns an Iterator over the keys of `this` Map.
		The order of keys is undefined.
	**/
	public function keys():Vector<Int>
	{
		var ret:Vector<Int> = new Vector<Int>();
		for (key in _map.keys())
			ret.push(key);
		return ret ;
	}
	/**
		Returns an Iterator over the values of `this` Map.
		The order of values is undefined.
	**/
	public function values():Vector<Attendee>
	{
		var ret:Vector<Attendee> = new Vector<Attendee>();
		for (value in _map)
			ret.push(value);
		return ret ;
	}
	#end
	
}