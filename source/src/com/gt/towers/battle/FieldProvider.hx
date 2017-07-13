package com.gt.towers.battle;
import com.gt.towers.battle.fieldes.*;
import com.gt.towers.utils.maps.StringFieldMap;
/**
 * ...
 * @author Mansour Djawadi
 */
class FieldProvider 
{
	public var fields:StringFieldMap;
	
	public function new() 
	{
		fields = new StringFieldMap();
		
		fields.set( "quest_0" , new Quest_0( 0, "quest_0", false, false, "100,100,100" ) );
		fields.set( "quest_1" , new Quest_1( 1, "quest_1", false, false, "100,130,150" ) );
		fields.set( "quest_2" , new Quest_2( 2, "quest_2", true, true, "100,100,100" ) );
		fields.set( "quest_3" , new Quest_3( 3, "quest_3", true, true, "40,60,70" ) );
		fields.set( "quest_4" , new Quest_4( 4, "quest_4", false, false, "30,55,70" ) );
		fields.set( "quest_5" , new Quest_5( 5, "quest_5", false, false, "50,70,100" ) );
		fields.set( "quest_6" , new Quest_6( 6, "quest_6", false, false, "60,90,150" ) );
		fields.set( "quest_7" , new Quest_7( 7, "quest_7", false, false, "60,90,150" ) );
		fields.set( "quest_8" , new Quest_8( 8, "quest_8", false, false, "40,70,90" ) );	
		fields.set( "quest_9" , new Quest_9( 9, "quest_9", false, false, "40,70,90" ) );
		fields.set( "quest_10" , new Quest_10( 10, "quest_10", false, false, "50,80,100" ) );
		fields.set( "quest_11" , new Quest_11( 11, "quest_11", false, false, "60,80,100" ) );
		fields.set( "quest_12" , new Quest_12( 12, "quest_12", false, false, "40,70,90" ) );
		fields.set( "quest_13" , new Quest_13( 13, "quest_13", false, false, "40,70,90" ) );
		fields.set( "quest_14" , new Quest_14( 14, "quest_14", false, false, "50,80,105" ) );
		fields.set( "quest_15" , new Quest_15( 15, "quest_15", false, false, "50,80,105" ) );
		fields.set( "quest_16" , new Quest_16( 16, "quest_16", false, false, "50,80,105" ) );
		fields.set( "quest_17" , new Quest_17( 17, "quest_17", false, false, "80,120,170" ) );
		fields.set( "quest_18" , new Quest_18( 18, "quest_18", false, false, "100,150,220" ) );
		fields.set( "quest_19" , new Quest_19( 19, "quest_19", false, false, "100,150,220" ) );
		fields.set( "quest_20" , new Quest_20( 20, "quest_20", false, false, "100,150,220" ) );

		
		
		
		fields.set( "battle_1" , new Battle_1( 1, "battle_1", false, false, "30,80,160" ) );
		fields.set( "battle_2" , new Battle_2( 2, "battle_2", false, false, "30,80,160" ) );
		fields.set( "battle_3" , new Battle_3( 3, "battle_3", false, false, "60,100,180" ) );
		fields.set( "battle_101" , new Battle_101( 101, "battle_101", false, false, "80,100,180" ) );
		fields.set( "battle_102" , new Battle_102( 102, "battle_102", false, false, "80,100,180" ) );
		fields.set( "battle_103" , new Battle_103( 103, "battle_103", false, false, "80,100,180" ) );
		fields.set( "battle_201" , new Battle_201( 201, "battle_201", false, false, "30,80,160" ) );
		fields.set( "battle_202" , new Battle_202( 202, "battle_202", false, false, "30,80,160" ) );
		fields.set( "battle_203" , new Battle_203( 203, "battle_203", false, false, "50,100,180" ) );
		fields.set( "battle_301" , new Battle_301( 301, "battle_301", false, false, "80,100,180" ) );
		fields.set( "battle_302" , new Battle_302( 302, "battle_302", false, false, "100,100,100" ) );
		fields.set( "battle_303" , new Battle_303( 303, "battle_303", false, false, "80,100,180" ) );
		fields.set( "battle_401" , new Battle_401( 401, "battle_401", false, false, "80,100,180" ) );
		fields.set( "battle_402" , new Battle_402( 402, "battle_402", false, false, "80,100,180" ) );
		fields.set( "battle_403" , new Battle_403( 403, "battle_403", false, false, "80,100,180" ) );
		fields.set( "battle_501" , new Battle_501( 501, "battle_501", false, false, "80,100,180" ) );
		fields.set( "battle_502" , new Battle_502( 502, "battle_502", false, false, "80,100,180" ) );
		fields.set( "battle_503" , new Battle_503( 503, "battle_503", false, false, "80,100,180" ) );
		
	}
}