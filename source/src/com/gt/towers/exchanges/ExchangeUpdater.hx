package com.gt.towers.exchanges;
import com.gt.towers.Game;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.exchanges.ExchangeItem;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class ExchangeUpdater 
{
	var now:Int;
	var arena:Int;
	var game:Game;
	public var changes:java.util.List<ExchangeItem>;

	public function new(game:Game) 
	{
		
		this.game = game;
	    this.now = cast(java.lang.System.currentTimeMillis() / 1000, Int);
		this.arena = game.player.get_arena(0);
        this.changes = new java.util.ArrayList();
    }

    public function update( item:ExchangeItem ):Void
    {
		if( item.category != ExchangeType.C20_SPECIALS )
			return;
			
		if( item.category == ExchangeType.C20_SPECIALS )
			updateSpecials(item);
	}
	
	function updateSpecials(item:ExchangeItem) : Void
	{
		if( item.expiredAt < now )
		{
			if( item.type == ExchangeType.C23_SPECIAL )
			{
				if( game.player.cards.keys().length > 0 )
					item.outcome = game.player.cards.getRandomKey();
				else
					item.outcome = ResourceType.R3_CURRENCY_SOFT;
			}
			else if( item.type == ExchangeType.C22_SPECIAL )
			{
				item.outcome = ResourceType.R4_CURRENCY_HARD;
			}
			else if( item.type == ExchangeType.C21_SPECIAL )
			{
				item.outcome = ResourceType.R3_CURRENCY_SOFT;
			}
			
			item.expiredAt = now + 86400;
			item.numExchanges = 0;
			item.outcomes = new IntIntMap();
			item.outcomes.set(item.outcome, getOutcomeQuantity(item));
			createOutcomeString(item);
		}
		else if( item.outcomes.values()[0] <= 0 )
		{
			item.outcomes.set(item.outcome, getOutcomeQuantity(item));
			createOutcomeString(item);
		}
		
		item.requirements = new IntIntMap();
		item.requirements.set(getRequirementType(item), getPrice(item));
	}
		
	function createOutcomeString(item:ExchangeItem) : Void
	{
		item.createMapsStr();
		changes.add(item);
	}
	
	function getOutcomeQuantity(item:ExchangeItem):Int 
	{
		if( ResourceType.isCard(item.outcome) )
			return 3 * ( arena + 1 );
		else if( ResourceType.isBook(item.outcome) )
			return 1;
		
		return switch ( item.outcome )
		{
			case 3	: 10 * ( arena + 1 );
			case 4	: 1 * Math.ceil( (arena + 1) * 0.3 );
			case 5	: 1 * Math.ceil( (arena + 1) * 0.3 );
			default	: 10;
		}
	}
	
	function getRequirementType(item:ExchangeItem) : Int 
	{
		if( item.category == ExchangeType.C30_BUNDLES )
			return ResourceType.R5_CURRENCY_REAL;
		
		if( ResourceType.isCard(item.outcome) )
			return ResourceType.R3_CURRENCY_SOFT;
		return switch ( item.outcome )
		{
			case 3	: ResourceType.R4_CURRENCY_HARD;
			case 4	: ResourceType.R5_CURRENCY_REAL;
			case 5	: ResourceType.R4_CURRENCY_HARD;
			default	: ResourceType.R3_CURRENCY_SOFT;
		}
	}
	
	function getPrice(item:ExchangeItem):Int 
	{
		var count = item.outcomes.values()[0];
		if( ResourceType.isCard(item.outcome) )
			return Math.round(Exchanger.toSoft(item.outcomes) * 0.2);
		else if( (item.outcome == ResourceType.R3_CURRENCY_SOFT && count <= 100) || (item.outcome == ResourceType.R4_CURRENCY_HARD && count <= 5) )
			return 0;
		return Math.round(Exchanger.toSoft(item.outcomes) * 0.2);
	}
}