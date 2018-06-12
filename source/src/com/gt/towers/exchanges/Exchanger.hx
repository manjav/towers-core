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
			item.requirements = new IntIntMap();
			return MessageTypes.RESPONSE_SUCCEED;
		}
		
		var deductions = game.player.deductions(item.requirements); trace("confirmedHards:", confirmedHards, "deductions:", deductions.toString(), "req:", item.requirements.toString());
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
			item.numExchanges = item.expiredAt < now ? 1 : item.numExchanges + 1;
			item.expiredAt = now + ExchangeType.getCooldown(item.type);
			item.outcome = 0;
			item.outcomes = new IntIntMap();
			item.requirements = new IntIntMap();
			game.player.resources.increase(ResourceType.FREE_CHEST_OPENED, 1);
		}
		else if( item.category == ExchangeType.C110_BATTLES )
		{
			game.player.resources.increase(ResourceType.BATTLE_CHEST_OPENED, 1);
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

	public function findRandomOutcome(item:ExchangeItem) : Void
	{
		var openedChests = item.category == ExchangeType.C100_FREES ? game.player.getResource(ResourceType.FREE_CHEST_OPENED) : game.player.getResource(ResourceType.BATTLE_CHEST_OPENED);
		item.outcome = item.category == ExchangeType.C110_BATTLES ? getBattleBook(openedChests) : getFreeBook(openedChests);
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
			// not enough requerements
			if( item.getState(now) == ExchangeItem.CHEST_STATE_WAIT  && game.player.get_keys() < ExchangeType.getKeyRequierement(item.outcome))
				return MessageTypes.RESPONSE_NOT_ENOUGH_REQS;
			else if( item.getState(now) == ExchangeItem.CHEST_STATE_BUSY && game.player.get_hards() < timeToHard(item.expiredAt - now) )
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
			else if ( reqKeys[i] == ResourceType.CURRENCY_SOFT )
				softs += map.get(reqKeys[i]);
			else if( ResourceType.isBuilding(reqKeys[i])) 
				softs += cardToSoft( map.get(reqKeys[i]), reqKeys[i] );
			else if ( ResourceType.isBook(reqKeys[i]))
				hards += toHard(estimateBookOutcome(reqKeys[i], map.get(reqKeys[i])));
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
			else if( ResourceType.isBuilding(reqKeys[i]) ) 
				softs += cardToSoft( map.get(reqKeys[i]), reqKeys[i] );
			
			i ++;
		}
		return hardToSoft( keyToHard(keys) + realToHard(reals) + hards ) + softs ;
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
	static public function timeToKey(count:Int):Int
	{
		return Math.floor(timeToHard(count) / 20);
	}
	static public function keyToHard(count:Int):Int
	{
		return count * 5 ;
	}	
	static public function cardToSoft(count:Int, improveLevel:Int) : Int
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
	
	static function estimateBookOutcome( type:Int, arena:Int = 0 ) : IntIntMap
	{
		var ret = new IntIntMap();
		ret.set( BuildingType.B10_BARRACKS, ExchangeType.getNumTotalCards(type, arena) );
		ret.set( ResourceType.CURRENCY_SOFT, ExchangeType.getNumSofts(type, arena) );
		return ret;
	}
	
	function getRequierement(item:ExchangeItem, now:Int) : IntIntMap
	{
		if( item.category < ExchangeType.C40_OTHERS || (item.requirements != null && item.requirements.keys().length > 0) )
			return item.requirements;
		
		var ret = new IntIntMap();
		if( item.type == ExchangeType.C42_RENAME )
		{
			ret.set( ResourceType.CURRENCY_HARD, 20 * item.numExchanges);
		}
		else if( item.category == ExchangeType.C110_BATTLES )
		{
			if( item.getState(now) == ExchangeItem.CHEST_STATE_BUSY )
				ret.set(ResourceType.CURRENCY_HARD, timeToHard(item.expiredAt - now) );
			else if( item.getState(now) == ExchangeItem.CHEST_STATE_WAIT )
				ret.set(ResourceType.KEY, ExchangeType.getKeyRequierement(item.outcome));
		}
		else if( ( item.type == ExchangeType.C43_ADS || item.category == ExchangeType.C100_FREES ) && item.expiredAt > now )
		{
			ret.set( ResourceType.CURRENCY_HARD, timeToHard(item.expiredAt - now) * item.numExchanges);
		}
		return ret;
	}
	
	#if java
	function getBookOutcomes(type:Int, arena:Int, isDaily:Bool = false ) : IntIntMap
	{
		var ret = new IntIntMap();
		var numSlots = ExchangeType.getNumSlots(type) - 1;
		var totalCards = ExchangeType.getNumTotalCards(type, arena) + 1;
		var slotSize = Math.ceil(totalCards / numSlots);
		var openedBook:Int = game.player.getResource(isDaily ? ResourceType.FREE_CHEST_OPENED : ResourceType.BATTLE_CHEST_OPENED);
		var numCards:Int = 0;
		var accCards:Int = 0;
		while( numSlots >= 0 )
		{
			numCards = numSlots > 0 ? Math.floor(slotSize * 0.9 + Math.random() * slotSize * 0.1) : totalCards - accCards;
			accCards += numCards;
			//trace("numChest", numChest, "numSlots", numSlots);
			
            if( numSlots == 0  ) // last slot
            {
				var randomness = (type - 53) * 0.1; // 0.1 ~ 0.6 based on book type
				if( openedBook == 0 || ExchangeType.isMagic(type) || Math.random() < randomness )
					addNewCard(ret, 2);
			}
			addRandomSlot(ret, numCards);
			numSlots --;
		}
		
		// hards
        if( isDaily )
            ret.set( ResourceType.CURRENCY_HARD, type - 50 );
        
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
		if( openedBooks % 81 == 0 )
			return ExchangeType.BOOK_59_DRAGON;
			
		return ExchangeType.BOOK_51_METAL;
	}
	
	private function getBattleBook(openedBooks:Int) : Int
	{
		if( game.player.get_keys() > 20 )// consume accumulated keys
		{
			var rand = Math.random();
			if( rand > 0.8 )
				return ExchangeType.BOOK_59_DRAGON;
			else if( rand > 0.6 )
				return ExchangeType.BOOK_57_TREASURE;
			else if( rand > 0.3 )
				return ExchangeType.BOOK_54_SEA;
		}
		
		if( openedBooks == 0 )
			return ExchangeType.BOOK_51_METAL;
		if( openedBooks % 7 == 0 )
			return ExchangeType.BOOK_53_STARS;
		if( openedBooks % 11 == 0 || openedBooks == 2 )
			return ExchangeType.BOOK_54_SEA;
		if( openedBooks % 19 == 0 )
			return ExchangeType.BOOK_57_TREASURE;
		if( openedBooks % 47 == 0 )
			return ExchangeType.BOOK_59_DRAGON;
			
		return ExchangeType.BOOK_52_KNIGHT;
	}
}