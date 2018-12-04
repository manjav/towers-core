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
	public var quantity:Int = 1;
	public var summonTime:Int = 500;
	
	public var health:Float = 1;
	public var speed:Float = 1;
	public var sizeH:Float = 50;
	public var sizeV:Float = 50;
	public var focusRange:Float = 150;
	public var explosive:Bool;
	
	public var bulletSpeed:Float = 1.0;
	public var bulletDamage:Float = 1.05;
	public var bulletShootGap:Int = 800;
	public var bulletShootDelay:Int = 500;
	public var bulletRangeMin:Float = 50;
	public var bulletRangeMax:Float = 180;
	public var bulletDamageArea:Float = 180;
	public var bulletExplodeDelay:Float = 0;
	
	public function new(game:Game, type:Int, level:Int)
	{
		this.game = game;
		this.type = type;
		this.level = level;
		setFeatures();
	}
	
	private function setFeatures():Void
	{
		var _level = type == 201 ? (game.player.get_level(game.player.get_xp()) + 1) : level;
		
		rarity = game.calculator.getInt(CardFeatureType.F00_RARITY, type, _level);
		availableAt = game.calculator.getInt(CardFeatureType.F01_AVAILABLE_AT, type, _level);
		elixirSize = game.calculator.getInt(CardFeatureType.F02_ELIXIR_SIZE, type, _level);
		quantity = game.calculator.getInt(CardFeatureType.F03_QUANTITY, type, _level);
		summonTime = game.calculator.getInt(CardFeatureType.F04_SUMMON_TIME, type, _level);
		
		// troops data
		speed = game.calculator.get(CardFeatureType.F11_SPEED, type, _level);
		health = game.calculator.get(CardFeatureType.F12_HEALTH, type, _level);
		sizeH = game.calculator.get(CardFeatureType.F13_SIZE_H, type, _level);
		sizeV = game.calculator.get(CardFeatureType.F14_SIZE_V, type, _level);
		focusRange = game.calculator.get(CardFeatureType.F15_FOCUS_RANGE, type, _level);
		explosive = game.calculator.getBool(CardFeatureType.F16_EXPLOSIVE, type, _level);
		
		// defensive data
		bulletSpeed = game.calculator.get(CardFeatureType.F21_BULLET_SPEED, type, _level);
		bulletDamage = game.calculator.get(CardFeatureType.F22_BULLET_DAMAGE, type, _level);
		bulletShootGap = game.calculator.getInt(CardFeatureType.F23_BULLET_SHOOT_GAP, type, _level);
		bulletShootDelay = game.calculator.getInt(CardFeatureType.F24_BULLET_SHOOT_DELAY, type, _level);
		//bulletRangeMin = game.calculator.get(CardFeatureType.F25_BULLET_RANGE_MIN, type, _level);
		bulletRangeMax = game.calculator.get(CardFeatureType.F26_BULLET_RANGE_MAX, type, _level);
		bulletDamageArea = game.calculator.get(CardFeatureType.F27_BULLET_DAMAGE_AREA, type, _level);
		bulletExplodeDelay = game.calculator.getInt(CardFeatureType.F28_BULLET_EXPLODE_DElAY, type, _level);
	}
	
	static var RARITY_START_LEVEL = [0, 2, 6, 9];
	static public var RARITY_COUNT = [1, 10, 200, 4000];
	static public var UPGRADE_COST:Array<Int> = [0,	10,	20,	 50,	120,	300,	800,	2000,	5000,	10000,	20000,	50000,	100000];
	static public var UPGRADE_CARD:Array<Int> = [0,	2,	4,	 10,	 20,	50,		100,	200,	400,	800,	1000,	2000,	5000];
	static public function get_upgradeCost(level:Int, rarity:Int = 0):Int
	{
		var lvl = Math.round(Math.max(1, level - RARITY_START_LEVEL[rarity]));
		if( lvl < UPGRADE_COST.length )
			return UPGRADE_COST[lvl];
		return Math.floor( Math.pow( 2, lvl - 9 ) * 100000 );
	}
	static public function get_upgradeCards(level:Int, rarity:Int = 0) : Int
	{		
		var lvl = Math.round(Math.max(1, level - RARITY_START_LEVEL[rarity]));
		if( lvl < UPGRADE_CARD.length )
			return UPGRADE_CARD[lvl];
		return Math.floor( Math.pow( 2, lvl - 10 ) * 10000 );
	}
	static public function getTotalCollected(level:Int, count:Int, rarity:Int = 0) : Int 
	{
		var ret = count + 0;
		var l = level - 1;
		while ( l > 0 )
		{
			ret += Card.get_upgradeCards(l, rarity);
			l --;
		}
		return ret;
	}
	
	public function get_upgradeRequirements():IntIntMap
	{
		var ret = new IntIntMap();
		ret.set( ResourceType.R3_CURRENCY_SOFT,	get_upgradeCost(level, rarity) );
		ret.set( type,							get_upgradeCards(level, rarity) );
		return ret;
	}
	
	public function get_upgradeRewards():IntIntMap 
	{
		var ret = new IntIntMap();
		var arena = game.player.get_arena(game.player.get_point());
		var minWinStreak = game.arenas.get(arena).minWinStreak;
		var playerWinStreak = game.player.get_winStreak();
		
		// XP rewards
		ret.set(ResourceType.R1_XP, Math.round( ( Math.log(level * level) + Math.log(1) ) * 30 ) + 4);
		
		// reduce winStreak to make AI difficulty easier
		if ( playerWinStreak - 9 <= minWinStreak )
			ret.set(ResourceType.R16_WIN_RATE, minWinStreak - playerWinStreak);
		else
			ret.set(ResourceType.R16_WIN_RATE, -4);
		
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
	
	public function toString():String
	{
		return "type:" + type + " level:" + level + " elixirSize:" + elixirSize + " summonTime:" + summonTime + " health:" + health + " speed:" + speed + " bulletDamage:" + bulletDamage + " bulletFireGap:" + bulletShootGap + " bulletRangeMax:" + bulletRangeMax;
	}
}