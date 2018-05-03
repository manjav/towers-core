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
		quests.set( "quest_0",  new Quest_0(   0, "quest_0", "100,200,300,30",	"1,2",	"0",	"" ) );
		quests.set( "quest_1",  new Quest_1(   1, "quest_1", "40,60,75,20",		"0",	"0",	"" ) );
		quests.set( "quest_2",  new Quest_2(   2, "quest_2", "80,100,140,20",	"0",	"0", "1,2" ) );
		quests.set( "quest_3",  new Quest_3(   3, "quest_3", "50,70,120,20" ) );
		quests.set( "quest_4",  new Quest_4(   4, "quest_4", "50,70,120,20" ) );
		quests.set( "quest_5",  new Quest_5(   5, "quest_5", "50,70,120,20" ) );
		quests.set( "quest_6",  new Quest_6(   6, "quest_6", "70,100,150,20" ) );
		quests.set( "quest_7",  new Quest_7(   7, "quest_7", "70,100,150,20" ) );
		quests.set( "quest_8",  new Quest_8(   8, "quest_8", "70,100,150,20" ) );
		quests.set( "quest_9",  new Quest_9(   9, "quest_9", "60,100,150,20" ) );
		quests.set( "quest_10", new Quest_10( 10, "quest_10", "50,70,100,20" ) );
		quests.set( "quest_11", new Quest_11( 11, "quest_11", "50,70,120,20" ) );
		quests.set( "quest_12", new Quest_12( 12, "quest_12", "60,90,130,20" ) );
		quests.set( "quest_13", new Quest_13( 13, "quest_13", "60,90,130,20" ) );
		quests.set( "quest_14", new Quest_14( 14, "quest_14", "60,90,130,20" ) );
		quests.set( "quest_15", new Quest_15( 15, "quest_15", "70,100,150,20" ) );
		quests.set( "quest_16", new Quest_16( 16, "quest_16", "70,100,150,20" ) );
		quests.set( "quest_17", new Quest_17( 17, "quest_17", "70,100,150,20" ) );
		quests.set( "quest_18", new Quest_18( 18, "quest_18", "70,100,150,20" ) );
		quests.set( "quest_19", new Quest_19( 19, "quest_19", "70,110,170,30" ) );
		quests.set( "quest_20", new Quest_20( 20, "quest_20", "70,110,170,30" ) );
		quests.set( "quest_21", new Quest_21( 21, "quest_21", "80,130,190,30" ) );
		quests.set( "quest_22", new Quest_22( 22, "quest_22", "80,130,190,30" ) );
		quests.set( "quest_23", new Quest_23( 23, "quest_23", "80,120,180,30" ) );
		quests.set( "quest_24", new Quest_24( 24, "quest_24", "80,130,190,30" ) );
		quests.set( "quest_25", new Quest_25( 25, "quest_25", "110,150,220,30" ) );
		quests.set( "quest_26", new Quest_26( 26, "quest_26", "110,150,220,30" ) );
		quests.set( "quest_27", new Quest_27( 27, "quest_27", "110,150,220,30" ) );
		quests.set( "quest_28", new Quest_28( 28, "quest_28", "120,160,200,30" ) );
		quests.set( "quest_29", new Quest_29( 29, "quest_29", "130,170,200,30" ) );
		quests.set( "quest_30", new Quest_30( 30, "quest_30", "100,130,150,30" ) );
		quests.set( "quest_31", new Quest_31( 31, "quest_31", "140,170,190,30" ) );
		quests.set( "quest_32", new Quest_32( 32, "quest_32", "140,170,220,30" ) );
		quests.set( "quest_33", new Quest_33( 33, "quest_33", "140,180,220,30" ) );
		quests.set( "quest_34", new Quest_34( 34, "quest_34", "120,130,200,30" ) );
		quests.set( "quest_35", new Quest_35( 35, "quest_35", "110,150,220,30" ) );
		quests.set( "quest_36", new Quest_36( 36, "quest_36", "110,160,240,30" ) );
		quests.set( "quest_37", new Quest_37( 37, "quest_37", "100,140,210,30" ) );
		quests.set( "quest_38", new Quest_38( 38, "quest_38", "130,160,200,30" ) );
		quests.set( "quest_39", new Quest_39( 39, "quest_39", "150,180,220,30" ) );
		
		
		battles = new StringFieldMap();
		if( game.appVersion >= 2900 )
		{
			battles.set( "battle_1", new Battle_8( 1, "battle_1", "80,150,240,300", "", "0,2,4",	"0") );
			battles.set( "battle_2", new Battle_9( 2, "battle_2", "80,150,240,300", "", "0",		"0") );
		}
		else
		{
			battles.set( "battle_1", new Battle_1( 1, "battle_1", "80,150,240,300", "", "0,2,4",	"0") );
			battles.set( "battle_2", new Battle_2( 2, "battle_2", "80,150,240,300", "", "0",		"0") );
		}
		battles.set( "battle_3", new Battle_3( 3, "battle_3", "60,90,120,180" ) );
		battles.set( "battle_4", new Battle_4( 4, "battle_4", "60,90,120,180" ) );
		
		battles.set( "battle_101", new Battle_101( 101, "battle_101", "100,130,180,240" ) );
		battles.set( "battle_102", new Battle_102( 102, "battle_102", "100,130,180,240" ) );
		battles.set( "battle_103", new Battle_103( 103, "battle_103", "100,130,180,240" ) );
		battles.set( "battle_104", new Battle_104( 104, "battle_104", "100,130,180,240" ) );
		battles.set( "battle_105", new Battle_105( 105, "battle_105", "100,130,180,240" ) );
		
		battles.set( "battle_201", new Battle_201( 201, "battle_201", "100,130,210,270" ) );
		battles.set( "battle_202", new Battle_202( 202, "battle_202", "100,130,210,270" ) );
		battles.set( "battle_203", new Battle_203( 203, "battle_203", "100,130,210,270" ) );
		battles.set( "battle_204", new Battle_204( 204, "battle_204", "100,130,210,270" ) );
		battles.set( "battle_205", new Battle_205( 205, "battle_205", "100,130,210,270" ) );
		battles.set( "battle_206", new Battle_206( 206, "battle_206", "100,130,210,270" ) );
		battles.set( "battle_207", new Battle_207( 207, "battle_207", "100,130,210,270" ) );
		battles.set( "battle_208", new Battle_208( 208, "battle_208", "100,130,210,270" ) );
		
		battles.set( "battle_301", new Battle_301( 301, "battle_301", "100,150,210,270" ) );
		battles.set( "battle_302", new Battle_302( 302, "battle_302", "100,150,210,270" ) );
		battles.set( "battle_303", new Battle_303( 303, "battle_303", "100,150,210,270" ) );
		battles.set( "battle_304", new Battle_304( 304, "battle_304", "100,150,210,270" ) );
		battles.set( "battle_305", new Battle_305( 305, "battle_305", "100,150,210,270" ) );
		battles.set( "battle_306", new Battle_306( 306, "battle_306", "100,150,210,270" ) );
		battles.set( "battle_307", new Battle_307( 307, "battle_307", "100,150,210,270" ) );
		battles.set( "battle_308", new Battle_308( 308, "battle_308", "100,150,210,270" ) );
		battles.set( "battle_309", new Battle_309( 309, "battle_309", "100,150,210,270" ) );
		battles.set( "battle_310", new Battle_310( 310, "battle_310", "100,150,210,270" ) );
		
		battles.set( "battle_401", new Battle_401( 401, "battle_401", "100,150,240,300" ) );
		battles.set( "battle_402", new Battle_402( 402, "battle_402", "100,150,240,300" ) );
		battles.set( "battle_403", new Battle_303( 403, "battle_403", "100,150,240,300" ) );
		battles.set( "battle_404", new Battle_404( 404, "battle_404", "100,150,240,300" ) );
		battles.set( "battle_405", new Battle_405( 405, "battle_405", "100,150,240,300" ) );
		battles.set( "battle_406", new Battle_406( 406, "battle_406", "100,150,240,300" ) );
		battles.set( "battle_407", new Battle_407( 407, "battle_407", "100,150,240,300" ) );
		battles.set( "battle_408", new Battle_408( 408, "battle_408", "100,150,240,300" ) );
		battles.set( "battle_409", new Battle_409( 409, "battle_409", "100,150,240,300" ) );
		battles.set( "battle_410", new Battle_410( 410, "battle_410", "100,150,240,300" ) );
		
		battles.set( "battle_501", new Battle_501( 501, "battle_501", "100,150,240,300" ) );
		battles.set( "battle_502", new Battle_502( 502, "battle_502", "100,150,240,300" ) );
		battles.set( "battle_503", new Battle_503( 503, "battle_503", "100,150,240,300" ) );
		battles.set( "battle_504", new Battle_504( 504, "battle_504", "100,150,240,300" ) );
		battles.set( "battle_505", new Battle_505( 505, "battle_505", "100,150,240,300" ) );
		battles.set( "battle_506", new Battle_506( 506, "battle_506", "100,150,240,300" ) );
		battles.set( "battle_507", new Battle_507( 507, "battle_507", "100,150,240,300" ) );
		battles.set( "battle_508", new Battle_508( 508, "battle_508", "100,150,240,300" ) );
		battles.set( "battle_509", new Battle_509( 509, "battle_509", "100,150,240,300" ) );
		battles.set( "battle_510", new Battle_510( 510, "battle_510", "100,150,240,300" ) );
		
		battles.set( "battle_601", new Battle_601( 601, "battle_601", "100,150,270,330" ) );
		battles.set( "battle_602", new Battle_602( 602, "battle_602", "100,150,270,330" ) );
		battles.set( "battle_603", new Battle_603( 603, "battle_603", "100,150,270,330" ) );
		battles.set( "battle_604", new Battle_604( 604, "battle_604", "100,150,270,330" ) );
		battles.set( "battle_605", new Battle_605( 605, "battle_605", "100,150,270,330" ) );
		battles.set( "battle_606", new Battle_606( 606, "battle_606", "100,150,270,330" ) );
		battles.set( "battle_607", new Battle_607( 607, "battle_607", "100,150,270,330" ) );
		battles.set( "battle_608", new Battle_608( 608, "battle_608", "100,150,270,330" ) );
		battles.set( "battle_609", new Battle_609( 609, "battle_609", "100,150,270,330" ) );
		battles.set( "battle_610", new Battle_610( 610, "battle_610", "100,150,270,330" ) );
		battles.set( "battle_611", new Battle_611( 611, "battle_611", "100,150,270,330" ) );
		battles.set( "battle_612", new Battle_612( 612, "battle_612", "100,150,270,330" ) );
		battles.set( "battle_613", new Battle_613( 613, "battle_613", "100,150,270,330" ) );
		
		battles.set( "battle_701", new Battle_701( 701, "battle_701", "150,200,270,330" ) );
		battles.set( "battle_702", new Battle_702( 702, "battle_702", "150,200,270,330" ) );
		battles.set( "battle_703", new Battle_703( 703, "battle_703", "150,200,270,330" ) );
		battles.set( "battle_704", new Battle_704( 704, "battle_704", "150,200,270,330" ) );
		battles.set( "battle_705", new Battle_705( 705, "battle_705", "150,200,270,330" ) );
		battles.set( "battle_706", new Battle_706( 706, "battle_706", "150,200,270,330" ) );
		battles.set( "battle_707", new Battle_707( 707, "battle_707", "150,200,270,330" ) );
		battles.set( "battle_708", new Battle_708( 708, "battle_708", "150,200,270,330" ) );
		battles.set( "battle_709", new Battle_709( 709, "battle_709", "150,200,270,330" ) );
		battles.set( "battle_710", new Battle_710( 710, "battle_710", "150,200,270,330" ) );
		battles.set( "battle_711", new Battle_711( 711, "battle_711", "150,200,270,330" ) );
		battles.set( "battle_712", new Battle_712( 712, "battle_712", "150,200,270,330" ) );
		battles.set( "battle_713", new Battle_713( 713, "battle_713", "150,200,270,330" ) );
		
		battles.set( "battle_801", new Battle_801( 801, "battle_801", "150,200,300,360" ) );
		battles.set( "battle_802", new Battle_802( 802, "battle_802", "150,200,300,360" ) );
		battles.set( "battle_803", new Battle_803( 803, "battle_803", "150,200,300,360" ) );
		battles.set( "battle_804", new Battle_804( 804, "battle_804", "150,200,300,360" ) );
		battles.set( "battle_805", new Battle_805( 805, "battle_805", "150,200,300,360" ) );
		battles.set( "battle_806", new Battle_806( 806, "battle_806", "150,200,300,360" ) );
		battles.set( "battle_807", new Battle_807( 807, "battle_807", "150,200,300,360" ) );
		battles.set( "battle_808", new Battle_808( 808, "battle_808", "150,200,300,360" ) );
		battles.set( "battle_809", new Battle_809( 809, "battle_809", "150,200,300,360" ) );
		battles.set( "battle_810", new Battle_810( 810, "battle_810", "150,200,300,360" ) );
		battles.set( "battle_811", new Battle_811( 811, "battle_811", "150,200,300,360" ) );
		battles.set( "battle_812", new Battle_812( 812, "battle_812", "150,200,300,360" ) );
		battles.set( "battle_813", new Battle_813( 813, "battle_813", "150,200,300,360" ) );
		battles.set( "battle_814", new Battle_814( 814, "battle_814", "150,200,300,360" ) );
		battles.set( "battle_815", new Battle_815( 815, "battle_815", "150,200,300,360" ) );
		battles.set( "battle_816", new Battle_816( 816, "battle_816", "150,200,300,360" ) );
		
		//battles.set( "battle_901", new Battle_3( 901, "battle_901", "10,20,30,40" ) );

		battles.set( "battle_901", new Battle_901( 901, "battle_901", "150,200,300,360" ) );
		//battles.set( "battle_902", new Battle_902( 902, "battle_902", "150,200,300,360" ) );
		battles.set( "battle_903", new Battle_903( 903, "battle_903", "150,200,300,360" ) );
		battles.set( "battle_904", new Battle_904( 904, "battle_904", "150,200,300,360" ) );
		battles.set( "battle_905", new Battle_905( 905, "battle_905", "150,200,300,360" ) );
		battles.set( "battle_906", new Battle_906( 906, "battle_906", "150,200,300,360" ) );
		battles.set( "battle_907", new Battle_907( 907, "battle_907", "150,200,300,360" ) );
		battles.set( "battle_908", new Battle_908( 908, "battle_908", "150,200,300,360" ) );
		battles.set( "battle_909", new Battle_909( 909, "battle_909", "150,200,300,360" ) );
		battles.set( "battle_910", new Battle_910( 910, "battle_910", "150,200,300,360" ) );
		battles.set( "battle_911", new Battle_911( 911, "battle_911", "150,200,300,360" ) );
		//battles.set( "battle_912", new Battle_912( 912, "battle_912", "150,200,300,360" ) );
		battles.set( "battle_913", new Battle_913( 913, "battle_913", "150,200,300,360" ) );
		battles.set( "battle_914", new Battle_914( 914, "battle_914", "150,200,300,360" ) );
		battles.set( "battle_915", new Battle_915( 915, "battle_915", "150,200,300,360" ) );
	//	battles.set( "battle_916", new Battle_916( 916, "battle_916", "150,200,300,360" ) );
	}
}