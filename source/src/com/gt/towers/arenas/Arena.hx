package com.gt.towers.arenas;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.StringFieldMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Arena 
{
	public var index:Int;
	public var min:Int;
	public var max:Int;
	public var minWinStreak:Int;
	public var cards:IntList;

	public function new(index:Int, min:Int, max:Int, minWinStreak:Int, cards:IntList)
	{
		this.index = index;
		this.min = min;
		this.max = max;
		this.minWinStreak = minWinStreak;
		this.cards = cards;
	}
}