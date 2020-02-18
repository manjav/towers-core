package com.gt.towers.constants;

/**
 * ...
 * @author Mansour Djawadi
 */

class ExchangeType
{
	static public var C0_HARD:Int = 0;
	static public var C1_HARD:Int = 1;
	static public var C2_HARD:Int = 2;
	static public var C3_HARD:Int = 3;
	static public var C4_HARD:Int = 4;
	static public var C5_HARD:Int = 5;
	static public var C6_HARD:Int = 6;

	static public var C10_SOFT:Int = 10;
	static public var C11_SOFT:Int = 11;
	static public var C12_SOFT:Int = 12;
	static public var C13_SOFT:Int = 13;

	static public var C70_TICKETS:Int = 70;
	static public var C71_TICKET:Int = 71;
	static public var C72_TICKET:Int = 72;
	static public var C73_TICKET:Int = 73;

	static public var C80_EMOTES:Int = 80;
	static public var C81_EMOTE:Int = 81;
	static public var C82_EMOTE:Int = 82;
	static public var C83_EMOTE:Int = 83;

	static public var C20_SPECIALS:Int = 20;
	static public var C21_SPECIAL:Int = 21;
	static public var C22_SPECIAL:Int = 22;
	static public var C23_SPECIAL:Int = 23;
	static public var C29_DAILY_BATTLES:Int = 29;

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
	static public var C104_STARS:Int = 104;

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
	static public var BOOK_51_METAL:Int = 51;
	static public var BOOK_52_KNIGHT:Int = 52;
	static public var BOOK_53_STARS:Int = 53;
	static public var BOOK_54_SEA:Int = 54;
	static public var BOOK_55_PIRATE:Int = 55;
	static public var BOOK_56_JUNGLE:Int = 56;
	static public var BOOK_57_TREASURE:Int = 57;
	static public var BOOK_58_AMBER:Int = 58;
	static public var BOOK_59_DRAGON:Int = 59;

	public function new() {}
	static public function getCategory(type:Int):Int
	{
		return Math.floor(type / 10) * 10;
	}

	static public function getCooldown(type:Int):Int
	{
		return switch ( type )
		{
			case 41		: 24	* 3600;
			case 43		: 2		* 3600;
			case 51		: 10		  ;
			case 52		: 3		* 3600;
			case 53		: 8		* 3600;
			case 54		: 12	* 3600;
			case 57		: 24	* 3600;
			case 59		: 24	* 3600;
			case 101	: 3		* 3600;
			case 104	: 24	* 3600;
			default : 0;
		}
	}

	static public function getNumSlots(type:Int):Int
	{
		return switch ( type )
		{
			case 51 : 2;
			case 52 : 3;
			case 53 : 4;
			case 54 : 5;
			case 55 : 5;
			case 56 : 6;
			case 57 : 6;
			case 58 : 7;
			case 59 : 7;
			default : 0;
		}
	}

	static public function getNumTotalCards(type:Int, arena:Int, coef:Float):Int
	{
		var ret =  switch ( type )
		{
			case 51 : 3		+ arena;
			case 52 : 3		+ arena;
			case 53 : 10	+ 3		* arena;
			case 54 : 20	+ 6		* arena;
			case 55 : 35	+ 12	* arena;
			case 56 : 70	+ 24	* arena;
			case 57 : 80	+ 28	* arena;
			case 58 : 120	+ 36	* arena;
			case 59 : 150	+ 40	* arena;
			default : 0;
		}
		return Math.floor( ret * coef);
	}

	static public function getNumSofts(type:Int, arena:Int, coef:Float):Int
	{
		return Math.round(Math.pow(getNumTotalCards(type, arena, coef), 1.5) * 0.5);
	}

	static public function isMagic(type:Int) : Bool
	{
		return type == BOOK_55_PIRATE || type == BOOK_56_JUNGLE || type == BOOK_58_AMBER ;
	}
	
	
	static public function getName(type:Int) : String
	{
		switch (type)
		{
			case 0: return "Gems";
			case 1: return "GemsI";
			case 2: return "GemsII";
			case 3: return "GemsIII";
			case 4: return "GemsIV";
			case 5: return "GemsV";
			case 6: return "GemsVI";
			case 10: return "Coins";
			case 11: return "CoinsI";
			case 12: return "CoinsII";
			case 13: return "CoinsIII";
			case 20: return "Special";
			case 21: return "SpecialI";
			case 22: return "SpecialII";
			case 23: return "SpecialIII";
			case 30: return "Bundle";
			case 31: return "BundleI";
			case 32: return "BundleII";
			case 40: return "Others";
			case 41: return "Keys";
			case 42: return "Rename";
			case 43: return "AD";
			case 50: return "Books";
			case 51: return "BookMetal";
			case 52: return "BookKnight";
			case 53: return "BookStars";
			case 54: return "BookSea";
			case 55: return "BookPirate";
			case 56: return "BookJungle";
			case 57: return "BookTreasure";
			case 58: return "BookAmber";
			case 59: return "BookDragon";
			case 70: return "Ticket";
			case 71: return "TicketI";
			case 72: return "TicketII";
			case 73: return "TicketIII";
			case 80: return "Emote";
			case 81: return "EmoteI";
			case 82: return "EmoteII";
			case 83: return "EmoteIII";
			case 100: return "Frees";
			case 101: return "FreesI";
			case 102: return "FreesII";
			case 103: return "FreesIII";
			case 110: return "Battle";
			case 111: return "BattleI";
			case 112: return "BattleII";
			case 113: return "BattleIII";
			case 114: return "BattleIV";
			case 120: return "Magic";
			case 121: return "MagicI";
			case 122: return "MagicII";
			case 123: return "MagicIII";
			default: return null;
		}
	}
}