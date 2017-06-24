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
	public static var CURRENCY_REAL:Int = 1004;
	
	public static var NUM_RESOURCES:Int = 5;
	
	public function new() {	}
	
	static public function isBuilding(type:Int) 
	{
		return type < 1000; 
	}
}