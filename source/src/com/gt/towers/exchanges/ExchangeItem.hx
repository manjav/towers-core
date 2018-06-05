package com.gt.towers.exchanges;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.constants.ResourceType;
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

	public function new(type:Int, numExchanges:Int = 1, expiredAt:Int = 0, reqsStr:String = "", outsStr:String = "") 
	{
		super(type, numExchanges, expiredAt, outsStr);
		
		this.category = ExchangeType.getCategory(type);
		
		/*if( reqKey_0 > -1 )
			this.requirements.set(reqKey_0, reqVal_0);
		if( outKey_0 > -1 )
			this.outcomes.set(outKey_0, outVal_0);*/
		
		var list:Array<String>;
		var listLen:Int;
		var kayVal:Array<String>;
		//trace("type", type, "numExchanges", numExchanges, "expiredAt", expiredAt, "reqsStr", reqsStr, "outsStr", outsStr);
		this.requirements = new IntIntMap();
		if( reqsStr != "" )
		{
			list = reqsStr.split(",");
			listLen = list.length - 1;
			while ( listLen >= 0 )
			{
				kayVal = list[listLen].split(":");
				this.requirements.increase(Std.parseInt(kayVal[0]), kayVal.length > 1 ? Std.parseInt(kayVal[1]) : 0 );
				//trace("reqsStr", list[listLen], Std.parseInt(kayVal[0]), kayVal.length > 1 ? Std.parseInt(kayVal[1]) : 0);
				listLen --;
			}
		}
		
		this.outcomes = new IntIntMap();
		if( outsStr != "" )
		{
			list = outsStr.split(",");
			listLen = list.length - 1;
			while ( listLen >= 0 )
			{
				kayVal = list[listLen].split(":");
				this.outcomes.increase(Std.parseInt(kayVal[0]), kayVal.length > 1 ? Std.parseInt(kayVal[1]) : 0 );
				//trace("outsStr", list[listLen], Std.parseInt(kayVal[0]), kayVal.length > 1 ? Std.parseInt(kayVal[1]) : 0);
				listLen --;
			}
		}
	}
	
	public static var CHEST_STATE_EMPTY:Int = -1;
	public static var CHEST_STATE_WAIT:Int = 0;
	public static var CHEST_STATE_BUSY:Int = 1;
	public static var CHEST_STATE_READY:Int = 2;
	public function getState(now:Int):Int
	{
		if( outcome == 0 && category == ExchangeType.C110_BATTLES )
			return CHEST_STATE_EMPTY;
		else if( expiredAt == 0 )
			return CHEST_STATE_WAIT;
		else if( expiredAt > now )
			return CHEST_STATE_BUSY;
		return CHEST_STATE_READY;
	}
	
/*	public function isLimited():Bool
    {
        return category > 20 && category < 110;
    }
*/
	public function isBook():Bool
	{
		return category >= 100 && category < 130;
	}
	
	public function isIncreamental() 
	{
		return type == ExchangeType.C42_RENAME || type == ExchangeType.C43_ADS;
	}
	
	public function containBook() : Int
	{
		var outs = outcomes.keys();
		var step = outs.length - 1;
		while ( step >= 0 )
		{
			if( ResourceType.isBook( outs[step] ) )
				return outs[step];
			step --;
		}
		return -1;
	}
	
	public function createOutcomesStr() : String
	{
		outcomesStr = "";
		var outs = outcomes.keys();
		var step = outs.length - 1;
		while ( step >= 0 )
		{
			outcomesStr += outs[step] + ":" + outcomes.get(outs[step]);
			if( step > 0 )
				outcomesStr += ",";
			step --;
		}
		return outcomesStr;
	}

}