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
	public static var CURRENCY_REAL:Int = 1101;
	
	public static var NUM_RESOURCES:Int = 5;
	
	public function new() {	}
	
	static public function isBuilding(type:Int) 
	{
		return type < 1000; 
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
	
}