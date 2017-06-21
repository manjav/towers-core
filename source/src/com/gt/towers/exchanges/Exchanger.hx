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
	
#if java
	public static var S_21_BUILDING_TIME:java.lang.Long = 86400000;
	public static var S_31_CHEST_TIME:java.lang.Long = 21600000;
	public static var S_32_CHEST_TIME:java.lang.Long = 43200000;
	public static var S_33_CHEST_TIME:java.lang.Long = 86400000;
#end
	
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
			{
				var building = Game.get_instance().get_player().get_buildings().get(ex.outcome);
				bundlesMap.set( exchangeKeys[i], new ExchangeItem ( exchangeKeys[i], ResourceType.CURRENCY_SOFT, Math.floor(building.price() * 0.3) * ex.numExchanges , ex.outcome, 1, ex.numExchanges, ex.expiredAt ) );
			}
			
			if ( ExchangeType.getCategory( exchangeKeys[i] ) == ExchangeType.S_30_CHEST )
				bundlesMap.set( exchangeKeys[i], new ExchangeItem ( exchangeKeys[i], -1 , -1, -1, -1, ex.numExchanges, ex.expiredAt ) );
				
			i++;
		}
		
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- GEM -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		bundlesMap.set( ExchangeType.S_1_HARD,  new ExchangeItem ( ExchangeType.S_1_HARD, ResourceType.CURRENCY_REAL, 3500, ResourceType.CURRENCY_HARD, 1500 ) );
		bundlesMap.set( ExchangeType.S_2_HARD,  new ExchangeItem ( ExchangeType.S_2_HARD, ResourceType.CURRENCY_REAL, 6000, ResourceType.CURRENCY_HARD, 2000 ) );
		bundlesMap.set( ExchangeType.S_3_HARD,  new ExchangeItem ( ExchangeType.S_3_HARD, ResourceType.CURRENCY_REAL, 7000, ResourceType.CURRENCY_HARD, 4000 ) );
		
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- MONEY -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		bundlesMap.set( ExchangeType.S_11_SOFT,  new ExchangeItem ( ExchangeType.S_11_SOFT, ResourceType.CURRENCY_HARD, 120, ResourceType.CURRENCY_SOFT, 1800 ) );
		bundlesMap.set( ExchangeType.S_12_SOFT,  new ExchangeItem ( ExchangeType.S_12_SOFT, ResourceType.CURRENCY_HARD, 220, ResourceType.CURRENCY_SOFT, 2400 ) );
		bundlesMap.set( ExchangeType.S_13_SOFT,  new ExchangeItem ( ExchangeType.S_13_SOFT, ResourceType.CURRENCY_HARD, 320, ResourceType.CURRENCY_SOFT, 3600 ) );
		
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- BUNUS TIME -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		//bundlesMap.set( ShopItemType.S_21_BUILDING,  new ShopItem(ShopItemType.SHOP_ITEM_10, ResourceType.CURRENCY_REAL, 2500, ResourceType.CURRENCY_SOFT, 10000 ) );
		
	}
	
	/**
	 * validate requiremets must be enougth 
	 * @param	itemId
	 * @return
	 */
	public function exchange (type:Int):Bool
	{
		var item:ExchangeItem = bundlesMap.get(type);
		
		if ( ExchangeType.getCategory(type) == ExchangeType.S_20_BUILDING)
		{
		}
		
		if ( ExchangeType.getCategory(type) == ExchangeType.S_30_CHEST )
		{
		}
	
		Game.get_instance().get_player().get_resources().reduceMap(item.requirements);
		Game.get_instance().get_player().get_resources().increaseMap(item.outcomes);
		return true;
	}
	
	/*public function getBuildingCost( type:Int , resourceType:Int , count:Int) : Int
	{
		var building = Game.get_instance().get_player().get_buildings().get(resourceType);
		var numExchanges = exchanges.get(type);
		return Math.floor(building.price(count) * 0.3 * numExchanges );
	}*/

	
	public static function toGem(price:Int):Int
	{
		return Math.round( price * 0.2 ) ;
	}
	
	public static function timeToGem(time:Int):Int
	{
		return Math.round( time * 0.2 ) ;
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