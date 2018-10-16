package com.gt.towers.constants;

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
	public static var F03_QUANTITY = 3;
	public static var F04_SUMMON_TIME = 4;
	//public static var F05_BIRTH_RATE = 5;
	
	public static var F11_SPEED:Int = 11;
	public static var F12_HEALTH:Int = 12;
	public static var F13_SIZE_H:Int = 13;
	static public var F14_SIZE_V:Int = 14;
	//public static var F13_POWER:Int = 13;
	//public static var F14_RUSH_GAP:Int = 14;
	
	public static var F21_BULLET_SPEED:Int = 21;
	public static var F22_BULLET_DAMAGE:Int = 22;
	public static var F23_BULLET_SHOOT_GAP:Int = 23;
	public static var F24_BULLET_SHOOT_DELAY:Int = 24;
	public static var F25_BULLET_RANGE_MIN:Int = 25;
	public static var F26_BULLET_RANGE_MAX:Int = 26;
	public static var F27_BULLET_DAMAGE_AREA:Int = 27;
	public static var F28_BULLET_EXPLODE_DElAY:Int = 28;
	
#if flash
	private static var _all:com.gt.towers.utils.lists.IntList;
	public static function getAll():com.gt.towers.utils.lists.IntList
	{
		if( _all == null )
		{
			_all = new com.gt.towers.utils.lists.IntList();
			
			_all.push( F03_QUANTITY );
			
			_all.push( F11_SPEED );
			_all.push( F12_HEALTH );
			_all.push( F13_SIZE_H );
			_all.push( F14_SIZE_V );
			
			_all.push( F22_BULLET_DAMAGE );
			_all.push( F23_BULLET_SHOOT_GAP );
			_all.push( F24_BULLET_SHOOT_DELAY );
			_all.push( F25_BULLET_RANGE_MIN );
			_all.push( F26_BULLET_RANGE_MAX );
			_all.push( F27_BULLET_DAMAGE_AREA );
			_all.push( F28_BULLET_EXPLODE_DElAY );
		}
		return _all;
	}
	
	public static function getRelatedTo(buildingType:Int):com.gt.towers.utils.lists.IntList
	{
		var ret = new com.gt.towers.utils.lists.IntList();
		ret.push( F22_BULLET_DAMAGE );
		ret.push( F23_BULLET_SHOOT_GAP );
		ret.push( F12_HEALTH );
		return ret;
	}
	
	static public function getUIFactor(featureType:Int) : Float
	{
		return switch( featureType )
		{
			/*case 5 : 1000;
			case 11: 4;
			case 12: 50;
			case 21: 50;
			case 23: 0.2;
			case 24: 0.2;*/
			case 12: 50;
			case 22: 100;
			case 23: 0.1;
			default: 1;
		}
	}
	
	/*public static function getChangables(game:Game, type:Int, level:Int):com.gt.towers.utils.lists.IntList
	{
		var ret = new com.gt.towers.utils.lists.IntList();
		var all = getAll();
		var i = 0;
		while ( i < all.size() )
		{
			if ( game.calculator.get(all.get(i), type, level) != game.calculator.get(all.get(i), type, level + 1) )
				ret.push(all.get(i));
			i ++;
		}
		return ret;
	}*/
#end
}