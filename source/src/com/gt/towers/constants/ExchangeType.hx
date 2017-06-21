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

}