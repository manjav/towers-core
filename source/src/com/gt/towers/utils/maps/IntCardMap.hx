package com.gt.towers.utils.maps;
import com.gt.towers.battle.units.Card;
/**
 * ...
 * @author Mansour Djawadi
 */
class IntCardMap
{
	#if java
	private var _map:java.util.Map<Int, Card>;
	#elseif flash
	private var _map:Map<Int, Card>;
	#end

	public function new()
	{
		#if java
		_map = new java.util.concurrent.ConcurrentHashMap<Int, Card>();
		#elseif flash
		_map = new Map<Int, Card>();
		#end
	}

	/**
		Maps `key` to `value`.
		If `key` already has a mapping, the previous value disappears.
		If `key` is null, the result is unspecified.
	**/
	public function set(key:Int, value:Card) : Void
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
	public function get(key:Int) : Card
	{
		return _map.get(key);
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

	public function indexOf(type:Int) : Int
	{
		var __v = values();
		var i = __v.length - 1;
		while ( i >= 0 )
		{
			if ( __v[i].type == type )
				return i;
			i --;
		}
		return -1;
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

	#if java
	/**
		Returns an Iterator over the keys of `this` Map.
		The order of keys is undefined.
	**/
	public function keys():java.NativeArray<Int>
	{
		var keis:java.NativeArray<Dynamic> = _map.keySet().toArray();
		var ret:java.NativeArray<Int> = new java.NativeArray<Int>(keis.length);
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
	public function values():java.NativeArray<Card>
	{
		var keis:java.NativeArray<Dynamic> = _map.keySet().toArray();
		var ret:java.NativeArray<Card> = new java.NativeArray<Card>(keis.length);
		var i:Int = 0;
		while (i < keis.length)
		{
			ret[i] = cast(get(keis[i]), Card);
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
	public function keys():flash.Vector<Int>
	{
		var ret:flash.Vector<Int> = new flash.Vector<Int>();
		for( key in _map.keys() )
			ret.push(key);
		return ret ;
	}
	/**
		Returns an Iterator over the values of `this` Map.
		The order of values is undefined.
	**/
	public function values():flash.Vector<Card>
	{
		var ret:flash.Vector<Card> = new flash.Vector<Card>();
		for( value in _map )
			ret.push(value);
		return ret ;
	}
	#end
	
	public function getRandomKey() : Int
	{
		var keys = keys();
		var t = keys[ Math.floor( Math.random() * keys.length ) ];
		if( t >= 1000 )
			return getRandomKey();
		return t;
	}
	
	public function getLowestLevel() : Int
	{
		var ret = 11;
		var lvl = 100;
		var keys = keys();
		var i = 0;
		while ( i < keys.length )
		{
			if( get(keys[i]).level < lvl )
			{
				lvl = get(keys[i]).level;
				ret = keys[i];
			}
			i ++;
		}
		return ret;
	}
	
	public function getHighestLevel() : Int
	{
		var ret = 11;
		var lvl = 0;
		var keys = keys();
		var i = 0;
		while ( i < keys.length )
		{
			if( get(keys[i]).level > lvl )
			{
				lvl = get(keys[i]).level;
				ret = keys[i];
			}
			i ++;
		}
		return ret;
	}
	
	public function getLowestCard() : Int
	{
		var ret = 101;
		var numCards = 9999999;
		var i = 0;
		var keys = keys();
		var collected = 0;
		while ( i < keys.length )
		{
			collected = Card.getTotalCollected(get(keys[i]).level, get(keys[i]).count());
			if( collected < numCards )
			{
				numCards = collected + 0;
				ret = keys[i];
			}
			i ++;
		}
		return ret;		
	}
}