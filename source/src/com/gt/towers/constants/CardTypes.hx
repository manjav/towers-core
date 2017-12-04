package com.gt.towers.constants;

/**
 * ...
 * @author Babak Sheikh Salimi
 */
class CardTypes 
{
	public static var C001:Int = 1;
	
	public static var C100:Int = 100;
	public static var C101:Int = 101;
	public static var C102:Int = 102;
	public static var C103:Int = 103;
	public static var C104:Int = 104;
	public static var C105:Int = 105;
	public static var C106:Int = 106;
	public static var C107:Int = 107;
	public static var C108:Int = 108;
	public static var C109:Int = 109;
	
	public static var C200:Int = 200;
	public static var C201:Int = 201;
	public static var C202:Int = 202;
	public static var C203:Int = 203;
	public static var C204:Int = 204;
	public static var C205:Int = 205;
	public static var C206:Int = 206;
	public static var C207:Int = 207;
	public static var C208:Int = 208;
	public static var C209:Int = 209;
	
	public static var C300:Int = 300;
	public static var C301:Int = 301;
	public static var C302:Int = 302;
	public static var C303:Int = 303;
	public static var C304:Int = 304;
	public static var C305:Int = 305;
	public static var C306:Int = 306;
	public static var C307:Int = 307;
	public static var C308:Int = 308;
	public static var C309:Int = 309;
	
	public static var C400:Int = 400;
	public static var C401:Int = 401;
	public static var C402:Int = 402;
	public static var C403:Int = 403;
	public static var C404:Int = 404;
	public static var C405:Int = 405;
	public static var C406:Int = 406;
	public static var C407:Int = 407;
	public static var C408:Int = 408;
	public static var C409:Int = 409;
	
	public static var C500:Int = 500;
	public static var C501:Int = 501;
	public static var C502:Int = 502;
	public static var C503:Int = 503;
	
	public function new() { }
	
	public static function get_rarity(type:Int):Int
	{
		return switch(type)
		{
			// rare
			case 101: 1;
			case 102 : 1;
			
			// uncommon
			case 201: 2;
			case 203: 2; 
				
			default: 0; // common
		}
		return 0;
	}
	
	/**public static function get_special_ability(type:Int):Int
	{
		
		 *  Speed		= 0
		 *  Health		= 1
		 * 	Power		= 2
		 * 	Generation	= 3
		 
		return type / 10;
	}*/
}