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
		
		shires.set( "shire_2" , new Shire_2( 2, "shire_2", 0, 0, 0 ) );
		shires.set( "shire_1" , new Shire_1( 1, "shire_1", 0, 0, 0 ) );
		shires.set( "shire_0" , new Shire_0( 0, "shire_0", 0, 0, 0 ) );

		
		quests = new StringFieldMap();
		
		quests.set( "quest_0" ,  new Quest_0( 0, "quest_0", 0, 0, 0, "100,100,100,20" ) );
		quests.set( "quest_1" ,  new Quest_1( 1, "quest_1", 0, 0, 0, "100,130,150,20" ) );
		quests.set( "quest_2" ,  new Quest_2( 2, "quest_2", 0, 0, 0, "100,130,150,20" ) );
		quests.set( "quest_3" ,  new Quest_3( 3, "quest_3", 0, 0, 0, "40,60,75,20" ) );
		quests.set( "quest_4" ,  new Quest_4( 4, "quest_4", 0, 0, 0, "40,60,75,20" ) );
		quests.set( "quest_5" ,  new Quest_5( 5, "quest_5", 0, 0, 0, "50,70,100,20" ) );
		quests.set( "quest_6" ,  new Quest_6( 6, "quest_6", 0, 0, 0, "50,80,110,20" ) );
		quests.set( "quest_7" ,  new Quest_7( 7, "quest_7", 0, 0, 0, "70,100,150,20" ) );
		quests.set( "quest_8" ,  new Quest_8( 8, "quest_8", 0, 0, 0, "70,100,150,20" ) );	
		quests.set( "quest_9" ,	 new Quest_9( 9, "quest_9", 0, 0, 0, "70,100,150,20" ) );
		quests.set( "quest_10" , new Quest_10( 10, "quest_10", 0, 0, 0, "40,60,80,20" ) );
		quests.set( "quest_11" , new Quest_11( 11, "quest_11", 0, 0, 0, "30,40,60,20" ) );
		quests.set( "quest_12" , new Quest_12( 12, "quest_12", 0, 0, 0, "30,40,60,20" ) );
		quests.set( "quest_13" , new Quest_13( 13, "quest_13", 0, 0, 0, "30,40,60,20" ) );
		quests.set( "quest_14" , new Quest_14( 14, "quest_14", 0, 0, 0, "50,60,80,20" ) );
		quests.set( "quest_15" , new Quest_15( 15, "quest_15", 0, 0, 0, "50,60,80,20" ) );
		quests.set( "quest_16" , new Quest_16( 16, "quest_16", 0, 0, 0, "50,90,140,20" ) );
		quests.set( "quest_17" , new Quest_17( 17, "quest_17", 0, 0, 0, "50,90,140,20" ) );
		quests.set( "quest_18" , new Quest_18( 18, "quest_18", 0, 0, 0, "50,90,140,20" ) );
		quests.set( "quest_19" , new Quest_19( 19, "quest_19", 0, 0, 0, "50,90,140,20" ) );
		quests.set( "quest_20" , new Quest_20( 20, "quest_20", 0, 0, 0, "50,100,160,30" ) );
		quests.set( "quest_21" , new Quest_21( 21, "quest_21", 0, 0, 0, "50,100,160,30" ) );
		quests.set( "quest_22" , new Quest_22( 22, "quest_22", 0, 0, 0, "50,100,160,30" ) );
		quests.set( "quest_23" , new Quest_23( 23, "quest_23", 0, 0, 0, "50,100,160,30" ) );
		quests.set( "quest_24" , new Quest_24( 24, "quest_24", 0, 0, 0, "40,95,150,30" ) );
		quests.set( "quest_25" , new Quest_25( 25, "quest_25", 0, 0, 0, "50,100,160,30" ) );
		quests.set( "quest_26" , new Quest_26( 26, "quest_26", 0, 0, 0, "50,100,160,30" ) );
		quests.set( "quest_27" , new Quest_27( 27, "quest_27", 0, 0, 0, "80,130,190,30" ) );
		quests.set( "quest_28" , new Quest_28( 28, "quest_28", 0, 0, 0, "60,110,170,30" ) );
		quests.set( "quest_29" , new Quest_29( 29, "quest_29", 0, 0, 0, "60,110,170,30" ) );
		
		
		battles = new StringFieldMap();
		
		battles.set( "battle_1" , new Battle_1( 1, "battle_1", 0, 0, 0, "70,110,160,20" ) );
		battles.set( "battle_2" , new Battle_2( 2, "battle_2", 0, 0, 0, "70,110,160,20" ) );
		battles.set( "battle_3" , new Battle_3( 3, "battle_3", 0, 0, 0, "70,110,160,20" ) );
		battles.set( "battle_4" , new Battle_4( 4, "battle_4", 0, 0, 0, "70,110,160,20" ) );
		battles.set( "battle_5" , new Battle_5( 5, "battle_5", 0, 0, 0, "70,110,160,20" ) );
		
		battles.set( "battle_101" , new Battle_101( 101, "battle_101", 0, 0, 0, "80,120,200,20" ) );
		battles.set( "battle_102" , new Battle_102( 102, "battle_102", 0, 0, 0, "80,120,200,20" ) );
		battles.set( "battle_103" , new Battle_103( 103, "battle_103", 0, 0, 0, "80,120,200,20" ) );
		battles.set( "battle_104" , new Battle_2  ( 104, "battle_104" , 0, 0, 0, "80,120,200,20" ) );
		
		battles.set( "battle_201" , new Battle_201( 201, "battle_201", 0, 0, 0, "100,130,210,20" ) );
		battles.set( "battle_202" , new Battle_202( 202, "battle_202", 0, 0, 0, "100,130,210,20" ) );
		battles.set( "battle_203" , new Battle_102( 203, "battle_203", 0, 0, 0, "100,130,210,20" ) );
		
		battles.set( "battle_301" , new Battle_301( 301, "battle_301", 0, 0, 0, "100,150,250,20" ) );
		battles.set( "battle_302" , new Battle_302( 302, "battle_302", 0, 0, 0, "100,150,250,20" ) );
		battles.set( "battle_303" , new Battle_202( 303, "battle_303", 0, 0, 0, "100,150,250,20" ) );
		
		battles.set( "battle_401" , new Battle_401( 401, "battle_401", 0, 0, 0, "100,150,250,20" ) );
		battles.set( "battle_402" , new Battle_402( 402, "battle_402", 0, 0, 0, "100,150,250,20" ) );
		battles.set( "battle_403" , new Battle_302( 403, "battle_403", 0, 0, 0, "100,150,250,20" ) );
		
		battles.set( "battle_501" , new Battle_501( 501, "battle_501", 0, 0, 0, "100,150,250,20" ) );
		battles.set( "battle_502" , new Battle_502( 502, "battle_502", 0, 0, 0, "100,150,250,20" ) );
		battles.set( "battle_503" , new Battle_402( 503, "battle_503", 0, 0, 0, "100,150,250,20" ) );
		
		battles.set( "battle_601" , new Battle_601( 601, "battle_601", 0, 0, 0, "100,150,250,20" ) );
		battles.set( "battle_602" , new Battle_602( 602, "battle_602", 0, 0, 0, "100,150,250,20" ) );
		battles.set( "battle_603" , new Battle_502( 603, "battle_603", 0, 0, 0, "100,150,250,20" ) );
		
		battles.set( "battle_701" , new Battle_601( 701, "battle_701", 0, 0, 0, "150,200,300,20" ) );
		battles.set( "battle_702" , new Battle_602( 702, "battle_702", 0, 0, 0, "150,200,300,20" ) );
		battles.set( "battle_703" , new Battle_302( 703, "battle_703", 0, 0, 0, "150,200,300,20" ) );
		
		battles.set( "battle_801" , new Battle_601( 801, "battle_801", 0, 0, 0, "150,200,300,20" ) );
		battles.set( "battle_802" , new Battle_602( 802, "battle_802", 0, 0, 0, "150,200,300,20" ) );
		battles.set( "battle_803" , new Battle_202( 803, "battle_803", 0, 0, 0, "150,200,300,20" ) );
		
		battles.set( "battle_901" , new Battle_601( 901, "battle_901", 0, 0, 0, "150,200,300,20" ) );
		battles.set( "battle_902" , new Battle_602( 902, "battle_902", 0, 0, 0, "150,200,300,20" ) );
		battles.set( "battle_903" , new Battle_502( 903, "battle_903", 0, 0, 0, "150,200,300,20" ) );
	}
	
	public function getCurrentShire(questIndex:Int):FieldData
	{
		var _shires = shires.values();
		var s:Int = _shires.length - 1;
		var p:Int = 0;
		
		while ( s >= 0 )
		{
			p = _shires[s].places.size() - 1;
			while ( p >= 0 )
			{
				if ( _shires[s].places.get(p).index == questIndex )
					return _shires[s];
				p --;
			}

			s --;
		}
		return null;
	}
}