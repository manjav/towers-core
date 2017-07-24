package com.gt.towers.exchanges;

import com.gt.towers.Game;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.utils.GameError;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntExchangeMap;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntShopMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Exchanger 
{
	private var game:Game;
	
	public var exchanges:IntExchangeMap;
	public var items:IntShopMap;

	public function new(game:Game, initData:InitData) 
	{
		this.game = game;
		items = new IntShopMap();
		
		exchanges = initData.exchanges;
		
		var i = 0;
		var exchangeKeys = exchanges.keys();
		while ( i < exchangeKeys.length )
		{
			var ex = exchanges.get(exchangeKeys[i]);
			if ( ExchangeType.getCategory( exchangeKeys[i] ) == ExchangeType.S_20_BUILDING )
				items.set( exchangeKeys[i], new ExchangeItem ( exchangeKeys[i], -1, -1, ex.outcome, 1, ex.numExchanges, ex.expiredAt ) );
			
			if ( ExchangeType.getCategory( exchangeKeys[i] ) == ExchangeType.S_30_CHEST )
				items.set( exchangeKeys[i], new ExchangeItem ( exchangeKeys[i], -1 , -1, -1, -1, ex.numExchanges, ex.expiredAt ) );
				
			i ++;
		}
		
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- GEM -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		items.set( ExchangeType.S_1_HARD,  new ExchangeItem ( ExchangeType.S_1_HARD, ResourceType.CURRENCY_REAL, 1500, ResourceType.CURRENCY_HARD, 10 ) );
		items.set( ExchangeType.S_2_HARD,  new ExchangeItem ( ExchangeType.S_2_HARD, ResourceType.CURRENCY_REAL, 10000, ResourceType.CURRENCY_HARD, 80 ) );
		items.set( ExchangeType.S_3_HARD,  new ExchangeItem ( ExchangeType.S_3_HARD, ResourceType.CURRENCY_REAL, 50000, ResourceType.CURRENCY_HARD, 450 ) );
	
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- MONEY -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		items.set( ExchangeType.S_11_SOFT,  new ExchangeItem ( ExchangeType.S_11_SOFT, ResourceType.CURRENCY_HARD,  20, ResourceType.CURRENCY_SOFT, 500 ) );
		items.set( ExchangeType.S_12_SOFT,  new ExchangeItem ( ExchangeType.S_12_SOFT, ResourceType.CURRENCY_HARD, 90, ResourceType.CURRENCY_SOFT, 2000 ) );
		items.set( ExchangeType.S_13_SOFT,  new ExchangeItem ( ExchangeType.S_13_SOFT, ResourceType.CURRENCY_HARD, 500, ResourceType.CURRENCY_SOFT, 10000 ) );
	}
	
	/**
	 * validate requiremets must be enougth 
	 * @param	itemId
	 * @return
	 */
	public function exchange (item:ExchangeItem, time:Int, confirmedHards:Int=0):Bool
	{
		var deductions = game.player.deductions(item.requirements);
		var needsHard = toHard(deductions);
		if ( !game.player.has(item.requirements) && needsHard > confirmedHards  )
			return false;
		
		if ( ExchangeType.getCategory(item.type) == ExchangeType.S_20_BUILDING )
		{
			if ( item.numExchanges > ExchangeType.getMaxExchanges(item.type) )
				return false;
				
			item.requirements = getSpecialRequierments(item);
		}
		else if ( ExchangeType.getCategory(item.type) == ExchangeType.S_30_CHEST )
		{
			var remaining = item.expiredAt - time;
			needsHard += timeToHard(remaining);
			if ( remaining > 0 && needsHard > confirmedHards )
				return false;
			
			item.outcomes = getChestOutcomes(item.type);
		}
		
		var playerResources = game.player.resources;
		playerResources.set(ResourceType.CURRENCY_HARD, playerResources.get(ResourceType.CURRENCY_HARD) - needsHard);
		playerResources.increaseMap(deductions);
		
		playerResources.reduceMap(item.requirements);
		playerResources.increaseMap(item.outcomes);
		
		if ( ExchangeType.getCategory(item.type) == ExchangeType.S_20_BUILDING )
			item.numExchanges ++;
		else if ( ExchangeType.getCategory(item.type) == ExchangeType.S_30_CHEST )
			item.expiredAt = time + ExchangeType.getCooldown(item.type);
				
		return true;
	}
	
	public function toHard(requirements:IntIntMap):Int
	{
		var reqKeys = requirements.keys();
		var softs = 0;
		var hards = 0;
		var i = 0;
		while ( i < reqKeys.length )
		{
			if (reqKeys[i] == ResourceType.CURRENCY_HARD )
				hards += requirements.get(reqKeys[i]);
			else if (reqKeys[i] == ResourceType.CURRENCY_SOFT )
				softs += requirements.get(reqKeys[i]);
			else if ( ResourceType.isBuilding(reqKeys[i])) 
			{
				softs += game.player.buildings.get(reqKeys[i]).price();
			}
			i ++;
		}
		return softToHard(softs) + hards ;
	}
	
	public function softToHard(price:Int):Int
	{
		return Math.round( price * 0.2 ) ;
	}
	public function timeToHard(time:Int):Int
	{
		var remainigHour = Math.floor(time / 3600);
		
		if ( remainigHour >= 24 )
			return 350 * Math.ceil(remainigHour / 24);
		else if ( remainigHour >= 18 )
			return 310;
		else if ( remainigHour >= 15 )
			return 280;
		else if ( remainigHour >= 12 )
			return 250;
		else if ( remainigHour >= 8 )
			return 250 - ( (12 - remainigHour) * 25 );
		else if ( remainigHour >= 4 )
			return 150 - ( ( 8 - remainigHour) * 20 );
		else if ( remainigHour >= 1 )
			return 70 - ( ( 4 - remainigHour) * 15 );
		else
			if ( (time / 60) > 45 )
				return 15;
			else if ( (time / 60) > 30 )
				return 10;
			else if ( (time / 60) > 15 )
				return 6;
			else
				return 3;
	}
	
	
	
	public function getSpecialRequierments(item:ExchangeItem):IntIntMap
	{
		var ret = new IntIntMap();

		var outKeys = item.outcomes.keys();
		var i = 0;
		var softs = 0;
		while ( i < outKeys.length )
		{
			if ( game.player.buildings.exists(outKeys[i]) )
			{
				var count = Math.round(game.player.buildings.get(outKeys[i]).price() * 0.5);
				var ratio = Std.int(Math.pow(2, cast(item.numExchanges, Float)));
				softs += count * ratio ;
			}
			i++;
		}
		ret.set( ResourceType.CURRENCY_SOFT, softs );
		return ret;
	}
	
	public function getChestOutcomes(type:Int) 
	{
		var ret = new IntIntMap();
	#if java 
			ret.set(game.player.resources.getRandomKey(), Math.floor(Math.random() * 3)+1);
			ret.set(ResourceType.CURRENCY_SOFT, Math.floor(Math.random() * 10) + 1);
			if(type > ExchangeType.S_31_CHEST)
				ret.set(ResourceType.CURRENCY_HARD, Math.floor(Math.random() * 2)+1);
	#end
		return ret;
	}
}