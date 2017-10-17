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
	
	static public var S_20_SPECIALS:Int = 20;
	static public var S_21_SPECIALS:Int = 21;
	
	static public var S_30_CHEST:Int = 30;
	static public var S_31_CHEST:Int = 31;
	static public var S_32_CHEST:Int = 32;
	static public var S_33_CHEST:Int = 33;
	
	static public var S_40_OTHERS:Int = 40;
	static public var S_41_KEYS:Int = 41;

	static public var CHESTS_50:Int = 50;
	static public var CHESTS_51_CHROME:Int = 51;
	static public var CHESTS_52_SILVER:Int = 52;
	static public var CHESTS_53_GOLD:Int = 53;
	static public var CHESTS_54_MASTER:Int = 54;
	static public var CHESTS_55_WONDER:Int = 55;
	static public var CHESTS_56_MAGICAL:Int = 56;
	static public var CHESTS_59_ADS:Int = 59;
	
	static public var CHEST_CATE_100_DAILYS:Int = 100;
	static public var CHEST_CATE_101_DAILY:Int = 101;
	
	static public var CHEST_CATE_110_BATTLES:Int = 110;
	static public var CHEST_CATE_111_BATTLE:Int = 111;
	static public var CHEST_CATE_112_BATTLE:Int = 112;
	static public var CHEST_CATE_113_BATTLE:Int = 113;
	
	static public var CHEST_CATE_120_OFFERS:Int = 120;
	static public var CHEST_CATE_121_OFFER:Int = 121;
	static public var CHEST_CATE_122_OFFER:Int = 122;
	static public var CHEST_CATE_123_OFFER:Int = 123;


	public function new() {	}
	
	public static function getCategory(type:Int):Int 
	{
		return Math.floor(type / 10) * 10;
	}
	
	public static function getCooldown(type:Int):Int
	{
		if (type == S_21_SPECIALS)
			return 86400;
		else if (type == S_31_CHEST)
			return 36000;			// 10 hours
		else if (type == S_32_CHEST)
			return 72000;			// 20 hours
		else if (type == S_33_CHEST)
			return 108000;			// 30 hours
		else if (type == S_41_KEYS)
			return 108000;
		else if (type == CHESTS_51_CHROME)
			return 10800;			// 3 hour
		else if (type == CHESTS_52_SILVER)
			return 10800;			// 3 hour
		else if (type == CHESTS_53_GOLD)
			return 21600;			// 6 hour
		else if (type == CHESTS_54_MASTER)
			return 43200;			// 12 hour
		else if (type == CHESTS_55_WONDER)
			return 86400;			// 24 hour
		else if (type == CHESTS_56_MAGICAL)
			return 86400;			// 36 hour
		else
			return 0;
	}
	
	public static function getKeyRequierement(type:Int):Int
	{
		if (type == CHESTS_52_SILVER)
			return 4;
		else if (type == CHESTS_53_GOLD)
			return 6;
		else if (type == CHESTS_54_MASTER)
			return 10;
		else if (type == CHESTS_55_WONDER)
			return 15;
		else if (type == CHESTS_56_MAGICAL)
			return 25;
		return 0;
	}
	
	public static function getHardRequierement(type:Int):Int
	{
		if (type == CHESTS_52_SILVER)
			return 40;
		else if (type == CHESTS_53_GOLD)
			return 60;
		else if (type == CHESTS_54_MASTER)
			return 100;
		else if (type == CHESTS_55_WONDER)
			return 180;
		else if (type == CHESTS_56_MAGICAL)
			return 320;
		return 0;
	}	
	
	public static function getNumSlots(type:Int):Int
	{
		if (type == S_31_CHEST)
			return 2;
		else if (type == S_32_CHEST)
			return 3;
		else if (type == S_33_CHEST)
			return 5;
		else if (type == CHESTS_51_CHROME)
			return 3;
		else if (type == CHESTS_52_SILVER)
			return 4;
		else if (type == CHESTS_53_GOLD)
			return 6;
		else if (type == CHESTS_54_MASTER)
			return 8;
		else if (type == CHESTS_55_WONDER)
			return 8;
		else if (type == CHESTS_56_MAGICAL)
			return 8;
		else if (type == CHESTS_59_ADS)
			return 3;
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
		else if( type == CHESTS_54_MASTER )
			return 30;
		else if( type == CHESTS_55_WONDER )
			return 50;
		else if( type == CHESTS_56_MAGICAL )
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
		else if( type == CHESTS_54_MASTER )
			return getNumTotalCards(type)*9;
		else if( type == CHESTS_55_WONDER )
			return getNumTotalCards(type)*10;
		else if( type == CHESTS_56_MAGICAL )
			return getNumTotalCards(type)*11;
		else
			return 0;
	}

	
	public static function getMaxExchanges(type:Int):Int
	{
		if (type == S_21_SPECIALS)
			return 50;
		return 0;
	}
}