package com.gt.towers.constants;

/**
 * ...
 * @author Mansour Djawadi
 */
class PrefsTypes 
{
    public static var P30_OFFER_RATING:Int = 30;
    public static var P31_OFFER_TELEGRAM:Int = 31;
    public static var P32_OFFER_INSTAGRAM:Int = 32;
    public static var P33_OFFER_FRIENDSHIP:Int = 33;
	
	public function new()  {}
	
	public static function isOffer(type:Int) : Bool
	{
		return type >= 30 && type < 40;
	}
}