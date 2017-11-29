package com.gt.towers;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.exchanges.ExchangeItem;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntExchangeMap;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntIntMap;
/**
 * ...
 * @author Mansour Djawadi
 */
class LoginData
{
	public static var coreSize:Int = 0;
	public var coreVersion:String = "3000.1129100849";//do not change len.
	public var noticeVersion:Int = 3000;
	public var forceVersion:Int = 3000;
	public var resources:IntIntMap;
	public var exchanges:IntList;
	public var deckSize:Int = 3;
	public var deck:IntList;
		
	public var nameMinLen:Int = 3;
	public var nameMaxLen:Int = 12;
	public var maxKeysPerDay:Int = 20;
	
	public function new()
	{
		resources = new IntIntMap();
		
		resources.set(ResourceType.XP, 0);
		resources.set(ResourceType.POINT, 0);
		resources.set(ResourceType.KEY, 0);
		resources.set(ResourceType.CURRENCY_SOFT, 100);
		resources.set(ResourceType.CURRENCY_HARD, 30);
		resources.set(ResourceType.CURRENCY_REAL, 2147483647);
		
		resources.set(BuildingType.B11_BARRACKS, 1);
		resources.set(BuildingType.B12_BARRACKS, 1);
		resources.set(BuildingType.B21_RAPID, 1);
		resources.set(BuildingType.B31_HEAVY, 1);
		resources.set(BuildingType.B13_BARRACKS, 1);
		resources.set(BuildingType.B14_BARRACKS, 1);
		resources.set(BuildingType.B22_RAPID, 1);
		resources.set(BuildingType.B32_HEAVY, 1);		
		
		exchanges = new IntList();
		exchanges.push(ExchangeType.S_41_KEYS);
		exchanges.push(ExchangeType.CHEST_CATE_101_DAILY);
		exchanges.push(ExchangeType.CHEST_CATE_111_BATTLE);
		exchanges.push(ExchangeType.CHEST_CATE_112_BATTLE);
		exchanges.push(ExchangeType.CHEST_CATE_113_BATTLE);
		exchanges.push(ExchangeType.CHEST_CATE_121_OFFER);
		exchanges.push(ExchangeType.CHEST_CATE_122_OFFER);
		exchanges.push(ExchangeType.CHEST_CATE_123_OFFER);
		
		deck = new IntList();
		deck.push(BuildingType.B11_BARRACKS);
		deck.push(BuildingType.B12_BARRACKS);
		deck.push(BuildingType.B21_RAPID);
		deck.push(BuildingType.B31_HEAVY);
	}
}
	
