package com.gt.towers.constants;

/**
 * ...
 * @author Mansour Djawadi
 */
class PrefsTypes 
{
	public static var SETTINGS_1_MUSIC:Int = 1;
	public static var SETTINGS_2_SFX:Int = 2;
	public static var SETTINGS_3_NOTIFICATION:Int = 3;
	public static var SETTINGS_4_LOCALE:Int = 4;
	public static var SETTINGS_5_REMOVE_ADS:Int = 5;
	
    public static var OFFER_30_RATING:Int = 30;
    public static var OFFER_31_TELEGRAM:Int = 31;
    public static var OFFER_32_INSTAGRAM:Int = 32;
    public static var OFFER_33_FRIENDSHIP:Int = 33;
	
	public static var AUTH_41_GOOGLE:Int = 41;
	public static var AUTH_42_GAMECENTER:Int = 42;
	public static var AUTH_43_TELEGRAM:Int = 43;
	
	
	public static var TUTOR:Int = 101;
	
	public static var T_000_FIRST_RUN:Int = 0;
	public static var T_001_START:Int = 1;
	public static var T_004_SWIPE:Int = 4;
	public static var T_005_CAPTURE:Int = 5;
	public static var T_007_WIN:Int = 7;	
	
	public static var T_021_START:Int = 21;
	public static var T_024_SWIPE:Int = 24;
	public static var T_025_CAPTURE:Int = 25;
	public static var T_027_WIN:Int = 27;
	
	public static var T_031_SLOT_FOCUS:Int = 31;
	public static var T_032_SLOT_OPENED:Int = 32;
	public static var T_033_BOOK_OPEN:Int = 33;
	public static var T_034_BOOK_OPENED:Int = 34;
	public static var T_035_DECK_FOCUS:Int = 35;
	public static var T_036_DECK_SHOWN:Int = 36;
	public static var T_037_CARD_OPENED:Int = 37;
	public static var T_038_CARD_UPGRADED:Int = 38;
	
	public static var T_041_START:Int = 41;
	public static var T_042_QUEST_IMPROVE:Int = 42;
	public static var T_044_SWIPE:Int = 44;
	public static var T_045_CAPTURE:Int = 45;
	public static var T_047_WIN:Int = 47;	
	
	public static var T_151_SELECT_NAME_FOCUS:Int = 151;
	public static var T_152_NAME_SELECTED:Int = 152;
	
	public static var T_161_RANK_FOCUS:Int = 161;
	public static var T_162_RANK_SHOWN:Int = 162;

	public function new()  {}
	
	public static function isSettings(type:Int) : Bool
	{
		return type >= 0 && type < 10;
	}
	public static function isOffer(type:Int) : Bool
	{
		return type >= 30 && type < 40;
	}
	public static function isTutorial(type:Int) : Bool
	{
		return type >= 100 && type < 200;
	}
}