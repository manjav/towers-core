package com.gt.towers.others;
import com.gt.towers.utils.lists.IntList;

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
	public var cardsStr:String;
	public var cards:IntList;

	public function new(index:Int, min:Int, max:Int, minWinStreak:Int, cards:String)
	{
		this.index = index;
		this.min = min;
		this.max = max;
		this.cardsStr  = cards;
		this.minWinStreak = minWinStreak;
		this.cards = new IntList();
		if( cardsStr == null || cardsStr == "" )
			return;
			
		var t = 0;
		var ts = cardsStr.split(',');
		while (t < ts.length)
		{
			this.cards.push(Std.parseInt(ts[t]));
			t ++;
		}
	}
}