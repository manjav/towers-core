package com.gt.towers.constants;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Babak Sheikh Salimi
 */
class CardTypes 
{
	static public var AVAILABLITY_EXISTS:Int = 0;
    static public var AVAILABLITY_WAIT:Int = -1;
    static public var AVAILABLITY_NOT:Int = -2;

    public static var INITIAL:Int = 401;
	
    public static var IMPROVE:Int = -2;
    public static var NONE:Int = -1;
	
	public static var C000:Int = 0;
	public static var C001:Int = 1;
	
	public static var C100:Int = 100;
	
	// troops
	public static var C101:Int = 101;
	public static var C102:Int = 102;
	public static var C103:Int = 103;
	public static var C104:Int = 104;
	public static var C105:Int = 105;
	public static var C106:Int = 106;
	public static var C107:Int = 107;
	public static var C108:Int = 108;
	public static var C109:Int = 109;
	public static var C110:Int = 110;
	public static var C111:Int = 111;
	public static var C112:Int = 112;
	public static var C113:Int = 113;
	public static var C114:Int = 114;
	public static var C115:Int = 115;
	
	// spells
	public static var C151:Int = 151;
	public static var C152:Int = 152;
	public static var C153:Int = 153;
	public static var C154:Int = 154;
	public static var C155:Int = 155;
	public static var C156:Int = 156;
	public static var C157:Int = 157;
	public static var C158:Int = 158;
	public static var C159:Int = 159;

	// buildings
	public static var C201:Int = 201;

	
	
	public function new() {}
	
	/*public static function migrate( oldType:Int ) : Int
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
	}*/
	

	public static function get_category(type:Int):Int
	{
		return Math.floor(type / 50) * 50;
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
		var i = 101;
		while ( i <= 115 )
		{
			ret.push(i);
			i ++;
		}
		i = 151;
		while ( i <= 159 )
		{
			ret.push(i);
			i ++;
		}
		return ret;
	}
}