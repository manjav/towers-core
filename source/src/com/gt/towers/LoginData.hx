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
	
	public var coreVersion:String = "117.0815161820";//do not change len.
	public var noticeVersion:Int = 102;
	public var forceVersion:Int = 100;
	public var resources:IntIntMap;
	public var buildingsLevel:IntIntMap;
	public var exchanges:IntList;
	
	
	public var nameMinLen:Int = 4;
	public var nameMaxLen:Int = 12;
	
	public function new()
	{
		resources = new IntIntMap();
		
		resources.set(ResourceType.XP, 0);
		resources.set(ResourceType.POINT, 0);
		resources.set(ResourceType.KEY, 0);
		resources.set(ResourceType.CURRENCY_SOFT, 100);
		resources.set(ResourceType.CURRENCY_HARD, 30);
	}
}
