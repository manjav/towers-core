package com.gt.towers.buildings;
import com.gt.towers.Game;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.BuildingFeatureType;
import com.gt.towers.exchanges.ExchangeItem;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class AbstractBuilding 
{
	public var type:Int;
	public var improveLevel:Int;
	
	public var game:Game;

	private var _level:Int;
	
	public function new(game:Game, type:Int, level:Int)
	{
		this.game = game;
		this.type = type;
		this._level = level;
		this.improveLevel = type % 10;
	}
	
	public function get_level():Int
	{
		if ( game.player.inFriendlyBattle )
			return 5;
		else
			return _level;
	}	
	public function set_level(value:Int):Void
	{
		_level = value;
	}
	
	public function get_upgradeCost():Int
	{
		var costs = new IntIntMap();
		if (get_level() < 11)
		{
			costs.set(0, 0);
			costs.set(1, 10);
			costs.set(2, 20);
			costs.set(3, 50);
			costs.set(4, 120);
			costs.set(5, 300);
			costs.set(6, 800);
			costs.set(7, 2000);
			costs.set(8, 5000);
			costs.set(9, 10000);
			costs.set(10, 20000);
			return costs.get(get_level());
		}
		else
			return Math.floor( Math.pow( 2, get_level() - 9 ) * 10000 );
	}
	
	public function get_upgradeCards():Int
	{		
		var cards = new IntIntMap();
		if (get_level() < 11)
		{
			cards.set(0, 0);
			cards.set(1, 2);
			cards.set(2, 4);
			cards.set(3, 10);
			cards.set(4, 20);
			cards.set(5, 50);
			cards.set(6, 100);
			cards.set(7, 200);
			cards.set(8, 400);
			cards.set(9, 800);
			cards.set(10, 1000);
			return cards.get(get_level());
		}
		else
			return Math.floor( Math.pow( 2, get_level() - 10 ) * 10000 );
	}
	
	public function get_upgradeRequirements():IntIntMap
	{
		var ret = new IntIntMap();
		ret.set( ResourceType.CURRENCY_SOFT, get_upgradeCost() );
		ret.set( type, get_upgradeCards() );
		return ret;
	}
	
	public function get_upgradeRewards():IntIntMap 
	{
		var ret = new IntIntMap();
		var arena = game.player.get_arena(game.player.get_point());
		var minWinStreak = game.arenas.get(arena).minWinStreak;
		var playerWinStreak = game.player.get_winStreak();
		
		// XP rewards
		ret.set(ResourceType.XP, Math.round( ( Math.log(get_level() * get_level()) + Math.log(improveLevel * improveLevel) ) * 30 ) + 4);
		
		trace(playerWinStreak);
		// reduce winStreak to make AI difficulty easier
		if ( playerWinStreak - 9 <= minWinStreak )
			ret.set(ResourceType.WIN_STREAK, minWinStreak - playerWinStreak);
		else
			ret.set(ResourceType.WIN_STREAK, -7);
			
		return ret;
	}
	
	
	public function upgradable(confirmedHards:Int=0):Bool 
	{
		return confirmedHards >= game.exchanger.toHard( game.player.deductions(get_upgradeRequirements()) );
	}
	public function upgrade(confirmedHards:Int=0):Bool
	{
		if ( !upgradable(confirmedHards) )
			return false;
			
		var ei = new ExchangeItem(0);
		ei.requirements = get_upgradeRequirements();
		ei.outcomes = get_upgradeRewards();
		if ( !game.exchanger.exchange(ei, 0, confirmedHards) )
			return false;
		
		_level ++;
		return true;
	}	
	public function get_unlockAt():Int 
	{
		return game.unlockedBuildingAt(type);
	}
	public function availabled():Bool 
	{
		return get_unlockAt() <= game.player.get_arena(0);
	}
	public function unlocked(type:Int=-1):Bool 
	{
		if ( type == BuildingType.B01_CAMP )
			return true;
			
		if ( game.player.inFriendlyBattle )
			return true;
			
		if ( type == BuildingType.NONE )
			type = this.type;
		else if ( type == BuildingType.IMPROVE )
			type = this.type + 1;
			
		return game.player.resources.exists(type);
	}

	
	public function price(count:Int = 1):Int
	{
		return   Math.round( (improveLevel * 10) + 10 ); 
	}
	public function toGem(count:Int = 1):Int
	{
		return game.exchanger.softToHard( price(count) );
	}

}