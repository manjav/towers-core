package com.gt.towers;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntIntMap;
/**
 * ...
 * @author Mansour Djawadi
 */
class LoginData
{
	public static var coreSize:Int = 0;
	public var coreVersion:String = "3420.0814092523";//do not change len.
	public var noticeVersion:Int = 3420;
	public var forceVersion:Int = 3420;
	public var resources:IntIntMap;
	public var buildingsLevel:IntIntMap;
	public var exchanges:IntList;
	public var nameMinLen:Int = 3;
	public var nameMaxLen:Int = 12;
	
	public function new()
	{
		resources = new IntIntMap();
		resources.set(ResourceType.XP, 0);
		resources.set(ResourceType.POINT, 0);
		resources.set(ResourceType.CURRENCY_SOFT, 100);
		resources.set(ResourceType.CURRENCY_HARD, 30);
		
		buildingsLevel = new IntIntMap();
		
		exchanges = new IntList();
		exchanges.push(ExchangeType.C21_SPECIAL);
		exchanges.push(ExchangeType.C22_SPECIAL);
		exchanges.push(ExchangeType.C23_SPECIAL);
		exchanges.push(ExchangeType.C101_FREE);
		exchanges.push(ExchangeType.C111_BATTLE);
		exchanges.push(ExchangeType.C112_BATTLE);
		exchanges.push(ExchangeType.C113_BATTLE);
		exchanges.push(ExchangeType.C114_BATTLE);
	}
}
