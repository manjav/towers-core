package com.gt.towers.constants;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class StickerType 
{

	public function new() {}
	
	public static var S0_GOOD_LUCK:Int = 0;
	public static var S1_THANKS:Int = 1;
	public static var S2_WELL_PLAYED:Int = 2;
	public static var S3_GOOD_GAME:Int = 3;
	public static var S4_WOW:Int = 4;
	public static var S5_OOPS:Int = 5;
	public static var S6_HAHAHA:Int = 6;
	
	public static function getAll():IntList
	{
		var ret:IntList = new IntList();
		
		ret.push( S0_GOOD_LUCK );
		ret.push( S1_THANKS );
		ret.push( S2_WELL_PLAYED );
		ret.push( S3_GOOD_GAME );
		ret.push( S4_WOW );
		//ret.push( S5_OOPS );
		ret.push( S6_HAHAHA );
		
		return ret;
	}

	
	public static function getAnswers(sticker:Int):IntList
	{
		var ret:IntList = new IntList();
		
		if ( sticker == S0_GOOD_LUCK || sticker == S2_WELL_PLAYED  || sticker == S3_GOOD_GAME )
			ret.push( S1_THANKS );
		else if ( sticker == S4_WOW || sticker == S5_OOPS )
			ret.push( S6_HAHAHA );
			
		return ret;
	}
}