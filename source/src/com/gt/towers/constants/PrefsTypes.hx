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
	
	public static var AUTH_41_GOOGLE:Int = 41;
	public static var AUTH_42_GAMECENTER:Int = 42;
	public static var AUTH_43_TELEGRAM:Int = 43;
	
	public static var TUTOR:Int = 101;
	
	public static var T_120_FIRST_RUN:Int = 120;
	
	public static var T_121_QUESTMAP_FIRST_VIEW:Int = 121;
	public static var T_122_QUEST_0_START:Int = 122;
	public static var T_123_QUEST_0_FIRST_SWIPE:Int = 123;
	public static var T_124_QUEST_0_FIRST_CAPTURE:Int = 124;
	public static var T_125_QUEST_0_WIN:Int = 125;
	
	public static var T_131_QUEST_1_START:Int = 131;
	public static var T_132_QUEST_1_WIN:Int = 132;
	public static var T_133_QUEST_2_FIRST_START:Int = 133;
	public static var T_134_QUEST_2_FIRST_SWIPE:Int = 134;
	public static var T_135_QUEST_2_LOSE:Int = 135;
	
	public static var T_141_SHOP_FOCUS:Int = 141;
	public static var T_142_SHOP_FIRST_VIEW:Int = 142;
	public static var T_143_SHOP_BOOK_FOCUS:Int = 143;
	public static var T_144_SHOP_BOOK_OPENED:Int = 144;
	
	public static var T_151_DECK_FOCUS:Int = 151;
	public static var T_152_DECK_FIRST_VIEW:Int = 152;
	public static var T_153_DECK_CARD_SELECTED:Int = 153;
	
	public static var T_160_MAIN_SECOND_VIEW:Int = 160;
	
	public static var T_161_QUESTMAP_SECOND_VIEW:Int = 161;
	public static var T_162_QUEST_2_SECOND_START:Int = 162;
	public static var T_163_QUEST_2_FIRST_IMPROVE:Int = 163;
	public static var T_164_QUEST_2_SECOND_SWIPE:Int = 164;
	public static var T_165_QUEST_2_WIN:Int = 165;
	
	public static var T_171_SELECT_NAME_FOCUS:Int = 171;
	public static var T_172_NAME_SELECTED:Int = 172;
	
	public static var T_181_RANK_FOCUS:Int = 181;
	public static var T_182_RANK_SHOWN:Int = 182;

	//public static var T_190_END:Int = 190;

	
	/*public static var T_111_SELECT_EXCHANGE:Int = 111;
	public static var T_112_OPEN_CHEST:Int = 112;
	public static var T_113_SELECT_DECK:Int = 113;
	public static var T_114_SELECT_BUILDING:Int = 114;
	public static var T_115_UPGRADE_BUILDING:Int = 115;
	public static var T_116_END:Int = 116;
	public static var T_118_VIEW_RANK:Int = 118;*/
	
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