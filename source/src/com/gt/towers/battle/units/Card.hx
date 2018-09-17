package com.gt.towers.battle.units;
import com.gt.towers.Game;
import com.gt.towers.constants.CardFeatureType;
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
	public var game:Game;
	public var maxLevel:Int = 10;
	
	public var rarity:Int = 0;
	public var availableAt:Int = 0;
	public var elixirSize:Int = 5;
	public var troopsCount:Int = 10;
	public var deployTime:Int = 500;
	//public var troopType:Int = -1;
	//public var healRate:Float = 0.15;
	
	public var troopHealth:Float = 1;
	public var troopSpeed:Int = 4000;
	
	public var damage:Float = 1.05;
	public var damageGap:Int = 800;
	public var damageRangeMin:Float = 50;
	public var damageRangeMax:Float = 180;
	
	private var _level:Int;
	public function new(game:Game, type:Int, level:Int)
	{
		this.game = game;
		this.type = type;
		this._level = level;
		setFeatures();
	}
	
	private function setFeatures():Void
	{
		rarity = game.calculator.getInt(CardFeatureType.F00_RARITY, type, get_level());
		availableAt = game.calculator.getInt(CardFeatureType.F01_AVAILABLE_AT, type, get_level());
		elixirSize = game.calculator.getInt(CardFeatureType.F02_ELIXIR_SIZE, type, get_level());
		troopsCount = game.calculator.getInt(CardFeatureType.F03_TROOPS_COUNT, type, get_level());
		deployTime = game.calculator.getInt(CardFeatureType.F04_DEPLOY_TIME, type, get_level());
		
		// troops data
		troopSpeed = game.calculator.getInt(CardFeatureType.F11_TROOP_SPEED, type, get_level());
		troopHealth = game.calculator.get(CardFeatureType.F13_TROOP_HEALTH, type, get_level());
		
		// defensive data
		damage = game.calculator.get(CardFeatureType.F21_DAMAGE, type, get_level());
		damageGap = game.calculator.getInt(CardFeatureType.F22_DAMAGE_GAP, type, get_level());
		damageRangeMin = game.calculator.get(CardFeatureType.F23_RANGE_RANGE_MIN, type, get_level());
		damageRangeMax = game.calculator.get(CardFeatureType.F24_RANGE_RANGE_MAX, type, get_level());
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
		ret.set(ResourceType.XP, Math.round( ( Math.log(get_level() * get_level()) + Math.log(1) ) * 30 ) + 4);
		
		// reduce winStreak to make AI difficulty easier
		if ( playerWinStreak - 9 <= minWinStreak )
			ret.set(ResourceType.WIN_STREAK, minWinStreak - playerWinStreak);
		else
			ret.set(ResourceType.WIN_STREAK, -4);
		
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
	public function availabled():Bool 
	{
		return availableAt <= game.player.get_arena(0);
	}
	public function unlocked(type:Int=-1):Bool 
	{
		return game.player.cards.exists(type);
	}
	
	
	public function count() : Int
	{
		return game.player.resources.get(type);
	}

	public function toSoft(count:Int = 1):Int
	{
		return Exchanger.cardToSoft(count, 0);
	}
	public function toHard(count:Int = 1):Int
	{
		return Exchanger.softToHard( toSoft(count) );
	}
}