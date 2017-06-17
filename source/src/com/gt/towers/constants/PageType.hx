package com.gt.towers.constants;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class PageType 
{

	public function new() {}
	
	public static var S0_SHOP:Int = 0;
	public static var S1_BATTLE:Int = 1;
	public static var S2_DECK:Int = 2;
	public static var SOCIAL:Int = 3;
	public static var RANKING:Int = 4;
	
	public static function getAll():IntList
	{
		var ret:IntList = new IntList();
		
		ret.push( S0_SHOP );
		ret.push( S1_BATTLE );
		ret.push( S2_DECK );
		
		return ret;
	}

}