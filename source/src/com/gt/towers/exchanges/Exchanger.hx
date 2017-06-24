package com.gt.towers.exchanges;

import com.gt.towers.Game;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.Bundle;
import com.gt.towers.utils.maps.IntExchangeMap;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntShopMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Exchanger 
{
	
	public var exchanges:IntExchangeMap;
	public var bundlesMap:IntShopMap;

	public function new(initData : InitData) 
	{
		bundlesMap = new IntShopMap();
		
		exchanges = initData.exchanges;
		
		var i = 0;
		var exchangeKeys = exchanges.keys();
		while ( i < exchangeKeys.length )
		{
			var ex = exchanges.get(exchangeKeys[i]);
			if ( ExchangeType.getCategory( exchangeKeys[i] ) == ExchangeType.S_20_BUILDING )
				bundlesMap.set( exchangeKeys[i], new ExchangeItem ( exchangeKeys[i], -1, -1, ex.outcome, 1, ex.numExchanges, ex.expiredAt ) );
			
			if ( ExchangeType.getCategory( exchangeKeys[i] ) == ExchangeType.S_30_CHEST )
				bundlesMap.set( exchangeKeys[i], new ExchangeItem ( exchangeKeys[i], -1 , -1, -1, -1, ex.numExchanges, ex.expiredAt ) );
				
			i ++;
		}
		
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- GEM -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		bundlesMap.set( ExchangeType.S_1_HARD,  new ExchangeItem ( ExchangeType.S_1_HARD, ResourceType.CURRENCY_REAL, 3500, ResourceType.CURRENCY_HARD, 1500 ) );
		bundlesMap.set( ExchangeType.S_2_HARD,  new ExchangeItem ( ExchangeType.S_2_HARD, ResourceType.CURRENCY_REAL, 6000, ResourceType.CURRENCY_HARD, 2000 ) );
		bundlesMap.set( ExchangeType.S_3_HARD,  new ExchangeItem ( ExchangeType.S_3_HARD, ResourceType.CURRENCY_REAL, 7000, ResourceType.CURRENCY_HARD, 4000 ) );
		
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- MONEY -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		bundlesMap.set( ExchangeType.S_11_SOFT,  new ExchangeItem ( ExchangeType.S_11_SOFT, ResourceType.CURRENCY_HARD, 120, ResourceType.CURRENCY_SOFT, 1800 ) );
		bundlesMap.set( ExchangeType.S_12_SOFT,  new ExchangeItem ( ExchangeType.S_12_SOFT, ResourceType.CURRENCY_HARD, 220, ResourceType.CURRENCY_SOFT, 2400 ) );
		bundlesMap.set( ExchangeType.S_13_SOFT,  new ExchangeItem ( ExchangeType.S_13_SOFT, ResourceType.CURRENCY_HARD, 320, ResourceType.CURRENCY_SOFT, 3600 ) );
	}
	
	/**
	 * validate requiremets must be enougth 
	 * @param	itemId
	 * @return
	 */
	public function exchange (item:ExchangeItem, time:Int, confirmedHards:Int=0):Bool
	{
		var deductions = item.requirements.deductions();
		var needsHard = toHard(deductions);
		if ( !item.requirements.enough() && needsHard > confirmedHards  )
			return false;
		
		if ( ExchangeType.getCategory(item.type) == ExchangeType.S_20_BUILDING )
		{
			item.requirements = item.getSpecialRequierments();
		}
		else if ( ExchangeType.getCategory(item.type) == ExchangeType.S_30_CHEST )
		{
			var remaining = item.expiredAt - time;
			needsHard += timeToHard(remaining);
			if ( remaining > 0 && needsHard > confirmedHards )
				return false;
			
			item.outcomes = item.getChestOutcomes();
		}
		
		var playerResources = Game.get_instance().get_player().get_resources();
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
	
	public function getSpecialPrice( type:Int ) : Int
	{
		var ret = 0;
		var exchange = bundlesMap.get(type);
		var outKeys = exchange.outcomes.keys();
		var i = 0;
		while ( i < outKeys.length)
		{
			var building = Game.get_instance().get_player().get_buildings().get(outKeys[i]);
			ret += Math.floor(building.price(exchange.outcomes.get(outKeys[i])) * 0.3 * exchange.numExchanges );
			i ++;
		}
		return ret;
	}

	
	public static function toHard(requirements:Bundle):Int
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
				softs += Game.get_instance().get_player().get_buildings().get(reqKeys[i]).price();
			}
			i ++;
		}
		return softToHard(softs) + hards ;
	}
	
	public static function softToHard(price:Int):Int
	{
		return Math.round( price * 0.2 ) ;
	}
	public static function timeToHard(time:Int):Int
	{
		return Math.round( time * 0.05 ) ;
	}
	
	
	public static function bundleFactory(type:Int):Exchange
	{
		/*if ( ShopItemType.getCategory(type) == ShopItemType.S_20_BUILDING )
		{
			var count = item.outcomes.get(0);
			item.requirements.set(ResourceType.CURRENCY_SOFT, getBuildingCost(item.outcomes.keys()[0], type, count) );
		}
		
		if ( ShopItemType.getCategory(type) == ShopItemType.S_30_CHEST )
		{
		}
		*/
		
		return new Exchange(type,0,0,0);
	}

}