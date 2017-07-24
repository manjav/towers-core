package com.gt.towers.constants;

/**
 * ...
 * @author Mansour Djawadi
 */

/* @:enum
abstract ShopItemType(Int) 
{

	var SHOP_ITEM_0 = 0;
	var SHOP_ITEM_1 = 1;
	var SHOP_ITEM_2 = 2;
	var SHOP_ITEM_4 = 3;
	
}*/

class ExchangeType 
{
	public static var S_0_HARD:Int = 0;
	public static var S_1_HARD:Int = 1;
	public static var S_2_HARD:Int = 2;
	public static var S_3_HARD:Int = 3;
	public static var S_4_HARD:Int = 4;
	public static var S_5_HARD:Int = 5;
	public static var S_6_HARD:Int = 6;
	
	static public var S_10_SOFT:Int = 10;
	static public var S_11_SOFT:Int = 11;
	static public var S_12_SOFT:Int = 12;
	static public var S_13_SOFT:Int = 13;
	
	static public var S_20_BUILDING:Int = 20;
	static public var S_21_BUILDING:Int = 21;
	
	static public var S_30_CHEST:Int = 30;
	static public var S_31_CHEST:Int = 31;
	static public var S_32_CHEST:Int = 32;
	static public var S_33_CHEST:Int = 33;
	
	
	
	public function new() {	}
	
	public static function getCategory(type:Int):Int 
	{
		return Math.floor(type / 10) * 10;
	}
	
	public static function getCooldown(type:Int):Int
	{
		if (type == S_21_BUILDING)
			return 86400;
		else if (type == S_31_CHEST)
			return 21600;
		else if (type == S_32_CHEST)
			return 43200;
		else if (type == S_33_CHEST)
			return 86400;
		else
			return 0;
	}	
	
	public static function getMaxExchanges(type:Int):Int
	{
		if (type == S_21_BUILDING)
			return 50;
		return 0;
	}
}