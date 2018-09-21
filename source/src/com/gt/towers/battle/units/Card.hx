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
	public var level:Int;
	public var game:Game;
	public var maxLevel:Int = 10;
	
	public var rarity:Int = 0;
	public var availableAt:Int = 0;
	public var elixirSize:Int = 5;
	public var troopsCount:Int = 10;
	public var deployTime:Int = 500;
	
	public var health:Float = 1;
	public var speed:Int = 4000;
	
	public var bulletDamage:Float = 1.05;
	public var bulletFireGap:Int = 800;
	public var bulletRangeMin:Float = 50;
	public var bulletRangeMax:Float = 180;
	public var bulletDamageArea:Float = 180;
	
	public function new(game:Game, type:Int, level:Int)
	{
		this.game = game;
		this.type = type;
		this.level = level;
		setFeatures();
	}
	
	private function setFeatures():Void
	{
		rarity = game.calculator.getInt(CardFeatureType.F00_RARITY, type, level);
		availableAt = game.calculator.getInt(CardFeatureType.F01_AVAILABLE_AT, type, level);
		elixirSize = game.calculator.getInt(CardFeatureType.F02_ELIXIR_SIZE, type, level);
		troopsCount = game.calculator.getInt(CardFeatureType.F03_TROOPS_COUNT, type, level);
		deployTime = game.calculator.getInt(CardFeatureType.F04_DEPLOY_TIME, type, level);
		
		// troops data
		speed = game.calculator.getInt(CardFeatureType.F11_SPEED, type, level);
		health = game.calculator.get(CardFeatureType.F12_HEALTH, type, level);
		
		// defensive data
		bulletDamage = game.calculator.get(CardFeatureType.F22_BULLET_DAMAGE, type, level);
		bulletFireGap = game.calculator.getInt(CardFeatureType.F23_BULLET_FIRE_GAP, type, level);
		bulletDamageArea = game.calculator.getInt(CardFeatureType.F24_BULLET_DAMAGE_AREA, type, level);
		//bulletRangeMin = game.calculator.get(CardFeatureType.F25_BULLET_RANGE_MIN, type, level);
		bulletRangeMax = game.calculator.get(CardFeatureType.F26_BULLET_RANGE_MAX, type, level);
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
		ret.set( ResourceType.CURRENCY_SOFT,	get_upgradeCost(level) );
		ret.set( type,							get_upgradeCards(level) );
		return ret;
	}
	
	public function get_upgradeRewards():IntIntMap 
	{
		var ret = new IntIntMap();
		var arena = game.player.get_arena(game.player.get_point());
		var minWinStreak = game.arenas.get(arena).minWinStreak;
		var playerWinStreak = game.player.get_winStreak();
		
		// XP rewards
		ret.set(ResourceType.XP, Math.round( ( Math.log(level * level) + Math.log(1) ) * 30 ) + 4);
		
		// reduce winStreak to make AI difficulty easier
		if ( playerWinStreak - 9 <= minWinStreak )
			ret.set(ResourceType.WIN_STREAK, minWinStreak - playerWinStreak);
		else
			ret.set(ResourceType.WIN_STREAK, -4);
		
		return ret;
	}
	
	public function upgradable(confirmedHards:Int=0):Bool 
	{
		return level == -1 || confirmedHards >= Exchanger.toHard( game.player.deductions(get_upgradeRequirements()) );
	}
	public function upgrade(confirmedHards:Int=0):Bool
	{
		if( level == -1 )
		{
			level = 1;
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
		
		level ++;
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