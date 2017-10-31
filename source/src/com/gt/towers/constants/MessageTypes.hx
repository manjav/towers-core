package com.gt.towers.constants;

/**
 * ...
 * @author Mansour Djawadi
 */
class MessageTypes 
{
    public static var M0_TEXT:Int = 0;
	
    public static var M10_COMMENT_JOINT:Int = 10;
    public static var M11_COMMENT_LEAVE:Int = 11;
    public static var M12_COMMENT_KICK:Int = 12;
    public static var M13_COMMENT_PROMOTE:Int = 13;
    public static var M14_COMMENT_DEMOTE:Int = 14;
    public static var M15_COMMENT_EDIT:Int = 15;
	public static var M16_COMMENT_JOIN_ACCEPT:Int = 16;
	public static var M17_COMMENT_JOIN_REJECT:Int = 17;

	public static var M20_DONATE:Int = 20;

	public static var M30_FRIENDLY_BATTLE:Int = 30;

	public static var M41_CONFIRM_JOIN:Int = 41;
	public static var M42_CONFIRM_INVITATION:Int = 42;

	public static var M50_URL:Int = 50;

	
	public function new()  { }
	
	public static function isComment(type:Int) : Bool
	{
		return type >= 10 && type < 20;
	}
	
	public static function isConfirm(type:Int) : Bool
	{
		return type >= 40 && type < 50;
	}
}