package com.gt.towers.exchanges;

/**
 * ...
 * @author ...
 */
class ExchangeDonateItem extends ExchangeItem 
{

	public var cardType:Int;
	public static var DONATION_STATE_AVAILABLE:Int = 0;
	public static var DONATION_STATE_EXPIRED:Int = 1;
	
	public function new(type:Int, reqKey_0:Int=-1, reqVal_0:Int=-1, outKey_0:Int=-1, outVal_0:Int=-1, numExchanges:Int=1, expiredAt:Int=0) 
	{
		super(type, reqKey_0, reqVal_0, outKey_0, outVal_0, numExchanges, expiredAt);
		
	}
	
	override public function getState(now:Int):Int
	{
		if ( expiredAt > now )
			return DONATION_STATE_AVAILABLE;
		return DONATION_STATE_EXPIRED;
	}
	
	public function isRequest():Bool
	{
		return false;
	}
}