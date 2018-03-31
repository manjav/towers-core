package com.gt.towers.constants;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class BuildingFeatureType 
{

	public function new() {}
	
	public static var F01_CAPACITY:Int = 1;
	public static var F02_BIRTH_RATE = 2;
	
	public static var F05_BIRTH_RATE = 5;
	public static var F06_CAPACITY = 6;
	
	public static var F11_TROOP_SPEED:Int = 11;
	public static var F12_TROOP_POWER:Int = 12;
	public static var F13_TROOP_HEALTH:Int = 13;
	public static var F14_TROOP_RUSH_GAP:Int = 14;
	
	public static var F21_DAMAGE:Int = 21;
	public static var F22_DAMAGE_GAP:Int = 22;
	public static var F23_RANGE_RADIUS_MIN:Int = 23;
	public static var F24_RANGE_RADIUS_MAX:Int = 24;
	public static var F25_DAMAGE_AREA:Int = 25;
	
	private static var _all:IntList;
	public static function getAll():IntList
	{
		if ( _all == null )
		{
			_all = new IntList();
		
			_all.push( F01_CAPACITY );
			_all.push( F02_BIRTH_RATE );
			
			_all.push( F11_TROOP_SPEED );
			_all.push( F12_TROOP_POWER );
			
			_all.push( F21_DAMAGE );
			_all.push( F22_DAMAGE_GAP );
			_all.push( F24_RANGE_RADIUS_MAX );
		//	_all.push( F24_DAMAGE_RANGE );
		}
	
		return _all;
	}
	
	public static function getRelatedTo(buildingType:Int):IntList
	{
		var ret = new IntList();
		ret.push( F01_CAPACITY );
		ret.push( F02_BIRTH_RATE );
		ret.push( F11_TROOP_SPEED );
		ret.push( F12_TROOP_POWER );
		if ( buildingType > BuildingType.B40_CRYSTAL )
		{
			ret.push( F21_DAMAGE );
			ret.push( F22_DAMAGE_GAP );
			ret.push( F24_RANGE_RADIUS_MAX );
		}
		return ret;
	}
	
	public static function getChangables(game:Game, type:Int, level:Int, improveLevel:Int):IntList
	{
		var ret = new IntList();
		var all = getAll();
		var i = 0;
		while ( i < all.size() )
		{
			if ( game.calculator.get(all.get(i), type, level, improveLevel) != game.calculator.get(all.get(i), type, level + 1, improveLevel) )
				ret.push(all.get(i));
			i ++;
		}
		return ret;
	}
}