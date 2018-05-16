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
	public var outcomesStr:String;
	
	public function new(type:Int, numExchanges:Int = 1, expiredAt:Int = 0, outcomesStr:String = "") 
	{
		this.type = type;
		this.numExchanges = numExchanges;
		this.expiredAt = expiredAt;
		this.outcome = Std.parseInt(outcomesStr.split(":")[0]);
		this.outcomesStr = outcomesStr;
	}
}