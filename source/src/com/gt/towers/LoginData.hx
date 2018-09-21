package com.gt.towers;
import com.gt.towers.constants.CardTypes;
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
	public var coreVersion:String = "3620.0921191824";//do not change len.
	public var noticeVersion:Int = 3600;
	public var forceVersion:Int = 3600;
	public var resources:IntIntMap;
	public var buildingsLevel:IntIntMap;
	public var exchanges:IntList;
	public var nameMinLen:Int = 3;
	public var nameMaxLen:Int = 12;
	public var deckSize:Int = 3;
	public var deck:IntList;
	
	public function new()
	{
		buildingsLevel = new IntIntMap();
		
		resources = new IntIntMap();
		resources.set(ResourceType.XP, 0);
		resources.set(ResourceType.POINT, 0);
		resources.set(ResourceType.CURRENCY_SOFT, 100);
		resources.set(ResourceType.CURRENCY_HARD, 30);
		resources.set(CardTypes.C101, 1);
		resources.set(CardTypes.C102, 1);
		resources.set(CardTypes.C103, 1);
		resources.set(CardTypes.C104, 1);
		resources.set(CardTypes.C105, 1);
		var i = 1201;
		while ( i < 1207 )
		{
			resources.set(i, 4);
			i ++;
		}
		
		exchanges = new IntList();
		exchanges.push(ExchangeType.C21_SPECIAL);
		exchanges.push(ExchangeType.C22_SPECIAL);
		exchanges.push(ExchangeType.C23_SPECIAL);
		exchanges.push(ExchangeType.C101_FREE);
		exchanges.push(ExchangeType.C111_BATTLE);
		exchanges.push(ExchangeType.C112_BATTLE);
		exchanges.push(ExchangeType.C113_BATTLE);
		exchanges.push(ExchangeType.C114_BATTLE);
		
		deck = new IntList();
		deck.push(CardTypes.C101);
		deck.push(CardTypes.C102);
		deck.push(CardTypes.C103);
		deck.push(CardTypes.C104);
		deck.push(CardTypes.C105);
	}
}
