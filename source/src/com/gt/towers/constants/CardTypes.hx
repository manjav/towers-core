package com.gt.towers.constants;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Babak Sheikh Salimi
 */
class CardTypes 
{
    public static var INITIAL:Int = 401;
	
    public static var IMPROVE:Int = -2;
    public static var NONE:Int = -1;
	
	public static var C000:Int = 0;
	public static var C001:Int = 1;
	
	/*public static var C100:Int = 100;
	public static var C101:Int = 101;
	public static var C102:Int = 102;
	public static var C103:Int = 103;
	public static var C104:Int = 104;
	public static var C105:Int = 105;
	public static var C106:Int = 106;
	public static var C107:Int = 107;
	public static var C108:Int = 108;
	public static var C109:Int = 109;
	*/
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
	public static var C504:Int = 504;
	
	public function new() { }
	
	public static function get_rarity(type:Int):Int
	{
		if 		( (type % 10) > 8 ) 	return 2;// rare
		else if ( (type % 10) > 6 ) 	return 1;// uncommon
		else							return 0;// common
	}
	
	public static function migrate( oldType:Int ) : Int
	{
		return switch( oldType )
		{
			case 10 : 400;
			case 11 : 401;
			case 12 : 402;
			case 13 : 403;
			case 14 : 404;
			case 20 : 200;
			case 21 : 201;
			case 22 : 202;
			case 23 : 203;
			case 24 : 204;
			case 30 : 300;
			case 31 : 301;
			case 32 : 302;
			case 33 : 303;
			case 34 : 304;
			case 40 : 500;
			case 41 : 501;
			case 42 : 502;
			case 43 : 503;
			case 44 : 504;

			default: oldType;
		}
	}
	

	public static function get_category(type:Int):Int
	{
		return Math.floor(type / 100) * 100;
	}
	
	/**public static function get_special_ability(type:Int):Int
	{
		
		 *  Speed		= 0
		 *  Health		= 1
		 * 	Power		= 2
		 * 	Generation	= 3
		 
		return type / 10;
	}*/
	
	public static function getAll():IntList
	{
		var ret:IntList = new IntList();

		ret.push(201);
		ret.push(202);
		ret.push(203);
		ret.push(204);
		ret.push(205);
		ret.push(206);
		ret.push(207);
		ret.push(208);
		ret.push(209);

		ret.push(301);
		ret.push(302);
		ret.push(303);
		ret.push(304);
		ret.push(305);
		ret.push(306);
		ret.push(307);
		ret.push(308);
		ret.push(309);

		ret.push(401);
		ret.push(402);
		ret.push(403);
		ret.push(404);
		ret.push(405);
		ret.push(406);
		ret.push(407);
		ret.push(408);
		ret.push(409);

		ret.push(501);
		ret.push(502);
		ret.push(503);
		ret.push(504);
		ret.push(505);
		ret.push(506);
		ret.push(507);
		ret.push(508);
		ret.push(509);

		return ret;
	}
}