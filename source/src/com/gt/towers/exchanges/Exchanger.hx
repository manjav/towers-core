package com.gt.towers.exchanges;

import com.gt.towers.Game;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.exchanges.ExchangeItem;
import com.gt.towers.utils.GameError;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntExchangeMap;
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
			
			if( cex == ExchangeType.S_20_SPECIALS || cex == ExchangeType.CHEST_CATE_110_BATTLES || cex == ExchangeType.CHEST_CATE_120_OFFERS )
				items.set( exchangeKeys[i], new ExchangeItem ( exchangeKeys[i], -1, -1, ex.outcome, 1, ex.numExchanges, ex.expiredAt ) );
			else if ( cex == ExchangeType.S_30_CHEST || cex == ExchangeType.S_40_OTHERS )
				items.set( exchangeKeys[i], new ExchangeItem ( exchangeKeys[i], -1 , -1, -1, -1, ex.numExchanges, ex.expiredAt ) );
				
			i ++;
		}

		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- GEM -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		items.set( ExchangeType.S_1_HARD,  new ExchangeItem ( ExchangeType.S_1_HARD, ResourceType.CURRENCY_REAL, 2000, ResourceType.CURRENCY_HARD, 20 ) );//50
		items.set( ExchangeType.S_2_HARD,  new ExchangeItem ( ExchangeType.S_2_HARD, ResourceType.CURRENCY_REAL, 10000, ResourceType.CURRENCY_HARD, 110 ) );//300
		items.set( ExchangeType.S_3_HARD,  new ExchangeItem ( ExchangeType.S_3_HARD, ResourceType.CURRENCY_REAL, 25000, ResourceType.CURRENCY_HARD, 300 ) );//900
	
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- MONEY -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		items.set( ExchangeType.S_11_SOFT,  new ExchangeItem ( ExchangeType.S_11_SOFT, ResourceType.CURRENCY_HARD,  20, ResourceType.CURRENCY_SOFT, 500 ) );
		items.set( ExchangeType.S_12_SOFT,  new ExchangeItem ( ExchangeType.S_12_SOFT, ResourceType.CURRENCY_HARD, 75, ResourceType.CURRENCY_SOFT, 2000 ) );
		items.set( ExchangeType.S_13_SOFT,  new ExchangeItem ( ExchangeType.S_13_SOFT, ResourceType.CURRENCY_HARD, 350, ResourceType.CURRENCY_SOFT, 10000 ) );
	}
	
	/**
	 * validate requiremets must be enougth 
	 * @param	itemId
	 * @return
	 */
	public function exchange (item:ExchangeItem, now:Int, confirmedHards:Int=0):Bool
	{
		item.outcomes = null;
		// provide requirements
		if ( item.category == ExchangeType.S_30_CHEST || item.category == ExchangeType.CHEST_CATE_110_BATTLES || item.category == ExchangeType.CHEST_CATE_120_OFFERS )
			item.requirements = get_chestRequierement(item, now);
		else if ( ExchangeType.getCategory(item.type) == ExchangeType.S_20_SPECIALS )
		{
			if ( item.numExchanges > ExchangeType.getMaxExchanges(item.type) )
				return false;
				
			item.requirements = getSpecialRequierments(item);
		}
		
		// start opening process
		if ( item.category == ExchangeType.CHEST_CATE_110_BATTLES && item.getState(now) == ExchangeItem.CHEST_STATE_WAIT )
		{
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
		if( item.category == ExchangeType.S_30_CHEST )
			item.outcomes = getChestOutcomes(item.type);
		else if( item.type == ExchangeType.CHESTS_59_ADS )
			item.outcomes = getAdChestOutcomes();
		else if( item.category == ExchangeType.CHEST_CATE_110_BATTLES || item.category == ExchangeType.CHEST_CATE_120_OFFERS )
			item.outcomes = get_chestOutcomes(item.outcome);
		
		game.player.addResources(item.outcomes);
#end
		// consume reqs
		game.player.resources.reduceMap(item.requirements);
		
		// reset item
		if( item.category == ExchangeType.S_20_SPECIALS )
			item.numExchanges ++;
		else if( item.category == ExchangeType.S_30_CHEST )
			item.expiredAt = now + ExchangeType.getCooldown(item.type);
		else if ( item.category == ExchangeType.CHEST_CATE_110_BATTLES )
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
		var remainigHour = Math.floor(time / 3600);
		
		if ( remainigHour >= 24 )
			return 350 + (10 * Math.ceil(remainigHour - 24));
		else if ( remainigHour >= 18 )
			return 310;
		else if ( remainigHour >= 15 )
			return 280;
		else if ( remainigHour >= 12 )
			return 250;
		else if ( remainigHour >= 8 )
			return 250 - ( (12 - remainigHour) * 25 );
		else if ( remainigHour >= 4 )
			return 150 - ( ( 8 - remainigHour) * 20 );
		else if ( remainigHour >= 1 )
			return 70 - ( ( 4 - remainigHour) * 15 );
		else
			if ( (time / 60) > 45 )
				return 15;
			else if ( (time / 60) > 30 )
				return 10;
			else if ( (time / 60) > 15 )
				return 6;
			else
				return 3;
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
	
	function get_chestRequierement(item:ExchangeItem, now:Int) : IntIntMap
	{
		if ( item.category == ExchangeType.S_30_CHEST )
			return getChestRequierement(item.expiredAt - now );
			
		var ret = new IntIntMap();
		if( item.category == ExchangeType.CHEST_CATE_110_BATTLES )
		{
			if ( item.getState(now) == ExchangeItem.CHEST_STATE_BUSY )
				ret.set(ResourceType.CURRENCY_HARD, timeToHard(item.expiredAt - now) );
			else if( item.getState(now) == ExchangeItem.CHEST_STATE_WAIT )
				ret.set(ResourceType.KEY, ExchangeType.getKeyRequierement(item.outcome));
		}
		else if( item.category == ExchangeType.CHEST_CATE_120_OFFERS )
			ret.set(ResourceType.CURRENCY_HARD, ExchangeType.getHardRequierement(item.outcome));
		return ret;
	}
	
	// v.1090
	public function getChestRequierement(time:Int) : IntIntMap
	{
		var ret = new IntIntMap();
		ret.set(ResourceType.KEY, timeToKey(time) );
		return ret;
	}
	public function getSpecialRequierments(item:ExchangeItem):IntIntMap
	{
		var ret = new IntIntMap();

		var outKeys = item.outcomes.keys();
		var i = 0;
		var softs = 0;
		while ( i < outKeys.length )
		{
			if ( game.player.buildings.exists(outKeys[i]) )
			{
				var count = Math.round(game.player.buildings.get(outKeys[i]).price() * 0.5);
				var ratio = Std.int(Math.pow(2, cast(item.numExchanges, Float)));
				softs += count * ratio ;
			}
			i++;
		}
		ret.set( ResourceType.CURRENCY_SOFT, softs );
		return ret;
	}
	
	#if java
	function getAdChestOutcomes() : IntIntMap
	{
		var ret = new IntIntMap();
		var numSlots = ExchangeType.getNumSlots(ExchangeType.CHESTS_59_ADS) - 1;
		while ( numSlots > 0 )
		{
			addRandomSlot(ret, game.player.get_arena(0)+1);	
			numSlots --;
		}
		ret.set( ResourceType.CURRENCY_HARD, 1 );
		return ret;
	}
	function getChestOutcomes(type:Int) : IntIntMap
	{
		var hasKeysReward:Bool = false;
		var ret = new IntIntMap();
		var chance = ( type % 10 ) * 2;
		addRandomCard(ret, chance);
		addRandomCard(ret, chance);	
		
		if ( type > ExchangeType.S_31_CHEST )
		{
			// random cards
			if (type == ExchangeType.S_33_CHEST)
			{
				addRandomCard(ret, chance);
				
				hasKeysReward = Math.random() < 0.1;
				if( !hasKeysReward )
					addRandomCard(ret, chance);
			}
			
			getNewCard(ret, chance);

			
			// random hards
			ret.set(ResourceType.CURRENCY_HARD, Math.ceil(Math.random() * (type % 10) ) );
		}

		// random softs
		ret.set(ResourceType.CURRENCY_SOFT, Math.ceil(Math.random() * (type % 10) * 10 ));

		// random xp
		ret.set(ResourceType.XP, Math.ceil(Math.random() * (type % 10) ) * 2);

		// random keys
		if( hasKeysReward )
			ret.set(ResourceType.KEY, 10 + Math.floor(Math.random() * 10) );
			
		/*
		if( 54 > type && type > 50 )
			ret.set(ResourceType.NUM_BATTLE_CHEST, 1);
		*/
		
		return ret;
	}
	function get_chestOutcomes(type:Int) : IntIntMap
	{
		var ret = new IntIntMap();
		var numSlots = ExchangeType.getNumSlots(type) - 1;
		var totalCards = ExchangeType.getNumTotalCards(type) - 1;
		var slotSize = totalCards / numSlots;
		var numCards:Int = 0;
		var accCards:Int = 0;
		while ( numSlots > 0 )
		{
			numCards = numSlots > 1 ? Math.floor(slotSize * 0.9 + Math.random() * slotSize * 0.2) : totalCards - accCards;
			accCards += numCards;
			addRandomSlot(ret, numCards);
			numSlots --;
		}
		
		// softs
		var softDec = ExchangeType.getNumSofts(type) / 10;
		ret.set( ResourceType.CURRENCY_SOFT, Math.floor(softDec * 9 + Math.random() * softDec * 2) );
		
		return ret;
		
	}
	function getNewCard(ret:IntIntMap, count:Int) : Void
	{
		// try to find new card
		var a = 0;
		var allCards = new IntList();
		var arena = game.player.get_arena(0);
		while ( a <= arena )
		{
			var cards = game.arenas.get ( a ).cards;
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
				ret.set( randCard, 1 );
				return;
			}
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
	
	public static function getOfferChestType(category:Int) : Int
	{
		if ( category == ExchangeType.CHEST_CATE_121_OFFER )
			return ExchangeType.CHESTS_54_MASTER;
		if ( category == ExchangeType.CHEST_CATE_122_OFFER )
			return ExchangeType.CHESTS_55_WONDER;
		return ExchangeType.CHESTS_56_MAGICAL;
	}
	
	public static function getBattleChestType(numChests:Int) : Int
	{
		if( numChests == 0 )
			return ExchangeType.CHESTS_52_SILVER;

		if( numChests % 71 == 0 )
			return ExchangeType.CHESTS_56_MAGICAL;
		else if( numChests % 47 == 0 )
			return ExchangeType.CHESTS_55_WONDER;
		else if( numChests % 19 == 0 )
			return ExchangeType.CHESTS_54_MASTER;
		else if( numChests % 7 == 0 || numChests == 1 )
			return ExchangeType.CHESTS_53_GOLD;
		return ExchangeType.CHESTS_52_SILVER;
	}
	
}