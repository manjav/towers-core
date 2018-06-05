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
	
	static public var C30_BUNDLES:Int = 30;
	static public var C31_BUNDLE:Int = 31;
	static public var C32_BUNDLE:Int = 32;
	
	static public var C40_OTHERS:Int = 40;
	static public var C41_KEYS:Int = 41;
	static public var C42_RENAME:Int = 42;
	static public var C43_ADS:Int = 43;
	
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
	static public var C114_BATTLE:Int = 114;
	
	static public var C120_MAGICS:Int = 120;
	static public var C121_MAGIC:Int = 121;
	static public var C122_MAGIC:Int = 122;
	static public var C123_MAGIC:Int = 123;
	
	static public var BOOKS_50:Int = 50;
	static public var BOOK_S_51_BRONZE:Int = 51;
	static public var BOOK_M_52_SILVER:Int = 52;
	static public var BOOK_M_53_STARS:Int = 53;
	static public var BOOK_M_54_SEA:Int = 54;
	static public var BOOK_M_55_INKAY:Int = 55;
	static public var BOOK_M_56_PIRATE:Int = 56;
	static public var BOOK_B_57_TREASURE:Int = 57;
	static public var BOOK_B_58_AMBER:Int = 58;
	static public var BOOK_B_59_DRAGON:Int = 59;

	public function new(){}
	public static function getCategory(type:Int):Int 
	{
		return Math.floor(type / 10) * 10;
	}
	
	public static function getCooldown(type:Int):Int
	{
		return switch(type)
		{
			case 41	: 24	* 3600;
			case 51 : 10;
			case 52 : 3		* 3600;
			case 53 : 8		* 3600;
			case 54 : 12	* 3600;
			case 55 : 24	* 3600;
			case 56 : 24	* 3600;
			case 57 : 0;
			case 58 : 0;
			case 59 : 0;
			case 101 : 3	* 3600;
			default : 0;
		}
	}
	
	public static function getKeyRequierement(type:Int):Int
	{
		if( type == BOOK_M_54_SEA )
			return 3;
		else if( type == BOOK_M_55_INKAY )
			return 6;
		else if( type == BOOK_M_56_PIRATE )
			return 10;
		else if( type == BOOK_B_57_TREASURE )
			return 15;
		else if( type == BOOK_B_58_AMBER )
			return 20;
		else if( type == BOOK_B_59_DRAGON )
			return 25;
		return 0;
	}
	
	public static function getHardRequierement(type:Int):Int
	{
		return switch ( type )
		{
			case 51 : 5;
			case 52 : 10;
			case 53 : 15;
			case 54 : 10;
			case 55 : 20;
			case 56 : 30;
			case 57 : 40;
			case 58 : 70;
			case 59 : 120;
			default : 0;
		}
	}	
	
	public static function getNumSlots(type:Int):Int
	{
		if( type == BOOK_S_51_BRONZE )
			return 2;
		else if( type == BOOK_M_52_SILVER )
			return 3;
		else if( type == BOOK_M_53_STARS )
			return 4;
		else if( type == BOOK_M_54_SEA )
			return 3;
		else if( type == BOOK_M_55_INKAY )
			return 4;
		else if( type == BOOK_M_56_PIRATE )
			return 6;
		else if( type == BOOK_B_57_TREASURE )
			return 7;
		else if( type == BOOK_B_58_AMBER )
			return 8;
		else if( type == BOOK_B_59_DRAGON )
			return 8;
		return 0;
	}	
	
	public static function getNumTotalCards(type:Int):Int
	{
		if( type == BOOK_S_51_BRONZE)
			return 4;
		else if( type == BOOK_M_52_SILVER)
			return 10;
		else if( type == BOOK_M_53_STARS)
			return 24;
		else if( type == BOOK_M_54_SEA )
			return 4;
		else if( type == BOOK_M_55_INKAY )
			return 7;
		else if( type == BOOK_M_56_PIRATE )
			return 17;
		else if( type == BOOK_B_57_TREASURE )
			return 30;
		else if( type == BOOK_B_58_AMBER )
			return 50;
		else if( type == BOOK_B_59_DRAGON )
			return 100;
		else
			return 0;
	}
	
	public static function getNumSofts(type:Int):Int
	{
		if( type == BOOK_M_54_SEA )
			return getNumTotalCards(type) * 3;
		else if( type == BOOK_M_55_INKAY )
			return getNumTotalCards(type) * 3;
		else if( type == BOOK_M_56_PIRATE )
			return getNumTotalCards(type) * 4;
		else if( type == BOOK_B_57_TREASURE )
			return getNumTotalCards(type) * 4;
		else if( type == BOOK_B_58_AMBER )
			return getNumTotalCards(type) * 5;
		else if ( type == BOOK_B_59_DRAGON )
			return getNumTotalCards(type) * 6;
		else if( type == BOOK_S_51_BRONZE )
			return getNumTotalCards(type) * 2;
		else if( type == BOOK_M_52_SILVER )
			return getNumTotalCards(type) * 2;
		else if( type == BOOK_M_53_STARS )
			return getNumTotalCards(type) * 2;
		else
			return 0;
	}
	
	public static function getBookType(category:Int) : Int
	{
		return switch(category)
		{
			case 121 : ExchangeType.BOOK_B_57_TREASURE;
			case 122 : ExchangeType.BOOK_B_58_AMBER;
			case 123 : ExchangeType.BOOK_B_59_DRAGON;
			default : ExchangeType.BOOK_B_57_TREASURE;
		}
	}
}