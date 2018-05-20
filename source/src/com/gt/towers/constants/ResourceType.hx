package com.gt.towers.constants;

/**
 * ...
 * @author Mansour Djawadi
 */

class ResourceType 
{
	public static var XP:Int = 1000;
	public static var POINT:Int = 1001;
	public static var CURRENCY_SOFT:Int = 1002;
	public static var CURRENCY_HARD:Int = 1003;
	public static var KEY:Int = 1004;
	public static var NUM_RESOURCES:Int = 5;

	public static var CURRENCY_REAL:Int = 1101;
	
	public static var BATTLES_COUNT:Int = 1201;
	public static var BATTLES_WINS:Int = 1202;
	public static var BATTLE_CHEST_OPENED:Int = 1203;
	public static var BATTLES_COUNT_WEEKLY:Int = 1204;
	public static var FREE_CHEST_OPENED:Int = 1205;
	
	public static var WIN_STREAK:Int = 1211;
	
	
	public function new() {	}
	
	static public function isBuilding(type:Int) 
	{
		return (type >= 10 && type < 50) || (type >= 60 && type < 1000); 
	}
	
	static public function getName(type:Int) : String
	{
		if ( type == XP ) return "XP";
		else if ( type == POINT ) return "POINT";
		else if ( type == KEY ) return "KEY";
		else if ( type == CURRENCY_SOFT ) return "CURRENCY_SOFT";
		else if ( type == CURRENCY_HARD ) return "CURRENCY_HARD";
		else if ( type == CURRENCY_REAL ) return "CURRENCY_REAL";
		else return "TYPE_" + type;
	}
	
	static public function isBook(type:Int) 
	{
		return type >= 50 && type < 60;
	}
}