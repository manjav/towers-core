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
		
		fields.set( "quest_0" , new Quest_0( 0, "quest_0", true , true, true, "100,100,100" ) );
		fields.set( "quest_1" , new Quest_1( 1, "quest_1", true, true, true, "100,130,150" ) );
		fields.set( "quest_2" , new Quest_2( 2, "quest_2", true, true, true, "100,130,150" ) );
		fields.set( "quest_3" , new Quest_3( 3, "quest_3", false, false, false, "40,60,75" ) );
		fields.set( "quest_4" , new Quest_4( 4, "quest_4", false, false, false, "40,60,75" ) );
		fields.set( "quest_5" , new Quest_5( 5, "quest_5", false, false, false, "50,70,100" ) );
		fields.set( "quest_6" , new Quest_6( 6, "quest_6", false, false, false, "50,80,110" ) );
		fields.set( "quest_7" , new Quest_7( 7, "quest_7", false, false, false, "70,100,150" ) );
		fields.set( "quest_8" , new Quest_8( 8, "quest_8", false, false, false, "70,100,150" ) );	
		fields.set( "quest_9" , new Quest_9( 9, "quest_9", false, false, false, "70,100,150" ) );
		fields.set( "quest_10" , new Quest_10( 10, "quest_10", false, false, false, "70,100,120" ) );
		fields.set( "quest_11" , new Quest_11( 11, "quest_11", false, false, false, "55,100,120" ) );
		fields.set( "quest_12" , new Quest_12( 12, "quest_12", false, false, false, "30,80,100" ) );
		fields.set( "quest_13" , new Quest_13( 13, "quest_13", false, false, false, "50,80,100" ) );
		fields.set( "quest_14" , new Quest_14( 14, "quest_14", false, false, false, "20,70,95" ) );
		fields.set( "quest_15" , new Quest_15( 15, "quest_15", false, false, false, "60,90,115" ) );
		fields.set( "quest_16" , new Quest_16( 16, "quest_16", false, false, false, "60,90,115" ) );
		fields.set( "quest_17" , new Quest_17( 17, "quest_17", false, false, false, "80,120,170" ) );
		fields.set( "quest_18" , new Quest_18( 18, "quest_18", false, false, false, "100,150,220" ) );
		fields.set( "quest_19" , new Quest_19( 19, "quest_19", false, false, false, "100,150,220" ) );
		fields.set( "quest_20" , new Quest_20( 20, "quest_20", false, false, false, "100,150,220" ) );
		fields.set( "quest_21" , new Quest_21( 21, "quest_21", false, false, false, "100,150,220" ) );
		fields.set( "quest_22" , new Quest_22( 22, "quest_22", false, false, false, "50,70,100" ) );
		fields.set( "quest_23" , new Quest_23( 23, "quest_23", false, false, false, "70,85,160" ) );
		fields.set( "quest_24" , new Quest_24( 24, "quest_24", false, false, false, "85,100,160" ) );
		fields.set( "quest_25" , new Quest_25( 25, "quest_25", false, false, false, "90,108,180" ) );
		fields.set( "quest_26" , new Quest_26( 26, "quest_26", false, false, false, "100,118,190" ) );
		fields.set( "quest_27" , new Quest_27( 27, "quest_27", false, false, false, "100,130,180" ) );
		fields.set( "quest_28" , new Quest_28( 28, "quest_28", false, false, false, "90,130,180" ) );
		fields.set( "quest_29" , new Quest_29( 29, "quest_29", false, false, false, "100,125,170" ) );
		fields.set( "quest_30" , new Quest_30( 30, "quest_30", false, false, false, "90,130,180" ) );
		//fields.set( "quest_31" , new Quest_31( 31, "quest_31", false, false, false, "100,100,100" ) );
		//fields.set( "quest_32" , new Quest_32( 32, "quest_32", false, false, false, "100,100,100" ) );
		//fields.set( "quest_33" , new Quest_33( 33, "quest_33", false, false, false, "100,100,100" ) );
		//fields.set( "quest_34" , new Quest_34( 34, "quest_34", false, false, false, "100,100,100" ) );
		//fields.set( "quest_35" , new Quest_35( 35, "quest_35", false, false, false, "100,100,100" ) );
		
		
		fields.set( "battle_1" , new Battle_1( 1, "battle_1", false, false, false, "80,120,200" ) );
		fields.set( "battle_2" , new Battle_2( 2, "battle_2", false, false, false, "80,120,200" ) );
		fields.set( "battle_101" , new Battle_101( 101, "battle_101", false, false, false, "80,120,200" ) );
		fields.set( "battle_102" , new Battle_102( 102, "battle_102", false, false, false, "80,120,200" ) );
		fields.set( "battle_201" , new Battle_201( 201, "battle_201", false, false, false, "80,120,200" ) );
		fields.set( "battle_202" , new Battle_202( 202, "battle_202", false, false, false, "80,120,200" ) );
		fields.set( "battle_301" , new Battle_301( 301, "battle_301", false, false, false, "100,150,250" ) );
		fields.set( "battle_302" , new Battle_302( 302, "battle_302", false, false, false, "100,150,250" ) );
		fields.set( "battle_401" , new Battle_401( 401, "battle_401", false, false, false, "100,150,250" ) );
		fields.set( "battle_402" , new Battle_402( 402, "battle_402", false, false, false, "100,150,250" ) );
		fields.set( "battle_501" , new Battle_501( 501, "battle_501", false, false, false, "100,150,250" ) );
		fields.set( "battle_502" , new Battle_502( 502, "battle_502", false, false, false, "100,150,250" ) );
		fields.set( "battle_601" , new Battle_601( 601, "battle_601", false, false, false, "100,150,250" ) );
		fields.set( "battle_602" , new Battle_602( 602, "battle_602", false, false, false, "100,150,250" ) );
		
		fields.set( "battle_701" , new Battle_601( 701, "battle_701", false, false, false, "150,200,300" ) );
		fields.set( "battle_702" , new Battle_602( 702, "battle_702", false, false, false, "150,200,300" ) );
		fields.set( "battle_801" , new Battle_601( 801, "battle_801", false, false, false, "150,200,300" ) );
		fields.set( "battle_802" , new Battle_602( 802, "battle_802", false, false, false, "150,200,300" ) );
		fields.set( "battle_901" , new Battle_601( 901, "battle_901", false, false, false, "150,200,300" ) );
		fields.set( "battle_902" , new Battle_602( 902, "battle_902", false, false, false, "150,200,300" ) );
	}
}