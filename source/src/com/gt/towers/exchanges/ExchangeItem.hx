package com.gt.towers.exchanges;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.Bundle;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class ExchangeItem extends Exchange
{
	public var enabled:Bool = true;
	public var requirements:Bundle;
	public var outcomes:Bundle;

	public function new(type:Int, reqKey_0:Int=-1, reqVal_0:Int=-1, outKey_0:Int=-1, outVal_0:Int=-1, numExchanges:Int=1, expiredAt:Int=0) 
	{
		super(type, numExchanges, expiredAt, 0);
		
		this.requirements = new Bundle();
		if (reqKey_0 > -1 )
			requirements.set(reqKey_0, reqVal_0);
			
		this.outcomes = new Bundle();
		if (outKey_0 > -1 )
			outcomes.set(outKey_0, outVal_0);
	}
/*	
	public static function instantiateRandom(type:Int):ExchangeItem
	{
		var ret = new ExchangeItem(type);
		ret.outcomes.set( Game.get_instance().get_player().get_buildings().getRandomKey(), 1);
		ret.requirements.set( ResourceType.CURRENCY_SOFT, -1);
		return ret;
	}*/
	
	public function getSpecialRequierments():Bundle
	{
		var ret = new Bundle();

		var outKeys = outcomes.keys();
		var i = 0;
		var softs = 0;
		while ( i < outKeys.length)
		{
			if (Game.get_instance().get_player().get_buildings().exists(outKeys[i]) )
			{
				var count = Math.round(Game.get_instance().get_player().get_buildings().get(outKeys[i]).price() * 0.5);
				var ratio = Std.int(Math.pow(2, cast(numExchanges, Float)));
				softs += count * ratio ;
			}
			i++;
		}
		ret.set( ResourceType.CURRENCY_SOFT, softs);
		return ret;
	}
	
	public function getChestOutcomes() 
	{
		var ret = new Bundle();
		#if java
			var player = Game.get_instance().get_player();
			ret.set(player.get_resources().getRandomKey(), Math.floor(Math.random() * 3));
			ret.set(ResourceType.CURRENCY_SOFT, Math.floor(Math.random() * 10));
		#end
		return ret;
	}
	
}