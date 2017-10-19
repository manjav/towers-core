package com.gt.towers.battle;
import com.gt.towers.battle.fieldes.*;
import com.gt.towers.battle.shires.*;
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
		
		shires.set( "shire_9" , new Shire_2( 9, "shire_9", false, false, false ) );
		shires.set( "shire_8" , new Shire_1( 8, "shire_8", false, false, false ) );
		shires.set( "shire_7" , new Shire_1( 7, "shire_7", false, false, false ) );
		shires.set( "shire_6" , new Shire_1( 6, "shire_6", false, false, false ) );
		shires.set( "shire_5" , new Shire_1( 5, "shire_5", false, false, false ) );
		shires.set( "shire_4" , new Shire_1( 4, "shire_4", false, false, false ) );
		shires.set( "shire_3" , new Shire_1( 3, "shire_3", false, false, false ) );
		shires.set( "shire_2" , new Shire_1( 2, "shire_2", false, false, false ) );
		shires.set( "shire_1" , new Shire_1( 1, "shire_1", false, false, false ) );
		shires.set( "shire_0" , new Shire_0( 0, "shire_0", false, false, false ) );

		
		quests = new StringFieldMap();
		
		quests.set( "quest_0" ,  new Quest_0( 0, "quest_0",	true , true, true, "100,100,100,20" ) );
		quests.set( "quest_1" ,  new Quest_1( 1, "quest_1", true, true, false, "100,130,150,20" ) );
		quests.set( "quest_2" ,  new Quest_2( 2, "quest_2", true, true, true, "100,130,150,20" ) );
		quests.set( "quest_3" ,  new Quest_3( 3, "quest_3", false, false, false, "40,60,75,20" ) );
		quests.set( "quest_4" ,  new Quest_4( 4, "quest_4", false, false, false, "40,60,75,20" ) );
		quests.set( "quest_5" ,  new Quest_5( 5, "quest_5", false, false, false, "50,70,100,20" ) );
		quests.set( "quest_6" ,  new Quest_6( 6, "quest_6", false, false, false, "50,80,110,20" ) );
		quests.set( "quest_7" ,  new Quest_7( 7, "quest_7", false, false, false, "70,100,150,20" ) );
		quests.set( "quest_8" ,  new Quest_8( 8, "quest_8", false, false, false, "70,100,150,20" ) );	
		quests.set( "quest_9" ,	 new Quest_9( 9, "quest_9", false, false, false, "70,100,150,20" ) );
		quests.set( "quest_10" , new Quest_10( 10, "quest_10", false, false, false, "40,60,80,20" ) );
		quests.set( "quest_11" , new Quest_11( 11, "quest_11", false, false, false, "30,40,60,20" ) );
		quests.set( "quest_12" , new Quest_12( 12, "quest_12", false, false, false, "30,40,60,20" ) );
		quests.set( "quest_13" , new Quest_13( 13, "quest_13", false, false, false, "30,40,60,20" ) );
		quests.set( "quest_14" , new Quest_14( 14, "quest_14", false, false, false, "50,60,80,20" ) );
		quests.set( "quest_15" , new Quest_15( 15, "quest_15", false, false, false, "50,60,80,20" ) );
		quests.set( "quest_16" , new Quest_16( 16, "quest_16", false, false, false, "50,90,140,20" ) );
		quests.set( "quest_17" , new Quest_17( 17, "quest_17", false, false, false, "50,90,140,20" ) );
		quests.set( "quest_18" , new Quest_18( 18, "quest_18", false, false, false, "50,90,140,20" ) );
		quests.set( "quest_19" , new Quest_19( 19, "quest_19", false, false, false, "50,90,140,20" ) );
		quests.set( "quest_20" , new Quest_20( 20, "quest_20", false, false, false, "50,100,160,30" ) );
		quests.set( "quest_21" , new Quest_21( 21, "quest_21", false, false, false, "50,100,160,30" ) );
		quests.set( "quest_22" , new Quest_22( 22, "quest_22", false, false, false, "50,100,160,30" ) );
		quests.set( "quest_23" , new Quest_23( 23, "quest_23", false, false, false, "50,100,160,30" ) );
		quests.set( "quest_24" , new Quest_24( 24, "quest_24", false, false, false, "40,95,150,30" ) );
		quests.set( "quest_25" , new Quest_25( 25, "quest_25", false, false, false, "50,100,160,30" ) );
		quests.set( "quest_26" , new Quest_26( 26, "quest_26", false, false, false, "50,100,160,30" ) );
		quests.set( "quest_27" , new Quest_27( 27, "quest_27", false, false, false, "80,130,190,30" ) );
		quests.set( "quest_28" , new Quest_28( 28, "quest_28", false, false, false, "60,110,170,30" ) );
		quests.set( "quest_29" , new Quest_29( 29, "quest_29", false, false, false, "60,110,170,30" ) );
		
		
		battles = new StringFieldMap();
		
		battles.set( "battle_1" , new Battle_1( 1, "battle_1", false, false, false, "70,110,160,20" ) );
		battles.set( "battle_2" , new Battle_2( 2, "battle_2", false, false, false, "70,110,160,20" ) );
		battles.set( "battle_3" , new Battle_3( 3, "battle_3", false, false, false, "70,110,160,20" ) );
		battles.set( "battle_4" , new Battle_4( 4, "battle_4", false, false, false, "70,110,160,20" ) );
		battles.set( "battle_5" , new Battle_5( 5, "battle_5", false, false, false, "70,110,160,20" ) );
		
		battles.set( "battle_101" , new Battle_101( 101, "battle_101", false, false, false, "80,120,200,20" ) );
		battles.set( "battle_102" , new Battle_102( 102, "battle_102", false, false, false, "80,120,200,20" ) );
		battles.set( "battle_103" , new Battle_103( 103, "battle_103", false, false, false, "80,120,200,20" ) );
		battles.set( "battle_104" , new Battle_2  ( 104, "battle_104" , false, false, false, "80,120,200,20" ) );
		
		battles.set( "battle_201" , new Battle_201( 201, "battle_201", false, false, false, "100,130,210,20" ) );
		battles.set( "battle_202" , new Battle_202( 202, "battle_202", false, false, false, "100,130,210,20" ) );
		battles.set( "battle_203" , new Battle_102( 203, "battle_203", false, false, false, "100,130,210,20" ) );
		
		battles.set( "battle_301" , new Battle_301( 301, "battle_301", false, false, false, "100,150,250,20" ) );
		battles.set( "battle_302" , new Battle_302( 302, "battle_302", false, false, false, "100,150,250,20" ) );
		battles.set( "battle_303" , new Battle_202( 303, "battle_303", false, false, false, "100,150,250,20" ) );
		
		battles.set( "battle_401" , new Battle_401( 401, "battle_401", false, false, false, "100,150,250,20" ) );
		battles.set( "battle_402" , new Battle_402( 402, "battle_402", false, false, false, "100,150,250,20" ) );
		battles.set( "battle_403" , new Battle_302( 403, "battle_403", false, false, false, "100,150,250,20" ) );
		
		battles.set( "battle_501" , new Battle_501( 501, "battle_501", false, false, false, "100,150,250,20" ) );
		battles.set( "battle_502" , new Battle_502( 502, "battle_502", false, false, false, "100,150,250,20" ) );
		battles.set( "battle_503" , new Battle_402( 503, "battle_503", false, false, false, "100,150,250,20" ) );
		
		battles.set( "battle_601" , new Battle_601( 601, "battle_601", false, false, false, "100,150,250,20" ) );
		battles.set( "battle_602" , new Battle_602( 602, "battle_602", false, false, false, "100,150,250,20" ) );
		battles.set( "battle_603" , new Battle_502( 603, "battle_603", false, false, false, "100,150,250,20" ) );
		
		battles.set( "battle_701" , new Battle_601( 701, "battle_701", false, false, false, "150,200,300,20" ) );
		battles.set( "battle_702" , new Battle_602( 702, "battle_702", false, false, false, "150,200,300,20" ) );
		battles.set( "battle_703" , new Battle_302( 703, "battle_703", false, false, false, "150,200,300,20" ) );
		
		battles.set( "battle_801" , new Battle_601( 801, "battle_801", false, false, false, "150,200,300,20" ) );
		battles.set( "battle_802" , new Battle_602( 802, "battle_802", false, false, false, "150,200,300,20" ) );
		battles.set( "battle_803" , new Battle_202( 803, "battle_803", false, false, false, "150,200,300,20" ) );
		
		battles.set( "battle_901" , new Battle_601( 901, "battle_901", false, false, false, "150,200,300,20" ) );
		battles.set( "battle_902" , new Battle_602( 902, "battle_902", false, false, false, "150,200,300,20" ) );
		battles.set( "battle_903" , new Battle_502( 903, "battle_903", false, false, false, "150,200,300,20" ) );
	}
}