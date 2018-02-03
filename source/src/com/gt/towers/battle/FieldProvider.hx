package com.gt.towers.battle;
import com.gt.towers.battle.fieldes.*;
import com.gt.towers.utils.maps.StringFieldMap;

/**
 * ...
 * @author Mansour Djawadi
 */

class FieldProvider 
{
	public var shires:StringFieldMap;
	public var quests:StringFieldMap;
	public var battles:StringFieldMap;
	
	public function new(game:Game) 
	{
		shires = new StringFieldMap();
#if flash
		shires.set( "shire_3" , new com.gt.towers.battle.shires.Shire_3( 3, "shire_3" ) );
		shires.set( "shire_2" , new com.gt.towers.battle.shires.Shire_2( 2, "shire_2" ) );
		shires.set( "shire_1" , new com.gt.towers.battle.shires.Shire_1( 1, "shire_1" ) );
		shires.set( "shire_0" , new com.gt.towers.battle.shires.Shire_0( 0, "shire_0" ) );
#end
	
		quests = new StringFieldMap();
		quests.set( "quest_0" , new Quest_0( 0, "quest_0", "100,200,300,30",	"1,2",	"0",	"" ) );
		quests.set( "quest_1" , new Quest_1( 1, "quest_1", "40,60,75,20",		"0",	"0",	"" ) );
		quests.set( "quest_2" , new Quest_2( 2, "quest_2", "80,100,140,20",		"0",	"0", "1,2" ) );
		quests.set( "quest_3" , new Quest_3( 3, "quest_3", "50,70,120,20" ) );
		quests.set( "quest_4" , new Quest_4( 4, "quest_4", "50,70,120,20" ) );
		quests.set( "quest_5" , new Quest_5( 5, "quest_5", "50,70,120,20" ) );
		quests.set( "quest_6" , new Quest_6( 6, "quest_6", "70,100,150,20" ) );
		quests.set( "quest_7" , new Quest_7( 7, "quest_7", "70,100,150,20" ) );
		quests.set( "quest_8" , new Quest_8( 8, "quest_8", "70,100,150,20" ) );
		quests.set( "quest_9" , new Quest_9( 9, "quest_9", "60,100,150,20" ) );
		quests.set( "quest_10" , new Quest_10( 10, "quest_10", "50,70,100,20" ) );
		quests.set( "quest_11" , new Quest_11( 11, "quest_11", "50,70,120,20" ) );
		quests.set( "quest_12" , new Quest_12( 12, "quest_12", "60,90,130,20" ) );
		quests.set( "quest_13" , new Quest_13( 13, "quest_13", "60,90,130,20" ) );
		quests.set( "quest_14" , new Quest_14( 14, "quest_14", "60,90,130,20" ) );
		quests.set( "quest_15" , new Quest_15( 15, "quest_15", "70,100,150,20" ) );
		quests.set( "quest_16" , new Quest_16( 16, "quest_16", "70,100,150,20" ) );
		quests.set( "quest_17" , new Quest_17( 17, "quest_17", "70,100,150,20" ) );
		quests.set( "quest_18" , new Quest_18( 18, "quest_18", "70,100,150,20" ) );
		quests.set( "quest_19" , new Quest_19( 19, "quest_19", "70,110,170,30" ) );
		quests.set( "quest_20" , new Quest_20( 20, "quest_20", "70,110,170,30" ) );
		quests.set( "quest_21" , new Quest_21( 21, "quest_21", "80,130,190,30" ) );
		quests.set( "quest_22" , new Quest_22( 22, "quest_22", "80,130,190,30" ) );
		quests.set( "quest_23" , new Quest_23( 23, "quest_23", "80,120,180,30" ) );
		quests.set( "quest_24" , new Quest_24( 24, "quest_24", "80,130,190,30" ) );
		quests.set( "quest_25" , new Quest_25( 25, "quest_25", "110,150,220,30" ) );
		quests.set( "quest_26" , new Quest_26( 26, "quest_26", "110,150,220,30" ) );
		quests.set( "quest_27" , new Quest_27( 27, "quest_27", "110,150,220,30" ) );
		quests.set( "quest_28" , new Quest_28( 28, "quest_28", "120,160,200,30" ) );
		quests.set( "quest_29" , new Quest_29( 29, "quest_29", "130,170,200,30" ) );
		quests.set( "quest_30" , new Quest_30( 30, "quest_30", "100,130,150,30" ) );
		quests.set( "quest_31" , new Quest_31( 31, "quest_31", "140,170,190,30" ) );
		quests.set( "quest_32" , new Quest_32( 32, "quest_32", "140,170,220,30" ) );
		quests.set( "quest_33" , new Quest_33( 33, "quest_33", "140,180,220,30" ) );
		quests.set( "quest_34" , new Quest_34( 34, "quest_34", "120,130,200,30" ) );
		quests.set( "quest_35" , new Quest_35( 35, "quest_35", "110,150,220,30" ) );
		quests.set( "quest_36" , new Quest_36( 36, "quest_36", "110,160,240,30" ) );
		quests.set( "quest_37" , new Quest_37( 37, "quest_37", "100,140,210,30" ) );
		quests.set( "quest_38" , new Quest_38( 38, "quest_38", "130,160,200,30" ) );
		quests.set( "quest_39" , new Quest_39( 39, "quest_39", "150,180,220,30" ) );
	
	
		battles = new StringFieldMap();
	
		battles.set( "battle_1" , new Battle_1( 1, "battle_1", "80,150,240,0" ) );
		battles.set( "battle_2" , new Battle_2( 2, "battle_2", "80,150,240,0" ) );
	
	/*	battles.set( "battle_101" , new Battle_101( 101, "battle_101", "80,160,260,0" ) );
		battles.set( "battle_102" , new Battle_102( 102, "battle_102", "80,160,260,0" ) );
		battles.set( "battle_103" , new Battle_103( 103, "battle_103", "80,160,260,0" ) );
		battles.set( "battle_104" , new Battle_104( 104, "battle_104", "80,160,260,0" ) );
		battles.set( "battle_105" , new Battle_105( 105, "battle_105", "80,160,260,0" ) );
		battles.set( "battle_106" , new Battle_106( 106, "battle_106", "80,160,260,0" ) );
		battles.set( "battle_107" , new Battle_107( 107, "battle_107", "90,160,260,0" ) );
	
		battles.set( "battle_201" , new Battle_201( 201, "battle_201", "100,130,210,0" ) );
		battles.set( "battle_202" , new Battle_202( 202, "battle_202", "100,130,210,0" ) );
		battles.set( "battle_203" , new Battle_102( 203, "battle_203", "75,90,110,0" ) );
	
		battles.set( "battle_301" , new Battle_301( 301, "battle_301", "100,150,250,20" ) );
		battles.set( "battle_302" , new Battle_302( 302, "battle_302", "100,150,250,20" ) );
		battles.set( "battle_303" , new Battle_202( 303, "battle_303", "100,150,250,20" ) );

		
		battles.set( "battle_401" , new Battle_401( 401, "battle_401", "100,150,250,20" ) );
		battles.set( "battle_402" , new Battle_402( 402, "battle_402", "100,150,250,20" ) );
		battles.set( "battle_403" , new Battle_302( 403, "battle_403", "100,150,250,20" ) );
	
		battles.set( "battle_501" , new Battle_501( 501, "battle_501", "100,150,300,20" ) );
		battles.set( "battle_502" , new Battle_502( 502, "battle_502", "100,150,300,20" ) );
		battles.set( "battle_503" , new Battle_402( 503, "battle_503", "100,150,300,20" ) );

		battles.set( "battle_601" , new Battle_601( 601, "battle_601", "100,150,320,20" ) );
		battles.set( "battle_602" , new Battle_602( 602, "battle_602", "100,150,320,20" ) );
		battles.set( "battle_603" , new Battle_502( 603, "battle_603", "100,150,320,20" ) );
	
		battles.set( "battle_701" , new Battle_601( 701, "battle_701", "150,200,360,20" ) );
		battles.set( "battle_702" , new Battle_602( 702, "battle_702", "150,200,360,20" ) );
		battles.set( "battle_703" , new Battle_310( 703, "battle_703", "150,200,360,20" ) );*/
	
		battles.set( "battle_801" , new Battle_801( 801, "battle_801", "150,200,360,20" ) );
		battles.set( "battle_802" , new Battle_802( 802, "battle_802", "150,200,360,20" ) );
		battles.set( "battle_803" , new Battle_803( 803, "battle_803", "150,200,360,20" ) );
		battles.set( "battle_804" , new Battle_804( 804, "battle_804", "150,200,360,20" ) );
		battles.set( "battle_805" , new Battle_805( 805, "battle_805", "150,200,360,20" ) );
		battles.set( "battle_806" , new Battle_806( 806, "battle_806", "150,200,360,20" ) );
		battles.set( "battle_807" , new Battle_807( 807, "battle_807", "150,200,360,20" ) );
		battles.set( "battle_808" , new Battle_808( 808, "battle_808", "150,200,360,20" ) );
		battles.set( "battle_809" , new Battle_809( 809, "battle_809", "150,200,360,20" ) );
		battles.set( "battle_810" , new Battle_810( 810, "battle_810", "150,200,360,20" ) );
		battles.set( "battle_811" , new Battle_811( 811, "battle_811", "150,200,360,20" ) );
		battles.set( "battle_812" , new Battle_812( 812, "battle_812", "150,200,360,20" ) );
		battles.set( "battle_813" , new Battle_813( 813, "battle_813", "150,200,360,20" ) );
		battles.set( "battle_814" , new Battle_814( 814, "battle_814", "150,200,360,20" ) );
		battles.set( "battle_815" , new Battle_815( 815, "battle_815", "150,200,360,20" ) );
		battles.set( "battle_816" , new Battle_816( 816, "battle_816", "150,200,360,20" ) );
		
		battles.set( "battle_901" , new Battle_901( 901, "battle_901", "150,200,360,20" ) );
		battles.set( "battle_902" , new Battle_902( 902, "battle_902", "150,200,360,20" ) );
		battles.set( "battle_903" , new Battle_903( 903, "battle_903", "150,200,360,20" ) );
		battles.set( "battle_904" , new Battle_904( 904, "battle_904", "150,200,360,20" ) );
		battles.set( "battle_905" , new Battle_905( 905, "battle_905", "150,200,360,20" ) );
		battles.set( "battle_906" , new Battle_906( 906, "battle_906", "150,200,360,20" ) );
		battles.set( "battle_907" , new Battle_907( 907, "battle_907", "150,200,360,20" ) );
		battles.set( "battle_908" , new Battle_908( 908, "battle_908", "150,200,360,20" ) );
		battles.set( "battle_909" , new Battle_909( 909, "battle_909", "150,200,360,20" ) );
		battles.set( "battle_910" , new Battle_910( 910, "battle_910", "150,200,360,20" ) );
		battles.set( "battle_911" , new Battle_911( 911, "battle_911", "150,200,360,20" ) );
		battles.set( "battle_912" , new Battle_912( 912, "battle_912", "150,200,360,20" ) );
		battles.set( "battle_913" , new Battle_913( 913, "battle_913", "150,200,360,20" ) );
		battles.set( "battle_914" , new Battle_914( 914, "battle_914", "150,200,360,20" ) );
		battles.set( "battle_915" , new Battle_915( 915, "battle_915", "150,200,360,20" ) );
		battles.set( "battle_916" , new Battle_916( 916, "battle_916", "150,200,360,20" ) );
	}
}