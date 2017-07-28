package com.gt.towers.utils.maps;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.GameError;

#if java
	import java.util.Map;
	import java.NativeArray;
#elseif flash
	import flash.Vector;
	import flash.events.EventDispatcher;
	import com.gt.towers.events.CoreEvent;
#end

#if java
class IntIntMap
#elseif flash
class IntIntMap extends EventDispatcher
#end
{

	#if java
	private var _map:java.util.HashMap<Int, Int>;
	#elseif flash
	private var _map:Map<Int, Int>;
	#end

	public function new()
	{
		#if java
		_map = new java.util.HashMap<Int, Int>();
		#elseif flash
		super();
		_map = new Map<Int, Int>();
		#end
	}

	/**
		Maps `key` to `value`.
		If `key` already has a mapping, the previous value disappears.
		If `key` is null, the result is unspecified.
	**/
	public function set(key:Int, value:Int) : Void
	{
		var from = exists(key) ? get(key) : 0;
		#if java
		_map.put(key, value);
		#elseif flash
		_map.set(key, value);
		#end
		dispatchChangeEvent(key, from, get(key));
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
	public function get(key:Int) :Int
	{
		#if java
		return _map.get(key);
		#elseif flash
		return _map.get(key);
		#end
		return -1;
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
	public function values():NativeArray<Int>
	{
		var keis:NativeArray<Dynamic> = _map.keySet().toArray();
		var ret:NativeArray<Int> = new NativeArray<Int>(keis.length);
		var i:Int = 0;
		while (i < keis.length)
		{
			ret[i] = cast(get(keis[i]), Int);
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
	public function values():Vector<Int>
	{
		var ret:Vector<Int> = new Vector<Int>();
		for (value in _map)
			ret.push(value);
		return ret ;
	}
	#end
	
	
	public function reduceMap(bundle:IntIntMap):Void
	{
		var keys = bundle.keys();
		var i:Int = 0;
	/*	if (!bundle.enough())
		{
			var ret:IntIntMap = new IntIntMap();
			var diff:Int = 0;
			while (i < keys.length)
			{
				diff = bundle.get(keys[i]) - get(keys[i]);
				if (diff > 0)
					ret.set(keys[i], diff);
				i++;
			}
			throw new GameError(0, "IntIntMap not enough. you need more.");
			return;
		}*/
		
		while (i < keys.length)
		{
			reduce(keys[i], bundle.get(keys[i]));
			i++;
		}
	}
	private function reduce(key:Int, value:Int):Void
	{
		if (!exists(key))
			throw new GameError(1, key + " not found.", key);

		if (key != ResourceType.CURRENCY_REAL && key != ResourceType.POINT && get(key) < value)
			throw new GameError(0, key + " not enough. you need " + (value-get(key)) +" more.", key);

		set(key, get(key) - value);
	}
	
	
	public function increaseMap(bundle:IntIntMap):Void
	{
		var keys = bundle.keys();
		var i:Int = 0;
		while (i < keys.length)
		{
			increase(keys[i], bundle.get(keys[i]));
			i++;
		}
	}
	private function increase(key:Int, value:Int):Void
	{
		//if (!exists(key))
		//	throw new GameError(1, "key " + key + " not found.");
		if (exists(key))
			set(key, get(key) + value);
		else
			set(key, value);
	}

	public function getRandomKey():Int
	{
		var keis = keys();
		var t = keis[ Math.floor( Math.random() * keis.length ) ];
		if ( t >= 1000 )
			return getRandomKey();
		return t;
	}
	
		
	private function dispatchChangeEvent (key:Int, from:Int, to:Int) :Void
	{
		#if flash
		//if( hasEventListener ( CoreEvent.CHANGE ) )
		if( from != to )
			dispatchEvent(new CoreEvent(CoreEvent.CHANGE, key, from, to) );
		#end
	}
}