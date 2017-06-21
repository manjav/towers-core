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
	public var coreVersion:String = "107.0621023921";//do not change len.
	public var noticeVersion:Int = 102;
	public var forceVersion:Int = 100;
	public var resources:IntIntMap;
	public var buildingsLevel:IntIntMap;
	public var exchanges:IntList;
	
	public function new()
	{
		resources = new IntIntMap();
		
		resources.set(ResourceType.XP, 0);
		resources.set(ResourceType.POINT, 0);
		resources.set(ResourceType.CURRENCY_SOFT, 100);
		resources.set(ResourceType.CURRENCY_HARD, 30);
		
		resources.set(BuildingType.B11_BARRACKS, 1);
		
		buildingsLevel = new IntIntMap();
		buildingsLevel.set(BuildingType.B11_BARRACKS, 1);
		
		exchanges = new IntList();
		exchanges.push(ExchangeType.S_21_BUILDING);
		exchanges.push(ExchangeType.S_31_CHEST);
		exchanges.push(ExchangeType.S_32_CHEST);
		exchanges.push(ExchangeType.S_33_CHEST);
	}
}
