package com.gt.towers.exchanges;

import com.gt.towers.Game;
import com.gt.towers.battle.units.Card;
import com.gt.towers.calculators.AvailableAtCalculator;
import com.gt.towers.constants.CardFeatureType;
import com.gt.towers.constants.CardTypes;
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
	var game:Game;
	public var items:IntShopMap;
#if java
	public var updater:ExchangeUpdater;
#end

	public function new(game:Game) 
	{
		this.game = game;
		items = new IntShopMap();
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
			findRandomOutcome(item, now);
		else if( item.category == ResourceType.R30_CHALLENGES )
			item.outcomes.set(item.type, 1);
		// provide requirements
		item.requirements = getRequierement(item, now);
		
		// start opening process
		if( item.category == ExchangeType.C110_BATTLES && item.getState(now) == ExchangeItem.CHEST_STATE_WAIT )
		{
			var res = isBattleBookReady(item.type, now);
			if( res == MessageTypes.RESPONSE_SUCCEED || ( res == MessageTypes.RESPONSE_ALREADY_SENT && confirmedHards >= timeToHard(ExchangeType.getCooldown(item.outcome)) ) )
			{
				item.expiredAt = now + ExchangeType.getCooldown(item.outcome);
				game.player.resources.reduceMap(item.requirements);
				item.requirements = new IntIntMap();
				return res == MessageTypes.RESPONSE_SUCCEED ? res : exchange(item, now, confirmedHards);
			}
			return res;
		}
		
		var deductions = game.player.deductions(item.requirements);
		var needsHard = toHard( deductions );  trace("confirmedHards:", confirmedHards, "needsHard", needsHard, "deductions:", deductions.toString(), "req:", item.requirements.toString());
		if( !game.player.has(item.requirements) && needsHard > confirmedHards  )
			return MessageTypes.RESPONSE_NOT_ENOUGH_REQS;
		
		// provide reqs by hard
		if( confirmedHards > 0 )
		{
			game.player.resources.reduce (ResourceType.R4_CURRENCY_HARD, needsHard);
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
				outs.increaseMap( getBookOutcomes( outKeys[o], outs.get(outKeys[o]), item.category == ExchangeType.C100_FREES ) );
				outs.remove( outKeys[o] );
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
			game.player.resources.increase(ResourceType.R22_BOOK_OPENED_FREE, 1);
			item.numExchanges = item.expiredAt < now ? 1 : item.numExchanges + 1;
			item.expiredAt = now + ExchangeType.getCooldown(item.type);
			item.outcome = 0;
			item.outcomes = new IntIntMap();
			item.requirements = new IntIntMap();
		}
		else if( item.category == ExchangeType.C110_BATTLES )
		{
			game.player.resources.increase(ResourceType.R21_BOOK_OPENED_BATTLE, 1);
			item.outcome = item.expiredAt = 0;
			item.outcomes = new IntIntMap();
			item.requirements = new IntIntMap();
		}
		else if( item.category == ExchangeType.C20_SPECIALS || item.category == ExchangeType.C30_BUNDLES || item.isIncreamental() )
		{
			if( item.type == ExchangeType.C43_ADS )
				item.expiredAt = now + ExchangeType.getCooldown(item.type);
			item.numExchanges ++;
		}
		
		item.createMapsStr();
		return MessageTypes.RESPONSE_SUCCEED;
	}

	public function findRandomOutcome(item:ExchangeItem, now:Int) : Void
	{
		var bookIndex = item.category == ExchangeType.C100_FREES ? game.player.getResource(ResourceType.R22_BOOK_OPENED_FREE) : getearnedBattleBooks(now);
		item.outcome = item.category == ExchangeType.C110_BATTLES ? getBattleBook(bookIndex) : getFreeBook(bookIndex);
		item.outcomes = new IntIntMap();
		item.outcomes.set(item.outcome, game.player.get_arena(0));
	}
	
	public function isBattleBookReady(type:Int, now:Int) : Int
	{
		var item = items.get(type);
		if( item.category != ExchangeType.C110_BATTLES && item.getState(now) != ExchangeItem.CHEST_STATE_WAIT )
			return MessageTypes.RESPONSE_NOT_ALLOWED;
		
		if( item.category == ExchangeType.C110_BATTLES )
		{
			// check another slot is in process
			var exchangeKeys = items.keys();
			var i = exchangeKeys.length - 1;
			while ( i >= 0 )
			{
				if( items.get(exchangeKeys[i]).category == ExchangeType.C110_BATTLES && item.type != exchangeKeys[i] && items.get(exchangeKeys[i]).getState(now) == ExchangeItem.CHEST_STATE_BUSY )
					return MessageTypes.RESPONSE_ALREADY_SENT;
				i --;
			}
			// not enough requierements
			if( item.getState(now) == ExchangeItem.CHEST_STATE_BUSY && game.player.get_hards() < timeToHard(item.expiredAt - now) )
				return MessageTypes.RESPONSE_NOT_ENOUGH_REQS;
		}
		else if( item.category == ExchangeType.C120_MAGICS )
		{
			if( !game.player.has(item.requirements) )
				return MessageTypes.RESPONSE_NOT_ENOUGH_REQS;
		}
		return MessageTypes.RESPONSE_SUCCEED;
	}
	
	static public function toReal(map:IntIntMap) : Int
	{
		return hardToReal(toHard(map));
	}
	
	static public function toHard(map:IntIntMap) : Int
	{
		var reqKeys = map.keys();
		var softs = 0;
		var hards = 0;
		var reals = 0;
		var i = 0;
		while ( i < reqKeys.length )
		{
			if( reqKeys[i] == ResourceType.R5_CURRENCY_REAL )
				reals += map.get(reqKeys[i]);
			else if( reqKeys[i] == ResourceType.R4_CURRENCY_HARD )
				hards += map.get(reqKeys[i]);
			else if ( reqKeys[i] == ResourceType.R3_CURRENCY_SOFT )
				softs += map.get(reqKeys[i]);
			else if( ResourceType.isCard(reqKeys[i])) 
				softs += cardToSoft( map.get(reqKeys[i]), reqKeys[i] );
			else if ( ResourceType.isBook(reqKeys[i]))
				hards += toHard(estimateBookOutcome(reqKeys[i], map.get(reqKeys[i]), 1));
			i ++;
		}
		return softToHard(softs) + realToHard(reals) + hards ;
	}
	
	static public function toSoft(map:IntIntMap) : Int
	{
		var reqKeys = map.keys();
		var softs = 0;
		var hards = 0;
		var reals = 0;
		var i = 0;
		while ( i < reqKeys.length )
		{
			if( reqKeys[i] == ResourceType.R5_CURRENCY_REAL )
				reals += map.get(reqKeys[i]);
			else if( reqKeys[i] == ResourceType.R4_CURRENCY_HARD )
				hards += map.get(reqKeys[i]);
			else if( reqKeys[i] == ResourceType.R3_CURRENCY_SOFT )
				softs += map.get(reqKeys[i]);
			else if( ResourceType.isCard(reqKeys[i]) ) 
				softs += cardToSoft( map.get(reqKeys[i]), reqKeys[i] );
			
			i ++;
		}
		return hardToSoft( realToHard(reals) + hards ) + softs ;
	}
	
	static public function realToHard(count:Int):Int
	{
		return Math.round( count * 0.04 ) ;
	}
	static public function hardToReal(count:Int):Int
	{
		return Math.round( count / 0.04 ) ;
	}
	static public function softToHard(count:Int):Int
	{
		return Math.round( count * 0.05 ) ;
	}
	static public function hardToSoft(count:Int):Int
	{
		return Math.round( count / 0.05 );
	}
	static public function timeToHard(count:Int):Int
	{
		return Math.round( count / 600 );
	}
	static public function cardToSoft(count:Int, rarity:Int) : Int
	{
		return count * 30 ; 
	}
	static public function fixedRound(count:Int) : Int
	{
		if ( count < 1000 )
			return 10 * Math.round(count * 0.1);
		else if ( count < 10000 )
			return 100 * Math.round(count * 0.01);
		else
			return 1000 * Math.round(count * 0.001);
	}
	
	public function getearnedBattleBooks(now:Int) : Int
	{
		var i = 0;
		var numClosed = 0;
		var _items = items.values();
		while ( i < _items.length )
		{
			if( _items[i].category == ExchangeType.C110_BATTLES && _items[i].getState(now) != ExchangeItem.CHEST_STATE_EMPTY )
				numClosed ++;
			i ++;
		}
		return game.player.getResource(ResourceType.R21_BOOK_OPENED_BATTLE) + numClosed;
	}
	
	static function estimateBookOutcome(type:Int, arena:Int, coef:Float) : IntIntMap
	{
		var ret = new IntIntMap();
		ret.set( CardTypes.C001, ExchangeType.getNumTotalCards(type, arena, coef, 0) );
		ret.set( ResourceType.R3_CURRENCY_SOFT, ExchangeType.getNumSofts(type, arena, coef) );
		return ret;
	}
	
	function getRequierement(item:ExchangeItem, now:Int) : IntIntMap
	{
		//if( item.category < ExchangeType.C40_OTHERS && (item.requirements != null && item.requirements.keys().length > 0) )
		//	return item.requirements;
		
		var ret = new IntIntMap();
		if( item.type == ExchangeType.C42_RENAME )
		{
			ret.set( ResourceType.R4_CURRENCY_HARD, 20 * item.numExchanges);
		}
		else if( item.category == ExchangeType.C110_BATTLES )
		{
			if( item.getState(now) == ExchangeItem.CHEST_STATE_BUSY )
				ret.set(ResourceType.R4_CURRENCY_HARD, timeToHard(item.expiredAt - now) );
			//else if( item.getState(now) == ExchangeItem.CHEST_STATE_WAIT )
			//	ret.set(ResourceType.KEY, ExchangeType.getKeyRequierement(item.outcome));
		}
		else if( ( item.type == ExchangeType.C43_ADS || item.category == ExchangeType.C100_FREES ) && item.expiredAt > now )
		{
			ret.set( ResourceType.R4_CURRENCY_HARD, timeToHard(item.expiredAt - now) * item.numExchanges);
		}
		if( ret.keys().length == 0 )
			return item.requirements;
		
		return ret;
	}
	
	#if java
	function getBookOutcomes(type:Int, arena:Int, isDaily:Bool = false ) : IntIntMap
	{
		var ret = new IntIntMap();
		var numSlots = ExchangeType.getNumSlots(type) - 1;
		var numRars = ExchangeType.getNumTotalCards(type, arena, game.player.splitTestCoef, 1);
		var numEpics = ExchangeType.getNumTotalCards(type, arena, game.player.splitTestCoef, 2);
		var totalCards = ExchangeType.getNumTotalCards(type, arena, game.player.splitTestCoef, 0) + 1 - numRars - numEpics;
		var slotSize = Math.ceil(totalCards / numSlots);
		var numCards:Int = 0;
		var accCards:Int = 0;
		var rarity:Int;
		while( numSlots >= 0 )
		{
			rarity = 0;
			numCards = numSlots > 0 ? Math.floor(slotSize * 0.9 + Math.random() * slotSize * 0.1) : totalCards - accCards;
			if( numEpics > 0 )
			{
				rarity = 2;
				numCards = Std.int(Math.min(numEpics, numCards));
				numEpics = 0;
			}
			else if( numRars > 0 )
			{
				rarity = 1;
				numCards = Std.int(Math.min(numRars, numCards));
				numRars = 0;
			}
			accCards += numCards;
			//trace("numChest", numChest, "numSlots", numSlots);
			
			trace("addNewCard",  numSlots, isDaily);
            if( numSlots == 0 && !isDaily ) // last slot
				addNewCard(ret);
			
			addRandomSlot(ret, numCards, rarity);
			numSlots --;
		}
		
		// hards
        if( isDaily )
            ret.set( ResourceType.R4_CURRENCY_HARD, type - 50 );
        
        // softs
        var softDec = ExchangeType.getNumSofts(type, arena, game.player.splitTestCoef) * 0.1;
		ret.set( ResourceType.R3_CURRENCY_SOFT, Math.floor(softDec * 9 + Math.random() * softDec * 2) );
		
		return ret;
	}
	function addNewCard(map:IntIntMap) : Void
	{
		var openedBook:Int = game.player.getResource(ResourceType.R21_BOOK_OPENED_BATTLE);
		trace("openedBook", openedBook);
		if( openedBook == 0 )
		{
			map.set( CardTypes.C001, 2 );
			return;
		}
		
		// try to find new card
		var a = 0;
		var allCards = game.player.availabledCards();
		while( a < allCards.size() )
		{
			var newCard = allCards.get(a);
			if( !game.player.cards.exists(newCard) && AvailableAtCalculator.getChance(newCard) <= game.player.getResource(ResourceType.R21_BOOK_OPENED_BATTLE) )
			{
				map.set( newCard, 2 );
				return;
			}
			a ++;
		}
		addRandomSlot(map, 2, 0);
	}
	function addRandomSlot(map:IntIntMap, count:Int, rarity:Int) : Void
	{
		if( game.player.cards.keys().length <= map.keys().length )
			return;
		
		var random = game.player.getRandomCard(rarity);
		if( random == -1 )
		{
			if( rarity > 0 )
				addRandomSlot( map, count, rarity - 1 );
			return;
		}
		
		if( map.exists(random) )
		{
			addRandomSlot( map, count, Std.int(Math.max(0, rarity - 1)) );
			return;
		}
		
		map.set( random, count );
	}
	#end

	/*public static function getDailyChestType(numExchanges:Int) : Int
	{
		return ExchangeType.BOOK_M_54_BRONZE;
	}*/
	
	private function getFreeBook(openedBooks:Int) : Int
	{
		if( openedBooks == 0 || openedBooks == 3 || openedBooks % 7 == 0 )
			return ExchangeType.BOOK_52_KNIGHT;
		if( openedBooks % 11 == 0 || openedBooks == 5 )
			return ExchangeType.BOOK_53_STARS;
		if( openedBooks % 19 == 0 )
			return ExchangeType.BOOK_54_SEA;
		if( openedBooks % 29 == 0 )
			return ExchangeType.BOOK_55_PIRATE;
		if( openedBooks % 41 == 0 )
			return ExchangeType.BOOK_56_JUNGLE;
		if( openedBooks % 61 == 0 )
			return ExchangeType.BOOK_57_TREASURE;
		if( openedBooks % 81 == 0 )
			return ExchangeType.BOOK_58_AMBER;
		if( openedBooks % 101 == 0 )
			return ExchangeType.BOOK_59_DRAGON;
		
		return ExchangeType.BOOK_51_METAL;
	}
	
	private function getBattleBook(earnedBooks:Int) : Int
	{
		if( earnedBooks == 0 )
			return ExchangeType.BOOK_51_METAL;
		if( earnedBooks % 4 == 0 )
			return ExchangeType.BOOK_53_STARS;
		if( earnedBooks % 13 == 0 )
			return ExchangeType.BOOK_54_SEA;
		if( earnedBooks % 23 == 0 )
			return ExchangeType.BOOK_57_TREASURE;
		if( earnedBooks % 47 == 0 )
			return ExchangeType.BOOK_59_DRAGON;
		
		return ExchangeType.BOOK_52_KNIGHT;
	}
}