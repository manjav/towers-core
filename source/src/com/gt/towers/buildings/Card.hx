package com.gt.towers.buildings;
import com.gt.towers.Game;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.MessageTypes;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.exchanges.ExchangeItem;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Card 
{
	public var type:Int;
	public var category:Int;
	public var improveLevel:Int;
	
	public var game:Game;

	private var _level:Int;
	
	public function new(game:Game, type:Int, level:Int)
	{
		this.game = game;
		this.type = type;
		this._level = level;
		this.category = BuildingType.get_category(type);
		this.improveLevel = BuildingType.get_improve(type);
	}
	
	public function get_level():Int
	{
		return game.player.inFriendlyBattle ? 5 : _level;
	}	
	public function set_level(value:Int):Void
	{
		_level = value;
	}
	
	static public var  UPGRADE_COST:Array<Int> = [0,	10,	20,	 50,	120,	300,	800,	2000,	5000,	10000,	20000];
	static public var  UPGRADE_CARD:Array<Int> = [0,	2,	4,	 10,	 20,	50,		100,	200,	400,	800,	1000];
	static public function get_upgradeCost(level:Int):Int
	{
		if( level < UPGRADE_COST.length )
			return UPGRADE_COST[level];
		return Math.floor( Math.pow( 2, level - 9 ) * 10000 );
	}
	static public function get_upgradeCards(level:Int) : Int
	{		
		if( level < UPGRADE_CARD.length )
			return UPGRADE_CARD[level];
		return Math.floor( Math.pow( 2, level - 10 ) * 10000 );
	}
	static public function getTotalCollected(level:Int, count:Int) : Int 
	{
		var ret = count + 0;
		var l = level - 1;
		while ( l > 0 )
		{
			ret += Card.get_upgradeCards(l);
			l --;
		}
		return ret;
	}
	
	public function get_upgradeRequirements():IntIntMap
	{
		var ret = new IntIntMap();
		ret.set( ResourceType.CURRENCY_SOFT,	get_upgradeCost(get_level()) );
		ret.set( type,							get_upgradeCards(get_level()) );
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
		
		// reduce winStreak to make AI difficulty easier
		if ( playerWinStreak - 9 <= minWinStreak )
			ret.set(ResourceType.WIN_STREAK, minWinStreak - playerWinStreak);
		else
			ret.set(ResourceType.WIN_STREAK, -2);
		
		return ret;
	}
	
	
	public function upgradable(confirmedHards:Int=0):Bool 
	{
		return _level == -1 || confirmedHards >= Exchanger.toHard( game.player.deductions(get_upgradeRequirements()) );
	}
	public function upgrade(confirmedHards:Int=0):Bool
	{
		if( _level == -1 )
		{
			_level = 1;
			return true;
		}
		if( !upgradable(confirmedHards) )
			return false;
		
		var ei = new ExchangeItem(0);
		ei.requirements = get_upgradeRequirements();
		ei.outcomes = get_upgradeRewards();
		var res = game.exchanger.exchange(ei, 0, confirmedHards);
		if( res != MessageTypes.RESPONSE_SUCCEED )
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
		#if java
		if ( game.player.hardMode )
			return true;
		#end
			
		if ( type == BuildingType.NONE )
			type = this.type;
		else if ( type == BuildingType.IMPROVE )
			type = this.type + 1;
			
		return game.player.buildings.exists(type);
	}
	
	
	public function count() : Int
	{
		return game.player.resources.get(type);
	}

	public function toSoft(count:Int = 1):Int
	{
		return Exchanger.cardToSoft(count, improveLevel);
	}
	public function toHard(count:Int = 1):Int
	{
		return Exchanger.softToHard( toSoft(count) );
	}

}