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
		if( item.category != ExchangeType.C20_SPECIALS && item.category != ExchangeType.C30_BUNDLES )
			return;
			
		if( item.category == ExchangeType.C20_SPECIALS )
			updateSpecials(item);
		else if( item.category == ExchangeType.C30_BUNDLES )
			updateBundles(item);
	}
	
	function updateSpecials(item:ExchangeItem) : Void
	{
		if( item.expiredAt < now )
		{
			if( item.type == ExchangeType.C23_SPECIAL )
			{
				if( game.player.buildings.keys().length > 0 )
					item.outcome = game.player.buildings.getRandomKey();
				else
					item.outcome = ResourceType.KEY;
			}
			else if( item.type == ExchangeType.C22_SPECIAL )
			{
				item.outcome = ResourceType.CURRENCY_HARD;
			}
			else if( item.type == ExchangeType.C21_SPECIAL )
			{
				item.outcome = ResourceType.CURRENCY_SOFT;
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
	
	function updateBundles(item:ExchangeItem) : Void
	{
		if( item.expiredAt < now && arena > 0 )
		{
			item.expiredAt = now + 86400;
			item.numExchanges = 0;
			item.outcomes = new IntIntMap();
			item.requirements = new IntIntMap();
			if( item.type == ExchangeType.C31_BUNDLE )
			{
				item.outcomes.set(ResourceType.CURRENCY_SOFT, 40000);
				item.outcomes.set(ExchangeType.BOOKS_54_CHROME, 1);
			}
			else if( item.type == ExchangeType.C32_BUNDLE )
			{
				item.outcomes.set(ResourceType.CURRENCY_SOFT, 15000);
				item.outcomes.set(ResourceType.CURRENCY_HARD, 500);
			}
			createOutcomeString(item);
		}
		
		if( item.type == ExchangeType.C31_BUNDLE )
			item.requirements.set(getRequirementType(item), 19999);
		else if( item.type == ExchangeType.C32_BUNDLE )
			item.requirements.set(getRequirementType(item), 9999);
	}
	
	function createOutcomeString(item:ExchangeItem) : Void
	{
		item.outcomesStr = "";
		var keys = item.outcomes.keys();
		var keysLen:Int = keys.length - 1;
		while ( keysLen >= 0 )
		{
			item.outcomesStr += keys[keysLen] + ":" + item.outcomes.get(keys[keysLen]);
			if( keysLen > 0 )
				item.outcomesStr += ",";
			keysLen --;
		}
		
		changes.add(item);
	}
	
	function getOutcomeQuantity(item:ExchangeItem):Int 
	{
		var bundleFactor = item.category == ExchangeType.C30_BUNDLES ? 100 : 1;
		if( ResourceType.isBuilding(item.outcome) )
			return 3 * ( arena + 1 );
		else if( ResourceType.isBook(item.outcome) )
			return 1;
		
		return switch ( item.outcome )
		{
			case 1002	: 10 * ( arena + 1 ) * bundleFactor;
			case 1003	: 3 * bundleFactor;
			case 1004	: 2 * bundleFactor;
			default		: 10;
		}
	}
	
	function getRequirementType(item:ExchangeItem) : Int 
	{
		if( item.category == ExchangeType.C30_BUNDLES )
			return 1101;
		
		if( ResourceType.isBuilding(item.outcome) )
			return 1002;
		return switch ( item.outcome )
		{
			case 1002	: 1003;
			case 1003	: 1101;
			case 1004	: 1003;
			default		: 1002;
		}
	}
	
	function getPrice(item:ExchangeItem):Int 
	{
		if( item.category == ExchangeType.C30_BUNDLES )
			return Math.round(Exchanger.toReal(item.outcomes) * 0.4);
		
		var count = item.outcomes.values()[0];
		if( ResourceType.isBuilding(item.outcome) )
			return Math.round(Exchanger.toSoft(item.outcomes) * 0.2);
		else if( (item.outcome == ResourceType.CURRENCY_SOFT && count <= 100) || (item.outcome == ResourceType.CURRENCY_HARD && count <= 5) || (item.outcome == ResourceType.KEY && count <= 3) )
			return 0;
		return Math.round(Exchanger.toSoft(item.outcomes) * 0.2);
	}
}