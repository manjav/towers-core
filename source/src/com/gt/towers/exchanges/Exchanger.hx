package com.gt.towers.exchanges;

import com.gt.towers.Game;
import com.gt.towers.InitData;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.MessageTypes;
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
#if java
	public var updater:ExchangeUpdater;
#end

	public function new(game:Game, initData:InitData) 
	{
		this.game = game;
		items = new IntShopMap();
		#if java
		updater = new ExchangeUpdater(game);
		
		var i = 0;
		var exchangeKeys = initData.exchanges.keys();
		while ( i < exchangeKeys.length )
		{
			var ex = initData.exchanges.get(exchangeKeys[i]);
			var item:ExchangeItem = new ExchangeItem(ex.type, ex.numExchanges, ex.expiredAt, "", ex.outcomesStr);
			updater.update(item);
			items.set(item.type, item );
			
			i ++;
		}
		#end
		
		// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_- Test GEM -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_
		items.set( ExchangeType.C0_HARD,  new ExchangeItem ( ExchangeType.C0_HARD, 1, 0, "1101:100", "1003:1" ) );
		
		// ad book
		items.set( ExchangeType.C43_ADS,  new ExchangeItem ( ExchangeType.C43_ADS, 1, 0, "", "57:1" ) );
		
		// rename
		if( !items.exists( ExchangeType.C42_RENAME ) )
			items.set( ExchangeType.C42_RENAME,  new ExchangeItem ( ExchangeType.C42_RENAME, 0 ) );
	}
	
	/**
	 * 
	 * @param	item
	 * @param	now
	 * @param	confirmedHards
	 * @return response (MessageTypes)
	 */
	public function exchange (item:ExchangeItem, now:Int, confirmedHards:Int=0):Int
	{
		if( item.category == ExchangeType.C100_FREES )
			findRandomOutcome(item);
		
		// provide requirements
		item.requirements = getRequierement(item, now);
		
		// start opening process
		if( item.category == ExchangeType.C110_BATTLES && item.getState(now) == ExchangeItem.CHEST_STATE_WAIT )
		{
			var res = isBattleBookReady(item.type, now);
			if( res != MessageTypes.RESPONSE_SUCCEED )
				return res;
			
			item.expiredAt = now + ExchangeType.getCooldown(item.outcome);
			game.player.resources.reduceMap(item.requirements);
			return MessageTypes.RESPONSE_SUCCEED;
		}
		
		var deductions = game.player.deductions(item.requirements); trace("confirmedHards", confirmedHards, "deductions", deductions.toString(), "req", item.requirements.toString());
		var needsHard = toHard( deductions );
		if( !game.player.has(item.requirements) && needsHard > confirmedHards  )
			return MessageTypes.RESPONSE_NOT_ENOUGH_REQS;
		
		// provide reqs by hard
		if( confirmedHards > 0 )
		{
			game.player.resources.reduce (ResourceType.CURRENCY_HARD, needsHard);
			game.player.addResources(deductions);
		}
		
		var outs = new IntIntMap();
		outs.increaseMap(item.outcomes);
#if java
		var outKeys = outs.keys();
		var o = 0;
		while ( o < outKeys.length )
		{
			if( ResourceType.isBook( outKeys[o] ) )
			{
				trace("book", outKeys[o]);
				outs.remove( outKeys[o] );
				outs.increaseMap( getBookOutcomes( outKeys[o] ) );
			}
			o ++;
		}
		trace("outcomes", outs.toString());
#end
		if( item.category == ExchangeType.C20_SPECIALS && item.numExchanges > 0 )
			return MessageTypes.RESPONSE_NOT_ALLOWED;
		
		// add outcomes
#if flash
		if( item.containBook() == -1 )// prevent adding outcomes witch contain book into player resources in client-side
#end
		game.player.addResources(outs);
		
		// consume reqs
		game.player.resources.reduceMap(item.requirements);
		
		// reset item
		if( item.category == ExchangeType.C100_FREES )
		{
			item.numExchanges = item.expiredAt < now ? 1 : item.numExchanges + 1;
			item.expiredAt = now + ExchangeType.getCooldown(item.type);
			game.player.resources.increase(ResourceType.FREE_CHEST_OPENED, 1);
		}
		else if( item.category == ExchangeType.C110_BATTLES )
		{
			game.player.resources.increase(ResourceType.BATTLE_CHEST_OPENED, 1);
			item.expiredAt = 0;
			item.outcomes = new IntIntMap();
		}
		else if( item.category == ExchangeType.C20_SPECIALS || item.category == ExchangeType.C30_BUNDLES || item.isIncreamental() )
		{
			item.numExchanges ++;
		}
		
		item.createOutcomesStr();
		return MessageTypes.RESPONSE_SUCCEED;
	}

	public function findRandomOutcome(item:ExchangeItem) : Void
	{
		var openedChests = item.category == ExchangeType.C100_FREES ? game.player.getResource(ResourceType.FREE_CHEST_OPENED) : game.player.getResource(ResourceType.BATTLE_CHEST_OPENED);
		item.outcome = getBattleBook(openedChests, item.category == ExchangeType.C110_BATTLES);
		item.outcomes = new IntIntMap();
		item.outcomes.set(item.outcome, game.player.get_arena(0));
	}
	
	public function isBattleBookReady(type:Int, now:Int) : Int
	{
		var item = items.get(type);
		if( item.category != ExchangeType.C110_BATTLES || item.getState(now) != ExchangeItem.CHEST_STATE_WAIT )
			return MessageTypes.RESPONSE_NOT_ALLOWED;
		
		// check another slot is in process
		var exchangeKeys = items.keys();
		var i = exchangeKeys.length-1;
		while ( i >= 0 )
		{
			if( items.get(exchangeKeys[i]).category == ExchangeType.C110_BATTLES && items.get(exchangeKeys[i]).getState(now) == ExchangeItem.CHEST_STATE_BUSY )
				return MessageTypes.RESPONSE_ALREADY_SENT;
			i --;
		}
		if( game.player.get_keys() < ExchangeType.getKeyRequierement(item.outcome) )
			return MessageTypes.RESPONSE_NOT_ENOUGH_REQS;
		return MessageTypes.RESPONSE_SUCCEED;
	}
	
	static public function toReal(map:IntIntMap) : Int
	{
		return hardToReal(toHard(map));
	}
	
	static public function toHard(map:IntIntMap) : Int
	{
		var reqKeys = map.keys();
		var keys = 0;
		var softs = 0;
		var hards = 0;
		var reals = 0;
		var i = 0;
		while ( i < reqKeys.length )
		{
			if( reqKeys[i] == ResourceType.KEY )
				keys += map.get(reqKeys[i]);
			if( reqKeys[i] == ResourceType.CURRENCY_REAL )
				reals += map.get(reqKeys[i]);
			else if( reqKeys[i] == ResourceType.CURRENCY_HARD )
				hards += map.get(reqKeys[i]);
			else if( reqKeys[i] == ResourceType.CURRENCY_SOFT )
				softs += map.get(reqKeys[i]);
			else if( ResourceType.isBuilding(reqKeys[i])) 
				softs += cardToSoft( BuildingType.get_improve(reqKeys[i]) ) * map.get(reqKeys[i]);
			else if( ResourceType.isBook(reqKeys[i])) 
				hards += ExchangeType.getHardRequierement(reqKeys[i]);
			
			i ++;
		}
		return keyToHard(keys) + softToHard(softs) + realToHard(reals) + hards ;
	}
	
	static public function toSoft(map:IntIntMap) : Int
	{
		var reqKeys = map.keys();
		var keys = 0;
		var softs = 0;
		var hards = 0;
		var reals = 0;
		var i = 0;
		while ( i < reqKeys.length )
		{
			if( reqKeys[i] == ResourceType.KEY )
				keys += map.get(reqKeys[i]);
			if( reqKeys[i] == ResourceType.CURRENCY_REAL )
				reals += map.get(reqKeys[i]);
			else if( reqKeys[i] == ResourceType.CURRENCY_HARD )
				hards += map.get(reqKeys[i]);
			else if( reqKeys[i] == ResourceType.CURRENCY_SOFT )
				softs += map.get(reqKeys[i]);
			else if( ResourceType.isBuilding(reqKeys[i])) 
				softs += cardToSoft( BuildingType.get_improve(reqKeys[i]) ) * map.get(reqKeys[i]);
			
			i ++;
		}
		return hardToSoft( keyToHard(keys) + realToHard(reals) + hards ) + softs ;
	}
	
	static public function hardToSoft(hards:Int):Int
	{
		return hards * 5;
	}
	static public function realToHard(price:Int):Int
	{
		return Math.round( price * 0.1 ) ;
	}
	static public function hardToReal(hards:Int):Int
	{
		return Math.round( hards * 10 ) ;
	}
	static public function softToHard(price:Int):Int
	{
		return Math.round( price * 0.2 ) ;
	}
	static public function timeToHard(time:Int):Int
	{
		return Math.round( Math.max( Math.log(time / 600) * 3 + (time / 3600) * 2 + 3 , 0) );
	}
	static public function timeToKey(time:Int):Int
	{
		return Math.floor(timeToHard(time) / 20);
	}
	static public function keyToHard(count:Int):Int
	{
		if( count < 5 )
			return Math.round( count * 10 ) ;
		else if ( count < 10 )
			return Math.round( count * 9 ) ;
		else
			return Math.round( count * 8 ) ;
	}	
	static public function cardToSoft(improveLevel:Int) : Int
	{
		return Math.round( (improveLevel * 10) + 10 ); 
	}
	
	function getRequierement(item:ExchangeItem, now:Int) : IntIntMap
	{
		if( item.category < ExchangeType.C40_OTHERS )
			return item.requirements;
		
		var ret = new IntIntMap();
		if( item.isIncreamental() )
		{
			ret.set( ResourceType.CURRENCY_HARD, ExchangeType.getHardRequierement(item.type) * item.numExchanges);
		}
		else if( item.category == ExchangeType.C110_BATTLES )
		{
			if( item.getState(now) == ExchangeItem.CHEST_STATE_BUSY )
				ret.set(ResourceType.CURRENCY_HARD, timeToHard(item.expiredAt - now) );
			else if( item.getState(now) == ExchangeItem.CHEST_STATE_WAIT )
				ret.set(ResourceType.KEY, ExchangeType.getKeyRequierement(item.outcome));
		}
		else if( item.category == ExchangeType.C100_FREES && item.expiredAt > now )
		{
			ret.set( ResourceType.CURRENCY_HARD, timeToHard(item.expiredAt - now) * item.numExchanges);
		}
		else if( item.category == ExchangeType.C120_MAGICS )
		{
			ret.set(ResourceType.CURRENCY_HARD, ExchangeType.getHardRequierement(item.outcome));
		}
		return ret;
	}
	
	#if java
	function getBookOutcomes(type:Int, isDaily:Bool = false ) : IntIntMap
	{
		var arena = game.player.get_arena(0);
		var ret = new IntIntMap();
		var numSlots = ExchangeType.getNumSlots(type) - 1;
		var totalCards = ExchangeType.getNumTotalCards(type, arena) + 1;
		var slotSize = Math.ceil(totalCards / numSlots);
		var numChest:Int = game.player.getResource(isDaily ? ResourceType.FREE_CHEST_OPENED : ResourceType.BATTLE_CHEST_OPENED);
		var numCards:Int = 0;
		var accCards:Int = 0;
		//var arena = game.player.get_arena(0) + 1;
		while( numSlots >= 0 )
		{
			numCards = numSlots > 0 ? Math.floor(slotSize * 0.9 + Math.random() * slotSize * 0.1) : totalCards - accCards;
			accCards += numCards;
			//trace("numChest", numChest, "numSlots", numSlots);
			
            if( numSlots == 0 && type > ExchangeType.BOOK_M_56_PIRATE ) // last slot in only mid and big slots
            {
                if( numChest == 0 || numChest == 4 || (Math.random() <  6 / (type - 53)) ) // first book or  rendomly
					addNewCard(ret, 2);
			}
			addRandomSlot(ret, numCards);
			numSlots --;
		}
		
		// hards
        if( isDaily )
            ret.set( ResourceType.CURRENCY_HARD, Math.ceil((type - 56) * 0.5) );
        
        // softs
        var softDec = ExchangeType.getNumSofts(type, arena) * 0.1;
		ret.set( ResourceType.CURRENCY_SOFT, Math.floor(softDec * 9 + Math.random() * softDec * 2) );
		return ret;
	}
	function addNewCard(ret:IntIntMap, count:Int) : Void
	{
		if( game.player.inTutorial() )
		{
			ret.set( BuildingType.B11_BARRACKS, 2 );
			return;
		}
		
		// try to find new card
		var a = 0;
		var allCards = new IntList();
		var arena = game.player.get_arena(0);
		while( a <= arena )
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
		while( a < allCards.size() )
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
		if( game.player.buildings.keys().length <= ret.keys().length )
			return;
		
		var random = game.player.getRandomBuilding();
		if( random == -1 )
			return;
		if( ret.exists(random) )
		{
			addRandomSlot( ret, count );
			return;
		}
		ret.set( random, count );
	}
	#end

	
	/*public static function getDailyChestType(numExchanges:Int) : Int
	{
		return ExchangeType.BOOK_M_54_BRONZE;
	}
	*/
	
	private function getBattleBook(openedBooks:Int, isBattle:Bool) : Int
	{
		if( isBattle && game.player.get_keys() > 20 )// consume accumulated keys
		{
			var rand = Math.random();
			if( rand > 0.8 )
				return ExchangeType.BOOK_M_56_PIRATE;
			else if( rand > 0.6 )
				return ExchangeType.BOOK_M_55_INKAY;
			else if( rand > 0.3 )
				return ExchangeType.BOOK_M_54_SEA;
		}
		
		if( openedBooks == 0 )
			return ExchangeType.BOOK_S_51_BRONZE;
		if( openedBooks % 7 == 0 )
			return ExchangeType.BOOK_M_53_STARS;
		if( openedBooks % 11 == 0 || openedBooks == 2 )
			return ExchangeType.BOOK_M_54_SEA;
		if( openedBooks % 19 == 0 )
			return ExchangeType.BOOK_M_55_INKAY;
		if( openedBooks % 47 == 0 )
			return ExchangeType.BOOK_M_56_PIRATE;
			
		return ExchangeType.BOOK_M_52_SILVER;
	}
}