package com.gt.towers;
import com.gt.towers.constants.CardTypes;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntIntIntMap;
import com.gt.towers.utils.maps.IntIntMap;
/**
 * ...
 * @author Mansour Djawadi
 */
class LoginData
{
	public static var coreSize:Int = 0;
	public var coreVersion:String = "1600.0127201006";//do not change len.
	public var noticeVersion:Int = 1500;
	public var forceVersion:Int = 1500;
	public var resources:IntIntMap;
	public var buildingsLevel:IntIntMap;
	public var exchanges:IntList;
	public var nameMinLen:Int = 3;
	public var nameMaxLen:Int = 12;
	public var initialDecks:IntIntIntMap;
	public var deckSize:Int = 3;
	public var deck:IntList;
	
	public function new()
	{
		buildingsLevel = new IntIntMap();
		
		resources = new IntIntMap();
		resources.set(ResourceType.R1_XP, 0);
		resources.set(ResourceType.R2_POINT, 0);
		resources.set(ResourceType.R3_CURRENCY_SOFT, 100);
		resources.set(ResourceType.R4_CURRENCY_HARD, 100);
		resources.set(CardTypes.C101, 1);
		resources.set(CardTypes.C102, 1);
		resources.set(CardTypes.C103, 1);
		resources.set(CardTypes.C104, 1);
		resources.set(CardTypes.C105, 1);
		resources.set(CardTypes.C106, 1);
		
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
		deck.push(CardTypes.C106);
		
		initialDecks = new IntIntIntMap();
		initialDecks.set(0, new IntIntMap("0:101, 1:105, 2:104, 3:102, 4:106, 5:103"));
		initialDecks.set(1, new IntIntMap("0:101, 1:105, 2:104, 3:102, 4:106, 5:103"));
		initialDecks.set(2, new IntIntMap("0:102, 1:101, 2:106, 3:104, 5:105, 6:103, 7:107"));
		
		/*for test
		resources.set(CardTypes.C106, 1);
		resources.set(CardTypes.C107, 1);
		resources.set(CardTypes.C108, 1);
		resources.set(CardTypes.C109, 1);
		var i = ResourceType.R11_OPERATIONS;
		while ( i <= ResourceType.R16_WIN_RATE )
		{
			resources.set(i, 4);
			i ++;
		}
		deck.push(CardTypes.C106);
		deck.push(CardTypes.C107);
		deck.push(CardTypes.C108);*/
	}
}
