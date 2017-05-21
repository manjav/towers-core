package com.gt.towers.shop;

import com.gt.towers.Game;
import com.gt.towers.Player;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.ShopItemType;
import com.gt.towers.utils.maps.Bundle;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntShopMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Shop 
{
	public var items:IntShopMap;

	public function new() 
	{
		items = new IntShopMap();
		
		var shopReq_0:Bundle = new Bundle();
		shopReq_0.set(ResourceType.CURRENCY_HARD, 3500);
		
		var shopComes_0:Bundle = new Bundle();
		shopComes_0.set(ResourceType.CURRENCY_0, 1000);
		
		items.set(ShopItemType.SHOP_ITEM_0, new ShopItem(0, shopReq_0, shopComes_0));

		
		var shopReq_1:Bundle = new Bundle();
		shopReq_1.set(ResourceType.CURRENCY_HARD, 3000);
		
		var shopComes_1:Bundle = new Bundle();
		shopComes_1.set(ResourceType.CURRENCY_0, 1500);
		
		items.set(ShopItemType.SHOP_ITEM_1, new ShopItem(1, shopReq_1, shopComes_1));

		
		var shopReq_2:Bundle = new Bundle();
		shopReq_2.set(ResourceType.CURRENCY_HARD, 6000);
		
		var shopComes_2:Bundle = new Bundle();
		shopComes_2.set(ResourceType.CURRENCY_0, 2000);
		
		items.set(ShopItemType.SHOP_ITEM_2, new ShopItem(2, shopReq_2, shopComes_2));

		
		var shopReq_3:Bundle = new Bundle();
		shopReq_3.set(ResourceType.CURRENCY_HARD, 7000);
		
		var shopComes_3:Bundle = new Bundle();
		shopComes_3.set(ResourceType.CURRENCY_0, 4000);
		
		items.set(ShopItemType.SHOP_ITEM_3, new ShopItem(3, shopReq_3, shopComes_3));
	}
	
	/**
	 * validate requiremets must be enougth 
	 * @param	itemType
	 * @return
	 */
	public function purchase (itemType:Int):Bool
	{
		var item:ShopItem = items.get(itemType);
		Game.get_instance().get_player().get_resources().reduceMap(item.requirements);
		Game.get_instance().get_player().get_resources().increaseMap(items.get(itemType).outcomes);
		return true;
	}
}