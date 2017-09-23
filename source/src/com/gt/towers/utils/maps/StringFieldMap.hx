package com.gt.towers.utils.maps;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.GameError;

#if java
	import java.util.Map;
	import java.NativeArray;
#elseif flash
	import flash.Vector;
#end

class StringFieldMap
{

	#if java
	private var _map:java.util.HashMap<String, FieldData>;
	#elseif flash
	private var _map:Map<String, FieldData>;
	#end

	public function new()
	{
		#if java
		_map = new java.util.HashMap<String, FieldData>();
		#elseif flash
		_map = new Map<String, FieldData>();
		#end
	}

	/**
		Maps `key` to `value`.
		If `key` already has a mapping, the previous value disappears.
		If `key` is null, the result is unspecified.
	**/
	public function set(key:String, value:FieldData) : Void
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
	public function get(key:String) :FieldData
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
	public function exists(key:String):Bool
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
	public function remove(key:String):Void
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
	public function keys():NativeArray<String>
	{
		var keis:NativeArray<Dynamic> = _map.keySet().toArray();
		var ret:NativeArray<String> = new NativeArray<String>(keis.length);
		var i:Int = 0;
		while (i < keis.length)
		{
			ret[i] = cast(keis[i], String);
			i++;
		}
		return ret ;
	}
	public function getKeyRange(min:Int, max:Int):java.util.List<String>
	{
		var ret = new java.util.ArrayList() ;
		var keis = keys();
		var i = 0;
		while ( i < keis.length )
		{
			if ( get(keis[i]).index > min && get(keis[i]).index < max )
				ret.add(keis[i]);
			i ++;
		}
		return ret ;
	}
	/**
		Returns an Iterator over the values of `this` Map.
		The order of values is undefined.
	**/
	public function values():NativeArray<FieldData>
	{
		var keis:NativeArray<Dynamic> = _map.keySet().toArray();
		var ret:NativeArray<FieldData> = new NativeArray<FieldData>(keis.length);
		var i:Int = 0;
		while (i < keis.length)
		{
			ret[i] = cast(get(keis[i]), FieldData);
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
	public function keys():Vector<String>
	{
		var ret:Vector<String> = new Vector<String>();
		for (key in _map.keys())
			ret.push(key);
		return ret ;
	}
	/**
		Returns an Iterator over the values of `this` Map.
		The order of values is undefined.
	**/
	public function values():Vector<FieldData>
	{
		var ret:Vector<FieldData> = new Vector<FieldData>();
		for (value in _map)
			ret.push(value);
		return ret ;
	}
	#end
}