package com.gt.towers.constants;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class StickerType 
{

	public function new() {}
	
	public static var S0_LUCKKY:Int = 0;
	public static var S1_THANKS:Int = 1;
	public static var S2_THREAT:Int = 2;
	public static var S3_WELL_PLAYED:Int = 3;
	public static var S4_OOPS:Int = 4;
	public static var S5_ALL_YOU_GOT:Int = 5;
	public static var S6_HAHAHA:Int = 6;
	public static var S7_REVENGE:Int = 7;
	public static var S8_CURSED:Int = 8;
	
	public static function getAll(game:Game):IntList
	{
		var ret:IntList = new IntList();
		
		ret.push( S0_LUCKKY );
		ret.push( S1_THANKS );
		ret.push( S2_THREAT );
		ret.push( S3_WELL_PLAYED );
		ret.push( S4_OOPS );
		ret.push( S5_ALL_YOU_GOT );
		ret.push( S6_HAHAHA );
		ret.push( game.player.inFriendlyBattle ? S7_REVENGE : S8_CURSED );
		
		return ret;
	}

	public static function getCompatitionStickers(ratio:Float) : IntList
	{
		var ret = new IntList();
		if( ratio < 0 )
		{
			ret.push( S0_LUCKKY );
			ret.push( S4_OOPS );
			ret.push( S8_CURSED );
		}
		else if( ratio > 0 )
		{
			ret.push( S2_THREAT );
			ret.push( S5_ALL_YOU_GOT );
			ret.push( S6_HAHAHA );
		}
		else
		{
			ret.push( S1_THANKS );
			ret.push( S3_WELL_PLAYED );
		}
		return ret;
	}
	
	private static function getRandomStart(ratio:Float) : Int
	{
		var stks = getCompatitionStickers(ratio);
		return stks.get(Math.floor( Math.random() * stks.size() ));
	}

	
	private static function getAnswers(sticker:Int) : IntList
	{
		var ret:IntList = new IntList();
		
		if ( sticker == S3_WELL_PLAYED )
			ret.push( S1_THANKS );
		else if ( sticker == S0_LUCKKY || sticker == S4_OOPS || sticker == S7_REVENGE || sticker == S8_CURSED)
			ret.push( S6_HAHAHA );
		else if ( sticker == S6_HAHAHA )
			ret.push( S0_LUCKKY );
		else if ( sticker == S5_ALL_YOU_GOT )
			ret.push( S2_THREAT );
			
		return ret;
	}
	public static function getRandomAnswer(sticker:Int):Int
	{
		var answers = getAnswers(sticker);
		if (answers.size() == 0)
			return -1;
		
		return answers.get( Math.floor(Math.random() * answers.size()) );
	}
		
}