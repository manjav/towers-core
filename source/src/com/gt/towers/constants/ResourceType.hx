package com.gt.towers.constants;

/**
 * ...
 * @author Mansour Djawadi
 */

class ResourceType 
{
	public static var R1_XP:Int = 1000;
	public static var R2_POINT:Int = 1001;
	public static var R3_CURRENCY_SOFT:Int = 1002;
	public static var R4_CURRENCY_HARD:Int = 1003;
	public static var R5_CURRENCY_REAL:Int = 1101;
	public static var R6_TICKET:Int = 1005;
	
	public static var R11_OPERATIONS:Int = 1200;
	public static var R12_BATTLES:Int = 1201;
	public static var R13_BATTLES_WINS:Int = 1202;
	public static var R15_BATTLES_FRIENDLY:Int = 1206;
	public static var R16_WIN_RATE:Int = 1211;
	public static var R17_STARS:Int = 1217;
	
	public static var R21_BOOK_OPENED_BATTLE:Int = 1203;
	public static var R22_BOOK_OPENED_FREE:Int = 1205;
	public static var R30_CHALLENGES:Int = 1220;
	public static var R40_QUESTS:Int = 1230;
	
	public function new() {}
	static public function isBuilding(type:Int) 
	{
		return (type >= 10 && type < 50) || (type >= 60 && type < 1000); 
	}
	
	static public function getName(type:Int) : String
	{
			 if( type == R1_XP )			return "XP";
		else if( type == R2_POINT )			return "Point";
		else if( type == R3_CURRENCY_SOFT ) return "Coins";
		else if( type == R4_CURRENCY_HARD ) return "Gems";
		else if( type == R5_CURRENCY_REAL ) return "Real";
		else if( type == R17_STARS )		return "Stars";
		else return "TYPE_" + type;
	}
	
	static public function isBook(type:Int) 
	{
		return type >= 50 && type < 60;
	}
}