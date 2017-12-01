package com.gt.towers.constants;

/**
 * ...
 * @author Babak Sheikh Salimi
 */
class CardType 
{
	public static var C1000:Int = 1000;
	
	public static var C101:Int = 101;
	public static var C102:Int = 102;
	public static var C103:Int = 103;
	public static var C104:Int = 104;
	public static var C105:Int = 105;
	public static var C106:Int = 106;
	public static var C107:Int = 107;
	
	public static var C201:Int = 201;
	public static var C202:Int = 202;
	public static var C203:Int = 203;
	public static var C204:Int = 204;
	public static var C205:Int = 205;
	public static var C206:Int = 206;
	public static var C207:Int = 207;
	
	public static var C301:Int = 301;
	public static var C302:Int = 302;
	public static var C303:Int = 303;
	public static var C304:Int = 304;
	public static var C305:Int = 305;
	public static var C306:Int = 306;
	public static var C307:Int = 307;
	
	public static var C401:Int = 401;
	public static var C402:Int = 402;
	public static var C403:Int = 403;
	public static var C404:Int = 404;
	public static var C405:Int = 405;
	public static var C406:Int = 406;
	public static var C407:Int = 407;
	
	public function new() { }
	
	public static function get_rarity(type:Int):Int
	{
		/**
		 *  Common	= 1
		 *  Rare	= 2
		 * 	Epic	= 3
		 */
		return Math.floor(type / 100);
	}
	
	/**public static function get_special_ability(type:Int):Int
	{
		
		 *  Speed		= 1
		 *  Health		= 2
		 * 	Power		= 3
		 * 	Generation	= 4
		 
		return type / 10;
	}*/
}