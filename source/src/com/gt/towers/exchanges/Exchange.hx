package com.gt.towers.exchanges;

/**
 * ...
 * @author Mansour Djawadi
 */
class Exchange 
{

	public var type:Int;
	public var numExchanges:Int;
	public var expiredAt:Int;
	public var outcome:Int;
	
	public function new(type:Int, numExchanges:Int = 1, expiredAt:Int = 0, outcome:Int = 0) 
	{
		this.type = type;
		this.numExchanges = numExchanges;
		this.expiredAt = expiredAt;
		this.outcome = outcome;
	}
	
}