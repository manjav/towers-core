package com.gt.towers.constants;

/**
 * ...
 * @author Mansour Djawadi
 */

 class ExchangeType 
{
	public static var C0_HARD:Int = 0;
	public static var C1_HARD:Int = 1;
	public static var C2_HARD:Int = 2;
	public static var C3_HARD:Int = 3;
	public static var C4_HARD:Int = 4;
	public static var C5_HARD:Int = 5;
	public static var C6_HARD:Int = 6;
	
	static public var C10_SOFT:Int = 10;
	static public var C11_SOFT:Int = 11;
	static public var C12_SOFT:Int = 12;
	static public var C13_SOFT:Int = 13;
	
	static public var C20_SPECIALS:Int = 20;
	static public var C21_SPECIAL:Int = 21;
	static public var C22_SPECIAL:Int = 22;
	static public var C23_SPECIAL:Int = 23;
	
/*	static public var S_30_CHEST:Int = 30;
	static public var S_31_CHEST:Int = 31;
	static public var S_32_CHEST:Int = 32;
	static public var S_33_CHEST:Int = 33;*/
	
	static public var C40_OTHERS:Int = 40;
	static public var C41_KEYS:Int = 41;
	
	static public var C100_FREES:Int = 100;
	static public var C101_FREE:Int = 101;
	static public var C102_FREE:Int = 102;
	static public var C103_FREE:Int = 103;
	
	static public var C107_FREE:Int = 107;
	static public var C108_FREE:Int = 108;
	static public var C109_FREE:Int = 109;
	
	static public var C110_BATTLES:Int = 110;
	static public var C111_BATTLE:Int = 111;
	static public var C112_BATTLE:Int = 112;
	static public var C113_BATTLE:Int = 113;
	
	static public var C120_MAGICS:Int = 120;
	static public var C121_MAGIC:Int = 121;
	static public var C122_MAGIC:Int = 122;
	static public var C123_MAGIC:Int = 123;
	
	static public var C130_ADS:Int = 130;
	static public var C131_AD:Int = 131;
	
	static public var BOOKS_50:Int = 50;
	static public var BOOKS_51_CHROME:Int = 51;
	static public var BOOKS_52_SILVER:Int = 52;
	static public var BOOKS_53_GOLD:Int = 53;
	static public var BOOKS_54_CHROME:Int = 54;
	static public var BOOKS_55_SILVER:Int = 55;
	static public var BOOKS_56_GOLD:Int = 56;
	static public var BOOKS_57_CHROME:Int = 57;
	static public var BOOKS_58_SILVER:Int = 58;
	static public var BOOKS_59_GOLD:Int = 59;

	public function new(){}
	
	public static function getCategory(type:Int):Int 
	{
		return Math.floor(type / 10) * 10;
	}
	
	public static function getCooldown(type:Int):Int
	{
		if( type == C41_KEYS )
			return 108000;
		else if (type == BOOKS_51_CHROME)
			return 14400;			// 4 hour
		else if (type == BOOKS_52_SILVER)
			return 28800;			// 8 hour
		else if (type == BOOKS_53_GOLD)
			return 43200;			// 12 hour
		else if (type == BOOKS_54_CHROME)
			return 43200;			// 12 hour
		else if (type == BOOKS_55_SILVER)
			return 86400;			// 24 hour
		else if (type == BOOKS_56_GOLD)
			return 86400;			// 36 hour
		else if (type == BOOKS_57_CHROME)
			return 9000;			// 2.5 hour
		else if (type == BOOKS_58_SILVER)
			return 28800;			// 8 hour
		else if (type == BOOKS_59_GOLD)
			return 86400;			// 24 hour
		else
			return 0;
	}
	
	public static function getKeyRequierement(type:Int):Int
	{
		if (type == BOOKS_51_CHROME)
			return 3;
		else if (type == BOOKS_52_SILVER)
			return 6;
		else if (type == BOOKS_53_GOLD)
			return 10;
		else if (type == BOOKS_54_CHROME)
			return 15;
		else if (type == BOOKS_55_SILVER)
			return 20;
		else if (type == BOOKS_56_GOLD)
			return 25;
		return 0;
	}
	
	public static function getHardRequierement(type:Int):Int
	{
		if (type == BOOKS_51_CHROME)
			return 10;
		else if (type == BOOKS_52_SILVER)
			return 20;
		else if (type == BOOKS_53_GOLD)
			return 30;
		else if (type == BOOKS_54_CHROME)
			return 40;
		else if (type == BOOKS_55_SILVER)
			return 70;
		else if (type == BOOKS_56_GOLD)
			return 120;
		return 0;
	}	
	
	public static function getNumSlots(type:Int):Int
	{
		if (type == BOOKS_51_CHROME)
			return 3;
		else if (type == BOOKS_52_SILVER)
			return 4;
		else if (type == BOOKS_53_GOLD)
			return 6;
		else if (type == BOOKS_54_CHROME)
			return 8;
		else if (type == BOOKS_55_SILVER)
			return 8;
		else if (type == BOOKS_56_GOLD)
			return 8;
		else if (type == BOOKS_57_CHROME)
			return 2;
		else if (type == BOOKS_58_SILVER)
			return 3;
		else if (type == BOOKS_59_GOLD)
			return 4;
		return 0;
	}	
	
	public static function getNumTotalCards(type:Int):Int
	{
		if( type == BOOKS_51_CHROME )
			return 4;
		else if( type == BOOKS_52_SILVER )
			return 7;
		else if( type == BOOKS_53_GOLD )
			return 17;
		else if( type == BOOKS_54_CHROME )
			return 30;
		else if( type == BOOKS_55_SILVER )
			return 50;
		else if( type == BOOKS_56_GOLD )
			return 100;
		else if (type == BOOKS_57_CHROME)
			return 4;
		else if (type == BOOKS_58_SILVER)
			return 10;
		else if (type == BOOKS_59_GOLD)
			return 24;
		else
			return 0;
	}
	
	public static function getNumSofts(type:Int):Int
	{
		if( type == BOOKS_51_CHROME )
			return getNumTotalCards(type) * 3;
		else if( type == BOOKS_52_SILVER )
			return getNumTotalCards(type) * 3;
		else if( type == BOOKS_53_GOLD )
			return getNumTotalCards(type) * 4;
		else if( type == BOOKS_54_CHROME )
			return getNumTotalCards(type) * 4;
		else if( type == BOOKS_55_SILVER )
			return getNumTotalCards(type) * 5;
		else if ( type == BOOKS_56_GOLD )
			return getNumTotalCards(type) * 6;
		else if (type == BOOKS_57_CHROME)
			return getNumTotalCards(type) * 2;
		else if (type == BOOKS_58_SILVER)
			return getNumTotalCards(type) * 2;
		else if (type == BOOKS_59_GOLD)
			return getNumTotalCards(type) * 2;
		else
			return 0;
	}
}