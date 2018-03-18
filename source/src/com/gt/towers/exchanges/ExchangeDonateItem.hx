package com.gt.towers.exchanges;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Babak Sheikh Salimi
 */
class ExchangeDonateItem extends ExchangeItem 
{

	public var cardType:Int;
	public static var DONATION_STATE_AVAILABLE:Int = 0;
	public static var DONATION_STATE_EXPIRED:Int = 1;
	
	public function new(type:Int, reqKey_0:Int=-1, reqVal_0:Int=-1, outKey_0:Int=-1, outVal_0:Int=-1, numExchanges:Int=1, expiredAt:Int=0, ct:Int) 
	{
		this.requirements = new IntIntMap();
		if (reqKey_0 > -1 )
			requirements.set(reqKey_0, reqVal_0);
			
		this.outcomes = new IntIntMap();
		if (outKey_0 > -1 )
			outcomes.set(outKey_0, outVal_0);

		cardType = ct;
		super(type, reqKey_0, reqVal_0, outKey_0, outVal_0, numExchanges, expiredAt);
	}
	
	override public function getState(now:Int):Int
	{
		if ( expiredAt > now )
			return DONATION_STATE_AVAILABLE;
		return DONATION_STATE_EXPIRED;
	}
	
}