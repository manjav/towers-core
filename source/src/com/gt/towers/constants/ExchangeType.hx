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
	
/*	static public var S_20_SPECIALS:Int = 20;
	static public var S_21_SPECIALS:Int = 21;
	
	static public var S_30_CHEST:Int = 30;
	static public var S_31_CHEST:Int = 31;
	static public var S_32_CHEST:Int = 32;
	static public var S_33_CHEST:Int = 33;*/
	
	static public var S_40_OTHERS:Int = 40;
	static public var S_41_KEYS:Int = 41;

	static public var CHESTS_50:Int = 50;
	static public var CHESTS_51_CHROME:Int = 51;
	static public var CHESTS_52_SILVER:Int = 52;
	static public var CHESTS_53_GOLD:Int = 53;
	static public var CHESTS_54_CHROME:Int = 54;
	static public var CHESTS_55_SILVER:Int = 55;
	static public var CHESTS_56_GOLD:Int = 56;
	static public var CHESTS_57_CHROME:Int = 57;
	static public var CHESTS_58_SILVER:Int = 58;
	static public var CHESTS_59_GOLD:Int = 59;
	
	static public var CHEST_CATE_100_FREE:Int = 100;
	static public var CHEST_CATE_101_FREE:Int = 101;
	static public var CHEST_CATE_102_FREE:Int = 102;
	static public var CHEST_CATE_103_FREE:Int = 103;
	
	static public var CHEST_CATE_110_BATTLES:Int = 110;
	static public var CHEST_CATE_111_BATTLE:Int = 111;
	static public var CHEST_CATE_112_BATTLE:Int = 112;
	static public var CHEST_CATE_113_BATTLE:Int = 113;
	
	static public var CHEST_CATE_120_OFFERS:Int = 120;
	static public var CHEST_CATE_121_OFFER:Int = 121;
	static public var CHEST_CATE_122_OFFER:Int = 122;
	static public var CHEST_CATE_123_OFFER:Int = 123;
	
	static public var CHEST_CATE_130_ADS:Int = 130;
	static public var CHEST_CATE_131_ADS:Int = 131;


	public function new() {	}
	
	public static function getCategory(type:Int):Int 
	{
		return Math.floor(type / 10) * 10;
	}
	
	public static function getCooldown(type:Int):Int
	{
		if (type == S_41_KEYS)
			return 108000;
		else if (type == CHESTS_51_CHROME)
			return 14400;			// 4 hour
		else if (type == CHESTS_52_SILVER)
			return 28800;			// 8 hour
		else if (type == CHESTS_53_GOLD)
			return 43200;			// 12 hour
		else if (type == CHESTS_54_CHROME)
			return 43200;			// 12 hour
		else if (type == CHESTS_55_SILVER)
			return 86400;			// 24 hour
		else if (type == CHESTS_56_GOLD)
			return 86400;			// 36 hour
		else if (type == CHESTS_57_CHROME)
			return 14400;			// 4 hour
		else if (type == CHESTS_58_SILVER)
			return 43200;			// 12 hour
		else if (type == CHESTS_59_GOLD)
			return 86400;			// 24 hour
		else
			return 0;
	}
	
	public static function getKeyRequierement(type:Int):Int
	{
		if (type == CHESTS_51_CHROME)
			return 3;
		else if (type == CHESTS_52_SILVER)
			return 6;
		else if (type == CHESTS_53_GOLD)
			return 10;
		else if (type == CHESTS_54_CHROME)
			return 15;
		else if (type == CHESTS_55_SILVER)
			return 20;
		else if (type == CHESTS_56_GOLD)
			return 25;
		return 0;
	}
	
	public static function getHardRequierement(type:Int):Int
	{
		if (type == CHESTS_51_CHROME)
			return 10;
		else if (type == CHESTS_52_SILVER)
			return 20;
		else if (type == CHESTS_53_GOLD)
			return 30;
		else if (type == CHESTS_54_CHROME)
			return 50;
		else if (type == CHESTS_55_SILVER)
			return 90;
		else if (type == CHESTS_56_GOLD)
			return 160;
		return 0;
	}	
	
	public static function getNumSlots(type:Int):Int
	{
		if (type == CHESTS_51_CHROME)
			return 3;
		else if (type == CHESTS_52_SILVER)
			return 4;
		else if (type == CHESTS_53_GOLD)
			return 6;
		else if (type == CHESTS_54_CHROME)
			return 8;
		else if (type == CHESTS_55_SILVER)
			return 8;
		else if (type == CHESTS_56_GOLD)
			return 8;
		else if (type == CHESTS_57_CHROME)
			return 3;
		else if (type == CHESTS_58_SILVER)
			return 4;
		else if (type == CHESTS_59_GOLD)
			return 5;
		return 0;
	}	
	
	public static function getNumTotalCards(type:Int):Int
	{
		if( type == CHESTS_51_CHROME )
			return 4;
		else if( type == CHESTS_52_SILVER )
			return 7;
		else if( type == CHESTS_53_GOLD )
			return 17;
		else if( type == CHESTS_54_CHROME )
			return 30;
		else if( type == CHESTS_55_SILVER )
			return 50;
		else if( type == CHESTS_56_GOLD )
			return 100;
		else
			return 0;
	}
	
	public static function getNumSofts(type:Int):Int
	{
		if( type == CHESTS_51_CHROME )
			return getNumTotalCards(type)*6;
		else if( type == CHESTS_52_SILVER )
			return getNumTotalCards(type)*7;
		else if( type == CHESTS_53_GOLD )
			return getNumTotalCards(type)*8;
		else if( type == CHESTS_54_CHROME )
			return getNumTotalCards(type)*9;
		else if( type == CHESTS_55_SILVER )
			return getNumTotalCards(type)*10;
		else if( type == CHESTS_56_GOLD )
			return getNumTotalCards(type)*11;
		else
			return 0;
	}
}