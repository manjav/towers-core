package com.gt.towers.exchanges;

import com.gt.towers.Game;
import com.gt.towers.InitData;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.exchanges.ExchangeItem;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntShopMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Exchanger 
{
	private var game:Game;
	
	public var items:IntShopMap;

	public function new(game:Game, initData:InitData) 
	{
		this.game = game;
		items = new IntShopMap();
		
		
		var i = 0;
		var exchangeKeys = initData.exchanges.keys();
		while ( i < exchangeKeys.length )
		{
			var ex = initData.exchanges.get(exchangeKeys[i]);
			var cex = ExchangeType.getCategory( exchangeKeys[i] );
			
			if( cex == ExchangeType.CHEST_CATE_100_FREE || cex == ExchangeType.CHEST_CATE_110_BATTLES || cex == ExchangeType.CHEST_CATE_120_OFFERS )
				items.set( exchangeKeys[i], new ExchangeItem ( exchangeKeys[i], -1, -1, ex.outcome, 1, ex.numExchanges, ex.expiredAt ) );
			else if ( cex == ExchangeType.S_40_OTHERS )
				items.set( exchangeKeys[i], new ExchangeItem ( exchangeKeys[i], -1 , -1, -1, -1, ex.numExchanges, ex.expiredAt ) );
				
			i ++;
		}

		var isCheap = game.player.id % 2 == 0;
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- GEM -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		items.set( ExchangeType.S_0_HARD,  new ExchangeItem ( ExchangeType.S_0_HARD, ResourceType.CURRENCY_REAL, 100, ResourceType.CURRENCY_HARD,	1 ) );//50
		items.set( ExchangeType.S_1_HARD,  new ExchangeItem ( ExchangeType.S_1_HARD, ResourceType.CURRENCY_REAL, 2000, ResourceType.CURRENCY_HARD,	isCheap?200:100 ) );//50
		items.set( ExchangeType.S_2_HARD,  new ExchangeItem ( ExchangeType.S_2_HARD, ResourceType.CURRENCY_REAL, 10000, ResourceType.CURRENCY_HARD, isCheap?1200:600 ) );//300
		items.set( ExchangeType.S_3_HARD,  new ExchangeItem ( ExchangeType.S_3_HARD, ResourceType.CURRENCY_REAL, 20000, ResourceType.CURRENCY_HARD, isCheap?3000:1500 ) );//900
	
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- MONEY -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		items.set( ExchangeType.S_11_SOFT,  new ExchangeItem ( ExchangeType.S_11_SOFT, ResourceType.CURRENCY_HARD, 20, ResourceType.CURRENCY_SOFT,	500 ) );
		items.set( ExchangeType.S_12_SOFT,  new ExchangeItem ( ExchangeType.S_12_SOFT, ResourceType.CURRENCY_HARD, 75, ResourceType.CURRENCY_SOFT,	2000 ) );
		items.set( ExchangeType.S_13_SOFT,  new ExchangeItem ( ExchangeType.S_13_SOFT, ResourceType.CURRENCY_HARD, 350, ResourceType.CURRENCY_SOFT,	10000 ) );
		
		var ads = new ExchangeItem (ExchangeType.CHEST_CATE_131_ADS, -1, -1, -1, -1, 1, 1);
		ads.outcome = ExchangeType.CHESTS_57_CHROME;
		items.set( ExchangeType.CHEST_CATE_131_ADS, ads );
	}
	
	/**
	 * validate requiremets must be enougth 
	 * @param	itemId
	 * @return
	 */
	public function exchange (item:ExchangeItem, now:Int, confirmedHards:Int=0):Bool
	{
		// provide requirements
		if( item.isChest() )
			item.requirements = getChestRequierement(item, now);
		
		// start opening process
		if ( item.category == ExchangeType.CHEST_CATE_110_BATTLES && item.getState(now) == ExchangeItem.CHEST_STATE_WAIT )
		{
			item.outcomes = null;
			if ( !readyToStartOpening(item.type, now) )
				return false;
				
			item.expiredAt = now + ExchangeType.getCooldown(item.outcome);
			game.player.resources.reduceMap(item.requirements);
			return true;
		}
		
		var deductions = game.player.deductions(item.requirements);
		var needsHard = toHard( deductions );
		if( !game.player.has(item.requirements) && needsHard > confirmedHards  )
			return false;
		
		// provide reqs by hard
		if( confirmedHards > 0 )
		{
			game.player.resources.reduce (ResourceType.CURRENCY_HARD, needsHard);
			game.player.addResources(deductions);
		}
		
#if java
		// provide and earn outcomes 
		if( item.isChest() )
			item.outcomes = getChestOutcomes(item.outcome);
#end
		// add outs
		if( item.outcomes != null )
			game.player.addResources(item.outcomes);
		// consume reqs
		game.player.resources.reduceMap(item.requirements);
		
		// reset item
		if ( item.category == ExchangeType.CHEST_CATE_100_FREE )
		{
			item.expiredAt = now + ExchangeType.getCooldown(item.outcome);
			game.player.resources.increase(ResourceType.FREE_CHEST_OPENED, 1);
		}
		else if( item.category == ExchangeType.CHEST_CATE_110_BATTLES )
		{
			var openedChests = game.player.get_openedChests();
			openedChests ++;
			game.player.resources.set(ResourceType.BATTLE_CHEST_OPENED, openedChests);
			item.expiredAt = 0;
			item.outcome = getBattleChestType(openedChests);
		}
		return true;
	}

	public function readyToStartOpening(type:Int, now:Int) : Bool
	{
		var item = items.get(type);
		if( item.category != ExchangeType.CHEST_CATE_110_BATTLES || item.getState(now) != ExchangeItem.CHEST_STATE_WAIT )
			return false;
			
		var exchangeKeys = items.keys();
		var i = exchangeKeys.length-1;
		while ( i >= 0 )
		{
			if( items.get(exchangeKeys[i]).category == ExchangeType.CHEST_CATE_110_BATTLES && items.get(exchangeKeys[i]).getState(now) == ExchangeItem.CHEST_STATE_BUSY )
				return false;
			i --;
		}
		return game.player.get_keys() >= ExchangeType.getKeyRequierement(item.outcome);
	}
	
	public function toHard(requirements:IntIntMap):Int
	{
		var reqKeys = requirements.keys();
		var keys = 0;
		var softs = 0;
		var hards = 0;
		var i = 0;
		while ( i < reqKeys.length )
		{
			if( reqKeys[i] == ResourceType.KEY )
				keys += requirements.get(reqKeys[i]);
			else if( reqKeys[i] == ResourceType.CURRENCY_HARD )
				hards += requirements.get(reqKeys[i]);
			else if( reqKeys[i] == ResourceType.CURRENCY_SOFT )
				softs += requirements.get(reqKeys[i]);
			else if( ResourceType.isBuilding(reqKeys[i])) 
				softs += game.player.buildings.get(reqKeys[i]).price() * requirements.get(reqKeys[i]);

			i ++;
		}
		return keyToHard(keys) + softToHard(softs) + hards ;
	}
	
	public function softToHard(price:Int):Int
	{
		return Math.round( price * 0.2 ) ;
	}
	public function timeToHard(time:Int):Int
	{
		return Math.round( Math.max( Math.log(time / 600) * 3 + (time / 3600) * 2 + 3 , 0) );
	}
	public function timeToKey(time:Int):Int
	{
		return Math.floor(timeToHard(time) / 20);
	}
	public function keyToHard(count:Int):Int
	{
		if( count < 5 )
			return Math.round( count * 10 ) ;
		else if ( count < 10 )
			return Math.round( count * 9 ) ;
		else
			return Math.round( count * 8 ) ;
	}	
	
	function getChestRequierement(item:ExchangeItem, now:Int) : IntIntMap
	{
		var ret = new IntIntMap();
		if( item.category == ExchangeType.CHEST_CATE_100_FREE || item.category == ExchangeType.CHEST_CATE_110_BATTLES )
		{
			if( item.getState(now) == ExchangeItem.CHEST_STATE_BUSY )
				ret.set(ResourceType.CURRENCY_HARD, timeToHard(item.expiredAt - now) );
			else if( item.getState(now) == ExchangeItem.CHEST_STATE_WAIT )
				ret.set(ResourceType.KEY, ExchangeType.getKeyRequierement(item.outcome));
		}
		else if( item.category == ExchangeType.CHEST_CATE_120_OFFERS )
		{
			ret.set(ResourceType.CURRENCY_HARD, ExchangeType.getHardRequierement(item.outcome));
		}
		return ret;
	}
	
	#if java
	function getChestOutcomes(type:Int) : IntIntMap
	{
		var ret = new IntIntMap();
		var numSlots = ExchangeType.getNumSlots(type) - 1;
		var totalCards = ExchangeType.getNumTotalCards(type) - 1;
		var slotSize = totalCards / numSlots;
		var numChest:Int = game.player.get_openedChests();
		var numCards:Int = 0;
		var accCards:Int = 0;
		var arena = game.player.get_arena(0) + 1;
		while ( numSlots > 0 )
		{
			numCards = numSlots > 1 ? Math.floor(slotSize * 0.9 + Math.random() * slotSize * 0.2) : totalCards - accCards;
			accCards += numCards;
			//trace(numChest, arena, numChest % (arena * 5));
            if ( numChest == 0 || numChest == 4 || (numChest % (arena * 3) == 0 && type < ExchangeType.CHESTS_57_CHROME) )
				addNewCard(ret, 1);
			addRandomSlot(ret, numCards);
			numSlots --;
		}
		
		// hards
		if ( type > ExchangeType.CHESTS_56_GOLD && type <= ExchangeType.CHESTS_59_GOLD && Math.random() > 0.2 )
			ret.set( ResourceType.CURRENCY_HARD, type-56 );
		
		// softs
		var softDec = ExchangeType.getNumSofts(type) / 10;
		ret.set( ResourceType.CURRENCY_SOFT, Math.floor(softDec * 9 + Math.random() * softDec * 2) );
		
		return ret;
		
	}
	function addNewCard(ret:IntIntMap, count:Int) : Void
	{
		if ( game.player.inTutorial() )
		{
			ret.set( BuildingType.B11_BARRACKS, 2 );
			return;
		}
		
		// try to find new card
		var a = 0;
		var allCards = new IntList();
		var arena = game.player.get_arena(0);
		while ( a <= arena )
		{
			var cards = game.arenas.get (a).cards;
			var c = 0;
			while ( c < cards.size() )
			{
				allCards.push( cards.get(c) );
				c ++;
			}
			a ++;
		}
		a = 0;
		while ( a < allCards.size() )
		{
			var randCard = allCards.get(a);
			if ( !game.player.buildings.exists(randCard) )
			{
				ret.set( randCard, count );
				return;
			}
			a ++;
		}
		addRandomSlot(ret, count);
	}
	function addRandomSlot(ret:IntIntMap, count:Int) : Void
	{
		if ( game.player.buildings.keys().length <= ret.keys().length )
			return;
		
		var random = game.player.getRandomBuilding();
		if ( ret.exists(random) )
		{
			addRandomSlot( ret, count );
			return;
		}
		ret.set( random, count );
	}
	function addRandomCard(ret:IntIntMap, maxChance:Int) : Void
	{
		if ( game.player.buildings.keys().length <= ret.keys().length )
			return;
		
		var random = game.player.getRandomBuilding();
		if ( ret.exists(random) )
		{
			addRandomCard(ret, maxChance);
			return;
		}
		ret.set(random, Math.ceil( Math.random() * maxChance * (5 - (random % 10)) / 2 ) );
	}
	#end
	
	

	
	
	public static function getDailyChestType(numExchanges:Int) : Int
	{
		return ExchangeType.CHESTS_51_CHROME;
	}
	
	public static function getChestType(category:Int) : Int
	{
		if ( category == ExchangeType.CHEST_CATE_101_FREE )
			return ExchangeType.CHESTS_57_CHROME;
		if ( category == ExchangeType.CHEST_CATE_102_FREE )
			return ExchangeType.CHESTS_58_SILVER;
		if ( category == ExchangeType.CHEST_CATE_103_FREE )
			return ExchangeType.CHESTS_59_GOLD;

		if ( category == ExchangeType.CHEST_CATE_121_OFFER )
			return ExchangeType.CHESTS_54_CHROME;
		if ( category == ExchangeType.CHEST_CATE_122_OFFER )
			return ExchangeType.CHESTS_55_SILVER;
		if ( category == ExchangeType.CHEST_CATE_123_OFFER )
			return ExchangeType.CHESTS_56_GOLD;
		
		return ExchangeType.CHEST_CATE_101_FREE ;
	}
	
	private static function getBattleChestType(numChests:Int) : Int
	{
		if( numChests == 0 )
			return ExchangeType.CHESTS_51_CHROME;
		if( numChests % 3 == 0 )
			return ExchangeType.CHESTS_52_SILVER;
		if( numChests % 7 == 0 || numChests == 1 )
			return ExchangeType.CHESTS_53_GOLD;
		if( numChests % 19 == 0 )
			return ExchangeType.CHESTS_54_CHROME;
		if( numChests % 47 == 0 )
			return ExchangeType.CHESTS_55_SILVER;
		if( numChests % 71 == 0 )
			return ExchangeType.CHESTS_56_GOLD;
			
		return ExchangeType.CHESTS_51_CHROME;
	}
}