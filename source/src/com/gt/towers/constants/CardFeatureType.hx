package com.gt.towers.constants;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class CardFeatureType 
{
	public function new() {}
	public static var F00_RARITY:Int = 0;
	public static var F01_AVAILABLE_AT:Int = 1;
	public static var F02_ELIXIR_SIZE = 2;
	public static var F03_TROOPS_COUNT = 3;
	public static var F04_DEPLOY_TIME = 4;
	public static var F05_BIRTH_RATE = 5;
	
	public static var F11_TROOP_SPEED:Int = 11;
	public static var F12_TROOP_POWER:Int = 12;
	public static var F13_TROOP_HEALTH:Int = 13;
	public static var F14_TROOP_RUSH_GAP:Int = 14;
	
	public static var F21_DAMAGE:Int = 21;
	public static var F22_DAMAGE_GAP:Int = 22;
	public static var F23_RANGE_RANGE_MIN:Int = 23;
	public static var F24_RANGE_RANGE_MAX:Int = 24;
	public static var F25_DAMAGE_AREA:Int = 25;
	
#if flash
	private static var _all:IntList;
	public static function getAll():IntList
	{
		if ( _all == null )
		{
			_all = new IntList();
			
			_all.push( F03_TROOPS_COUNT );
			
			_all.push( F11_TROOP_SPEED );
			_all.push( F12_TROOP_POWER );
			_all.push( F13_TROOP_HEALTH );
			//_all.push( F14_TROOP_RUSH_GAP );
			
			_all.push( F21_DAMAGE );
			_all.push( F22_DAMAGE_GAP );
			_all.push( F23_RANGE_RANGE_MIN );
			_all.push( F24_RANGE_RANGE_MAX );
		//	_all.push( F25_DAMAGE_AREA );
		}
		return _all;
	}
	
	public static function getRelatedTo(buildingType:Int):IntList
	{
		var ret = new IntList();
		ret.push( F03_TROOPS_COUNT );
		ret.push( F11_TROOP_SPEED );
		ret.push( F12_TROOP_POWER );
		ret.push( F13_TROOP_HEALTH );
		if ( buildingType >= CardTypes.C500 )
		{
			ret.push( F21_DAMAGE );
			ret.push( F22_DAMAGE_GAP );
			ret.push( F24_RANGE_RANGE_MAX );
		}
		return ret;
	}
	
	public static function getChangables(game:Game, type:Int, level:Int):IntList
	{
		var ret = new IntList();
		var all = getAll();
		var i = 0;
		while ( i < all.size() )
		{
			if ( game.calculator.get(all.get(i), type, level) != game.calculator.get(all.get(i), type, level + 1) )
				ret.push(all.get(i));
			i ++;
		}
		return ret;
	}
#end
}