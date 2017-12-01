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
		
		battles.set( "battle_1" , new Battle_1( 1, "battle_1", "", "", "", "70,110,160,20" ) );
		battles.set( "battle_2" , new Battle_2( 2, "battle_2", "", "", "", "70,110,160,20" ) );
		battles.set( "battle_3" , new Battle_3( 3, "battle_3", "", "", "", "70,110,160,20" ) );
		battles.set( "battle_4" , new Battle_4( 4, "battle_4", "", "", "", "70,110,160,20" ) );
		battles.set( "battle_5" , new Battle_5( 5, "battle_5", "", "", "", "70,110,160,20" ) );
		
		
		battles.set( "battle_101" , new Battle_101( 101, "battle_101", "", "", "", "80,120,200,20" ) );
		battles.set( "battle_102" , new Battle_102( 102, "battle_102", "", "", "", "80,120,200,20" ) );
		battles.set( "battle_103" , new Battle_103( 103, "battle_103", "", "", "", "80,120,200,20" ) );
		battles.set( "battle_104" , new Battle_2( 104, "battle_104", "", "", "", "70,110,160,20" ) );
		if ( game.appVersion > 2040 )
		{
			battles.set( "battle_105" , new Battle_105( 105, "battle_105", "", "", "", "80,120,200,20" ) );
			battles.set( "battle_106" , new Battle_106( 106, "battle_106", "", "", "", "80,120,200,20" ) );
		}
		
		
		battles.set( "battle_201" , new Battle_201( 201, "battle_201", "", "", "", "100,130,210,20" ) );
		battles.set( "battle_202" , new Battle_202( 202, "battle_202", "", "", "", "100,130,210,20" ) );
		battles.set( "battle_203" , new Battle_102( 203, "battle_203", "", "", "", "75,90,110,100" ) );
		if ( game.appVersion > 2040 )
		{
			battles.set( "battle_204" , new Battle_204( 204, "battle_204", "", "", "", "100,130,210,20" ) );
			battles.set( "battle_205" , new Battle_205( 205, "battle_205", "", "", "", "100,130,210,20" ) );
		}
		
		
		battles.set( "battle_301" , new Battle_301( 301, "battle_301", "", "", "", "100,150,250,20" ) );
		battles.set( "battle_302" , new Battle_302( 302, "battle_302", "", "", "", "100,150,250,20" ) );
		battles.set( "battle_303" , new Battle_202( 303, "battle_303", "", "", "", "100,150,250,20" ) );
		if ( game.appVersion > 2040 )
		{
			battles.set( "battle_304" , new Battle_304( 304, "battle_304", "", "", "", "100,150,250,20" ) );
			battles.set( "battle_305" , new Battle_305( 305, "battle_305", "", "", "", "100,150,250,20" ) );
		}
		
		
		battles.set( "battle_401" , new Battle_401( 401, "battle_401", "", "", "", "100,150,250,20" ) );
		battles.set( "battle_402" , new Battle_402( 402, "battle_402", "", "", "", "100,150,250,20" ) );
		battles.set( "battle_403" , new Battle_302( 403, "battle_403", "", "", "", "100,150,250,20" ) );
		if ( game.appVersion > 2040 )
		{
			battles.set( "battle_404" , new Battle_404( 404, "battle_404", "", "", "", "100,150,250,20" ) );
			battles.set( "battle_405" , new Battle_405( 405, "battle_405", "", "", "", "100,150,250,20" ) );
		}
		
		
		battles.set( "battle_501" , new Battle_501( 501, "battle_501", "", "", "", "100,150,250,20" ) );
		battles.set( "battle_502" , new Battle_502( 502, "battle_502", "", "", "", "100,150,250,20" ) );
		battles.set( "battle_503" , new Battle_402( 503, "battle_503", "", "", "", "100,150,250,20" ) );
		/*if ( game.appVersion > 2040 )
		{
			battles.set( "battle_504" , new Battle_407( 504, "battle_504", "", "", "", "100,150,250,20" ) );
			battles.set( "battle_505" , new Battle_408( 505, "battle_505", "", "", "", "100,150,250,20" ) );
		}
		*/
		
		battles.set( "battle_601" , new Battle_601( 601, "battle_601", "", "", "", "100,150,250,20" ) );
		battles.set( "battle_602" , new Battle_602( 602, "battle_602", "", "", "", "100,150,250,20" ) );
		battles.set( "battle_603" , new Battle_502( 603, "battle_603", "", "", "", "100,150,250,20" ) );
		/*if ( game.appVersion > 2040 )
		{
			battles.set( "battle_604" , new Battle_309( 604, "battle_604", "", "", "", "100,150,250,20" ) );
			battles.set( "battle_605" , new Battle_310( 605, "battle_605", "", "", "", "100,150,250,20" ) );
		}*/
		
		
		battles.set( "battle_701" , new Battle_601( 701, "battle_701", "", "", "", "150,200,300,20" ) );
		battles.set( "battle_702" , new Battle_602( 702, "battle_702", "", "", "", "150,200,300,20" ) );
		battles.set( "battle_703" , new Battle_310( 703, "battle_703", "", "", "", "150,200,300,20" ) );
		/*if ( game.appVersion > 2040 )
		{
			battles.set( "battle_704" , new Battle_403( 704, "battle_704", "", "", "", "150,200,300,20" ) );
			battles.set( "battle_705" , new Battle_504( 705, "battle_705", "", "", "", "150,200,300,20" ) );
		}*/
		
		
		battles.set( "battle_801" , new Battle_601( 801, "battle_801", "", "", "", "150,200,300,20" ) );
		battles.set( "battle_802" , new Battle_602( 802, "battle_802", "", "", "", "150,200,300,20" ) );
		battles.set( "battle_803" , new Battle_202( 803, "battle_803", "", "", "", "150,200,300,20" ) );
		/*if ( game.appVersion > 2040 )
		{
			battles.set( "battle_804" , new Battle_305( 804, "battle_804", "", "", "", "150,200,300,20" ) );
			battles.set( "battle_805" , new Battle_406( 805, "battle_805", "", "", "", "150,200,300,20" ) );
		}*/
		
		
		battles.set( "battle_901" , new Battle_601( 901, "battle_901", "", "", "", "150,200,300,20" ) );
		battles.set( "battle_902" , new Battle_602( 902, "battle_902", "", "", "", "150,200,300,20" ) );
		battles.set( "battle_903" , new Battle_502( 903, "battle_903", "", "", "", "150,200,300,20" ) );
		/*if ( game.appVersion > 2040 )
		{
			battles.set( "battle_904" , new Battle_205( 904, "battle_904", "", "", "", "150,200,300,20" ) );
			battles.set( "battle_905" , new Battle_310( 905, "battle_905", "", "", "", "150,200,300,20" ) );
		}*/
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