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
		//shires.set( "shire_2" , new com.gt.towers.battle.shires.Shire_2( 2, "shire_2", "", "", "" ) );
		//shires.set( "shire_1" , new com.gt.towers.battle.shires.Shire_1( 1, "shire_1", "", "", "" ) );
		shires.set( "shire_0" , new com.gt.towers.battle.shires.Shire_0( 0, "shire_0", "", "", "" ) );
#end
		
		quests = new StringFieldMap();
		quests.set( "quest_0",  new Quest_0(   0, "quest_0", "100,200,300,30",  "1,2", "0",  ""    ) );
		quests.set( "quest_1",  new Quest_1(   1, "quest_1", "40,60,75,20",     "0",   "0",  ""    ) );
		quests.set( "quest_2",  new Quest_2(   2, "quest_2", "80,100,140,20",   "0",   "0",  "1,2" ) );
		quests.set( "quest_3",  new Quest_3(   3, "quest_3", "50,70,120,20" ) );
		quests.set( "quest_4",  new Quest_4(   4, "quest_4", "50,70,120,20" ) );
		quests.set( "quest_5",  new Quest_5(   5, "quest_5", "50,70,120,20" ) );
		quests.set( "quest_6",  new Quest_6(   6, "quest_6", "70,100,150,20" ) );
		quests.set( "quest_7",  new Quest_7(   7, "quest_7", "70,100,150,20" ) );
		quests.set( "quest_8",  new Quest_8(   8, "quest_8", "70,100,150,20" ) );
		quests.set( "quest_9",  new Quest_9(   9, "quest_9", "60,100,150,20" ) );
		
		battles = new StringFieldMap();
		battles.set( "battle_1" ,	new Battle_02 ( 1,	 "battle_1", "60,120,180,240" ) );
		battles.set( "battle_101" , new Battle_02 ( 101, "battle_101", "60,120,180,240" ) );
		battles.set( "battle_201" , new Battle_02 ( 201, "battle_201","60,120,180,240" ) );
		battles.set( "battle_301" , new Battle_02 ( 301, "battle_301","60,120,180,240" ) );
		battles.set( "battle_401" , new Battle_02 ( 401, "battle_401","60,120,180,240" ) );
		battles.set( "battle_501" , new Battle_02 ( 501, "battle_501","60,120,180,240" ) );
		battles.set( "battle_601" , new Battle_02 ( 601, "battle_601","60,120,180,240" ) );
		battles.set( "battle_701" , new Battle_02 ( 701, "battle_701","60,120,180,240" ) );
		battles.set( "battle_801" , new Battle_02 ( 801, "battle_801","60,120,180,240" ) );
		battles.set( "battle_901" , new Battle_02 ( 901, "battle_901","60,120,180,240" ) );
	}
}