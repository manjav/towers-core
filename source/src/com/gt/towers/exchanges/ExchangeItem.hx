package com.gt.towers.exchanges;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class ExchangeItem extends Exchange
{
	public var category:Int;
	public var bonus:Int = 0;
	public var discount:Float = 1;
	public var enabled:Bool = true;
	public var requirements:IntIntMap;
	public var outcomes:IntIntMap;

	public function new(type:Int, reqKey_0:Int=-1, reqVal_0:Int=-1, outKey_0:Int=-1, outVal_0:Int=-1, numExchanges:Int=1, expiredAt:Int=0) 
	{
		super(type, numExchanges, expiredAt, outKey_0);
		
		this.category = ExchangeType.getCategory(type);
		this.requirements = new IntIntMap();
		if( reqKey_0 > -1 )
			this.requirements.set(reqKey_0, reqVal_0);
		this.outcomes = new IntIntMap();
		if( outKey_0 > -1 )
			this.outcomes.set(outKey_0, outVal_0);
	}
	
	public static var CHEST_STATE_WAIT:Int = 0;
	public static var CHEST_STATE_BUSY:Int = 1;
	public static var CHEST_STATE_READY:Int = 2;
	public function getState(now:Int):Int
	{
		if( expiredAt == 0 )
			return CHEST_STATE_WAIT;
		else if( expiredAt > now )
			return CHEST_STATE_BUSY;
		return CHEST_STATE_READY;
	}
	
	public function isLimited():Bool
    {
        return category > 20 && category < 110;
    }

	public function isBook():Bool
	{
		return category >= 100;
	}
}