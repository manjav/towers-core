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
	
    public static var OFFER_30_RATING:Int = 30;
    public static var OFFER_31_TELEGRAM:Int = 31;
    public static var OFFER_32_INSTAGRAM:Int = 32;
    public static var OFFER_33_FRIENDSHIP:Int = 33;
	
	public static var TUTE_STEP_101:Int = 101;
	public static var TUTE_101_START:Int = 101;
	public static var TUTE_111_SELECT_EXCHANGE:Int = 111;
	public static var TUTE_112_OPEN_CHEST:Int = 112;
	public static var TUTE_113_SELECT_DECK:Int = 113;
	public static var TUTE_114_SELECT_BUILDING:Int = 114;
	public static var TUTE_115_UPGRADE_BUILDING:Int = 115;
	public static var TUTE_116_END:Int = 116;
	
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
		return type >= 110 && type < 130;
	}
}