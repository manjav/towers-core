package com.gt.towers.utils.maps;

import haxe.Timer;
import java.util.Map;
import java.NativeArray;


class IntTimerMap
{

	private var _map:java.util.HashMap<Int, Timer>;

	public function new()
	{
		_map = new java.util.HashMap<Int, Timer>();

	}

	/**
		Maps `key` to `value`.
		If `key` already has a mapping, the previous value disappears.
		If `key` is null, the result is unspecified.
	**/
	public function set(key:Int, value:Timer) : Void
	{
		_map.put(key, value);
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
	public function get(key:Int) :Timer
	{
		return _map.get(key);
	}
	
	/**
		Returns true if `key` has a mapping, false otherwise.
		If `key` is null, the result is unspecified.
	**/
	public function exists(key:Int):Bool
	{
		return _map.containsKey(key);
	}

	/**
		Removes the mapping of `key` and returns true if such a mapping existed,
		false otherwise.
		If `key` is null, the result is unspecified.
	**/
	public function remove(key:Int):Void
	{
		_map.remove(key);
	}

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
	public function values():NativeArray<Timer>
	{
		var keis:NativeArray<Dynamic> = _map.keySet().toArray();
		var ret:NativeArray<Timer> = new NativeArray<Timer>(keis.length);
		var i:Int = 0;
		while (i < keis.length)
		{
			ret[i] = cast(get(keis[i]), Timer);
			i++;
		}
		return ret ;
	}
}