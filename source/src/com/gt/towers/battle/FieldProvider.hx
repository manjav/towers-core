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
		shires.set( "shire_2" , new com.gt.towers.battle.shires.Shire_2( 2, "shire_2", "", "", "" ) );
		shires.set( "shire_1" , new com.gt.towers.battle.shires.Shire_1( 1, "shire_1", "", "", "" ) );
		shires.set( "shire_0" , new com.gt.towers.battle.shires.Shire_0( 0, "shire_0", "", "", "" ) );
#end
		
		quests = new StringFieldMap();
		quests.set( "quest_0" , new Quest_0( 0, "quest_0", "1,2", "0", "", "100,100,100,0" ) );
		if ( game.appVersion >= 2025 )
		{
			quests.set( "quest_1" , new Quest_1( 1, "quest_1", "0", "0", "", "40,60,75,20" ) );
			quests.set( "quest_2" , new Quest_2( 2, "quest_2", "0", "0", "1,2", "60,80,100,20" ) );
		}
		else
		{
			quests.set( "quest_1" , new Quest_2( 1, "quest_1", "0", "0", "1,2", "60,80,100,20" ) );
			quests.set( "quest_2" , new Quest_1( 2, "quest_2", "0", "0", "", "40,60,75,20" ) );
		}
		quests.set( "quest_3" , new Quest_3( 3, "quest_3", "", "", "", "40,60,75,20" ) );
		quests.set( "quest_4" , new Quest_4( 4, "quest_4", "", "", "", "50,70,100,20" ) );
		quests.set( "quest_5" , new Quest_5( 5, "quest_5", "", "", "", "50,70,100,20" ) );
		quests.set( "quest_6" , new Quest_6( 6, "quest_6", "", "", "", "70,100,150,20" ) );
		quests.set( "quest_7" , new Quest_7( 7, "quest_7", "", "", "", "70,100,150,20" ) );
		quests.set( "quest_8" , new Quest_8( 8, "quest_8", "", "", "", "70,100,150,20" ) );
		quests.set( "quest_9" , new Quest_9( 9, "quest_9", "", "", "", "40,60,80,20" ) );
		quests.set( "quest_10" , new Quest_10( 10, "quest_10", "", "", "", "50,70,90,20" ) );
		quests.set( "quest_11" , new Quest_11( 11, "quest_11", "", "", "", "50,70,90,20" ) );
		quests.set( "quest_12" , new Quest_12( 12, "quest_12", "", "", "", "60,80,100,20" ) );
		quests.set( "quest_13" , new Quest_13( 13, "quest_13", "", "", "", "60,80,100,20" ) );
		quests.set( "quest_14" , new Quest_14( 14, "quest_14", "", "", "", "60,80,100,20" ) );
		quests.set( "quest_15" , new Quest_15( 15, "quest_15", "", "", "", "70,100,150,20" ) );
		quests.set( "quest_16" , new Quest_16( 16, "quest_16", "", "", "", "70,100,150,20" ) );
		quests.set( "quest_17" , new Quest_17( 17, "quest_17", "", "", "", "70,100,150,20" ) );
		quests.set( "quest_18" , new Quest_18( 18, "quest_18", "", "", "", "70,100,150,20" ) );
		quests.set( "quest_19" , new Quest_19( 19, "quest_19", "", "", "", "70,110,170,30" ) );
		quests.set( "quest_20" , new Quest_20( 20, "quest_20", "", "", "", "70,110,170,30" ) );
		quests.set( "quest_21" , new Quest_21( 21, "quest_21", "", "", "", "80,130,190,30" ) );
		quests.set( "quest_22" , new Quest_22( 22, "quest_22", "", "", "", "80,130,190,30" ) );
		quests.set( "quest_23" , new Quest_23( 23, "quest_23", "", "", "", "80,130,190,30" ) );
		quests.set( "quest_24" , new Quest_24( 24, "quest_24", "", "", "", "80,130,190,30" ) );
		quests.set( "quest_25" , new Quest_25( 25, "quest_25", "", "", "", "110,150,220,30" ) );
		quests.set( "quest_26" , new Quest_26( 26, "quest_26", "", "", "", "110,150,220,30" ) );
		quests.set( "quest_27" , new Quest_27( 27, "quest_27", "", "", "", "110,150,220,30" ) );
		quests.set( "quest_28" , new Quest_28( 28, "quest_28", "", "", "", "140,170,210,30" ) );
		quests.set( "quest_29" , new Quest_29( 29, "quest_29", "", "", "", "150,180,220,30" ) );
		
		battles = new StringFieldMap();
		battles.set( "battle_1" ,	new Battle_01 ( 1,	   "battle_1", "", "", "", "110,150,220,30" ) );
		battles.set( "battle_101" , new Battle_01 ( 101, "battle_101", "", "", "", "110,150,220,30" ) );
		battles.set( "battle_201" , new Battle_01 ( 201, "battle_201", "", "", "", "110,150,220,30" ) );
		battles.set( "battle_301" , new Battle_01 ( 301, "battle_301", "", "", "", "110,150,220,30" ) );
		battles.set( "battle_401" , new Battle_01 ( 401, "battle_401", "", "", "", "110,150,220,30" ) );
		battles.set( "battle_501" , new Battle_01 ( 501, "battle_501", "", "", "", "110,150,220,30" ) );
		battles.set( "battle_601" , new Battle_01 ( 601, "battle_601", "", "", "", "110,150,220,30" ) );
		battles.set( "battle_701" , new Battle_01 ( 701, "battle_701", "", "", "", "110,150,220,30" ) );
		battles.set( "battle_801" , new Battle_01 ( 801, "battle_801", "", "", "", "110,150,220,30" ) );
		battles.set( "battle_901" , new Battle_01 ( 901, "battle_901", "", "", "", "110,150,220,30" ) );
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