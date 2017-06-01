package com.gt.towers.utils.maps;
import com.gt.towers.InitData;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.BuildingType;

#if java
	import java.util.Map;
	import java.NativeArray;
	import java.util.ArrayList;
#elseif flash
	import flash.Vector;
#end

class IntBuildingMap
{

	#if java
	private var _map:java.util.HashMap<Int, Building>;
	#elseif flash
	private var _map:Map<Int, Building>;
	#end

	public function new(data:InitData)
	{
		#if java
		_map = new java.util.HashMap<Int, Building>();
		#elseif flash
		_map = new Map<Int, Building>();
		#end
		
		/*set(BuildingType.W00_SHOT_MEDIUM, new ShotMedium(data.weaponsLevel.get(BuildingType.W00_SHOT_MEDIUM)));
		set(BuildingType.W01_GRENADE_SIMPLE, new GrenadeSimple(data.weaponsLevel.get(BuildingType.W01_GRENADE_SIMPLE)));
		set(BuildingType.W02_SHOWER_SIMPLE3, new ShowerSimple3(data.weaponsLevel.get(BuildingType.W02_SHOWER_SIMPLE3)));
		set(BuildingType.W03_SHOT_HEAVY, new ShotHeavy(data.weaponsLevel.get(BuildingType.W03_SHOT_HEAVY)));
		set(BuildingType.W04_AIR_STRIKE, new Building(data.weaponsLevel.get(BuildingType.W04_AIR_STRIKE)));
		set(BuildingType.W05_BOOMERANG_SMALL, new BoomerangSmall(data.weaponsLevel.get(BuildingType.W05_BOOMERANG_SMALL)));
		set(BuildingType.W06_VOLCANO_SMALL, new VolcanoSmall(data.weaponsLevel.get(BuildingType.W06_VOLCANO_SMALL)));
		set(BuildingType.W07_BOUNCER_3, new Bouncer_3(data.weaponsLevel.get(BuildingType.W07_BOUNCER_3)));
		set(BuildingType.W08_MACHINEGUN, new Machinegun(data.weaponsLevel.get(BuildingType.W08_MACHINEGUN)));
		set(BuildingType.W09_ROLLER_SMALL, new RollerSmall(data.weaponsLevel.get(BuildingType.W09_ROLLER_SMALL)));
		set(BuildingType.W10_LASER_SIMPLE, new LaserSimple(data.weaponsLevel.get(BuildingType.W10_LASER_SIMPLE)));
		set(BuildingType.W11_ROLLER_SMALL_REV, new RollerSmallRev(data.weaponsLevel.get(BuildingType.W11_ROLLER_SMALL_REV)));
		set(BuildingType.W12_BREAKER2, new Breaker2(data.weaponsLevel.get(BuildingType.W12_BREAKER2)));
		set(BuildingType.W13_ATOM_SMALL, new AtomSmall(data.weaponsLevel.get(BuildingType.W13_ATOM_SMALL)));
		set(BuildingType.W14_SHOWER_SIMPLE5, new ShowerSimple5(data.weaponsLevel.get(BuildingType.W14_SHOWER_SIMPLE5)));
		set(BuildingType.W15_ROLLER_LARGE, new RollerLarge(data.weaponsLevel.get(BuildingType.W15_ROLLER_LARGE)));
		set(BuildingType.W16_HOMING_MISSILE, new HomingMissile(data.weaponsLevel.get(BuildingType.W16_HOMING_MISSILE)));
		set(BuildingType.W17_WALL, new Wall(data.weaponsLevel.get(BuildingType.W17_WALL)));
		set(BuildingType.W18_SNIPE, new Snipe(data.weaponsLevel.get(BuildingType.W18_SNIPE)));
		set(BuildingType.W19_MORTARS_LIGHT, new MortarsLight(data.weaponsLevel.get(BuildingType.W19_MORTARS_LIGHT)));
		set(BuildingType.W20_ROLLER_BIG_REV, new RollerBigRev(data.weaponsLevel.get(BuildingType.W20_ROLLER_BIG_REV)));
		set(BuildingType.W21_OUTBURST, new Outburst(data.weaponsLevel.get(BuildingType.W21_OUTBURST)));
		set(BuildingType.W22_SHOWER_HOT3, new ShowerHot3(data.weaponsLevel.get(BuildingType.W22_SHOWER_HOT3)));
		set(BuildingType.W23_BREAKER4, new Breaker4(data.weaponsLevel.get(BuildingType.W23_BREAKER4)));
		set(BuildingType.W24_HAMMER_SMALL, new HammerSmall(data.weaponsLevel.get(BuildingType.W24_HAMMER_SMALL)));
		set(BuildingType.W25_BOOMERANG_BIG, new BoomerangBig(data.weaponsLevel.get(BuildingType.W25_BOOMERANG_BIG)));
		set(BuildingType.W26_SQUARE_SMALL, new SquareSmall(data.weaponsLevel.get(BuildingType.W26_SQUARE_SMALL)));
		set(BuildingType.W27_SPLITTER_ROLLER, new SplitterRoller(data.weaponsLevel.get(BuildingType.W27_SPLITTER_ROLLER)));
		set(BuildingType.W28_SYBER_RAIN, new SyberRain(data.weaponsLevel.get(BuildingType.W28_SYBER_RAIN)));
		set(BuildingType.W29_LASER_GHOST, new LaserGhost(data.weaponsLevel.get(BuildingType.W29_LASER_GHOST)));
		set(BuildingType.W30_HELICOPTER_STRIKE, new HelicopterStrike(data.weaponsLevel.get(BuildingType.W30_HELICOPTER_STRIKE)));
		set(BuildingType.W31_SHOWER_HOT5, new ShowerHot5(data.weaponsLevel.get(BuildingType.W31_SHOWER_HOT5)));
		set(BuildingType.W32_ATOM_BIG, new AtomBig(data.weaponsLevel.get(BuildingType.W32_ATOM_BIG)));
		set(BuildingType.W33_MISSILE_LOAD3, new MissileLoad3(data.weaponsLevel.get(BuildingType.W33_MISSILE_LOAD3)));*/
	}

	/**
		Maps `key` to `value`.
		If `key` already has a mapping, the previous value disappears.
		If `key` is null, the result is unspecified.
	**/
	public function set(key:Int, value:Building) : Void
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
	public function get(key:Int) : Building
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
	public function values():NativeArray<Building>
	{
		var keis:NativeArray<Dynamic> = _map.keySet().toArray();
		var ret:NativeArray<Building> = new NativeArray<Building>(keis.length);
		var i:Int = 0;
		while (i < keis.length)
		{
			ret[i] = cast(get(keis[i]), Building);
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
	public function values():Vector<Building>
	{
		var ret:Vector<Building> = new Vector<Building>();
		for (value in _map)
			ret.push(value);
		return ret ;
	}
	#end
	
	/*#if java
	public function get_availables():NativeArray<Int>
	{
		var i:Int = 0;
		var keis:NativeArray<Dynamic> = _map.keySet().toArray();
		var arr:ArrayList<Int> = new ArrayList<Int>();
		while (i < keis.length)
		{
			if(_map.get(keis[i]).availabled())
				arr.add(cast(keis[i], Int) );
			i++;
		}
		i = 0;
		var ret:NativeArray<Int> = new NativeArray<Int>(arr.size());
		while (i < ret.length)
		{
			ret[i] = arr.get(i);
			i++;
		}
		return ret ;
	}
	#elseif flash
	public function get_availables():Vector<Int>
	{
		var ret:Vector<Int> = new Vector<Int>();
		for (key in _map.keys())
			if(_map.get(key).availabled())
				ret.push(key);
		return ret ;
	}
	#end*/

}