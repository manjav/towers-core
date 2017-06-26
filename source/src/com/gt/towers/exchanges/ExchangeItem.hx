package com.gt.towers.exchanges;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class ExchangeItem extends Exchange
{
	public var enabled:Bool = true;
	public var requirements:IntIntMap;
	public var outcomes:IntIntMap;

	public function new(type:Int, reqKey_0:Int=-1, reqVal_0:Int=-1, outKey_0:Int=-1, outVal_0:Int=-1, numExchanges:Int=1, expiredAt:Int=0) 
	{
		super(type, numExchanges, expiredAt, 0);
		
		this.requirements = new IntIntMap();
		if (reqKey_0 > -1 )
			requirements.set(reqKey_0, reqVal_0);
			
		this.outcomes = new IntIntMap();
		if (outKey_0 > -1 )
			outcomes.set(outKey_0, outVal_0);
	}
}