package com.gt.towers.others;
import com.gt.towers.Player;
import com.gt.towers.buildings.Card;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.CoreUtils;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Quest 
{
	public var id:Int;
	public var key:Int;
	public var type:Int;
	public var target:Int;
	public var current:Int;
	public var nextStep:Int;
	public var collected:Bool;
	public var rewards:IntIntMap;

	public function new(player:Player, id:Int, type:Int, key:Int, nextStep:Int, collected:Bool) 
	{
		this.id = id;
		this.type = type;
		this.key = key;
		this.nextStep = nextStep;
		this.collected = collected;
		this.current = Quest.getCurrent(player, type, key);
		this.target = getTarget(type, nextStep);
		this.rewards = new IntIntMap();///*passed() ? "" : */rewards);
	}
	
	public function passed() : Bool
	{
		return current >= target;
	}
	
	

	static public var TYPE_0_LEVELUP:Int = 0;
	static public var TYPE_1_LEAGUEUP:Int = 1;
	static public var TYPE_2_OPERATIONS:Int = 2;
	static public var TYPE_3_BATTLES:Int = 3;
	static public var TYPE_4_BATTLE_WINS:Int = 4;
	static public var TYPE_5_FRIENDLY_BATTLES:Int = 5;
	static public var TYPE_6_CHALLENGES:Int = 6;
	static public var TYPE_7_CARD_COLLECT:Int = 7;
	static public var TYPE_8_CARD_UPGRADE:Int = 8;
	static public var TYPE_9_BOOK_OPEN:Int = 9;
	
	static public var MAX_STEP:Array<Int> = [20, 10, 4, 100, 100, 20, 10, 10, 100, 100];

	static public function instantiate(type:Int, player:Player) : Quest
	{
		var key = Quest.getKey(type);
		return new Quest(player, -1, type, key, Quest.getNextStep(player, type, key), false);
	}	

	
	static public function fill(player:Player):Void
	{
		trace("fill", player.quests.length);
		if ( player.quests.length >= 4 ){trace("fine");
		return;}
			
		var i = player.quests.length > 0 ? player.quests[player.quests.length - 1].type : -1;
		if( i == 9 )
			i = 0;
		else
			i ++;
		while( i < 10 )
		{
			trace(i);
			if( player.getQuestIndex(i) == -1 )
			{
				player.quests.push( Quest.instantiate(i, player));
				trace(i + " pushed");
				fill(player);
				return;
			}
			i ++;
		}
	}
	
	static public function getKey(type:Int) : Int
	{
		return switch ( type )
		{
			case 0 :	ResourceType.XP;
			case 1 :	ResourceType.POINT;
			case 2 :	ResourceType.OPERATIONS;
			case 3 :	ResourceType.BATTLES;
			case 4 :	ResourceType.BATTLES_WINS;
			case 5 :	ResourceType.BATTLES_FRIENDLY;
			case 6 :	ResourceType.CHALLENGES;
			case 7 :	BuildingType.B11_BARRACKS;
			case 8 :	BuildingType.B11_BARRACKS;
			case 9 :	ResourceType.BOOK_OPENED_FREE;
			default: 	0;
		}
	}
	
	static public function getCurrent(player:Player, type:Int, key:Int) : Int
	{
		return switch ( type )
		{
			case 0 :	player.get_level(player.get_xp());
			case 1 :	player.get_arena(player.get_point());
			case 2 :	player.getLastOperation();
			case 3 :	player.get_battlesCount();
			case 4 :	player.get_battleswins();
			case 5 :	player.getResource(ResourceType.BATTLES_FRIENDLY);
			case 6 :	player.getResource(ResourceType.CHALLENGES);
			case 7 :	getCollectedCards(player.buildings.get(key).get_level(), player.getResource(key));
			case 8 :	player.buildings.get(key).get_level();
			case 9 :	player.getResource(key);
			default: 	0;
		}
	}
	
	static public function getTarget(type:Int, step:Int) : Int
	{
		return switch ( type )
		{
			case 0 :	1 + step;
			case 1 :	1 + step;
			case 2 :	step * 10;
			case 3 :	CoreUtils.round( Math.pow(1.4, step) * 10);
			case 4 :	CoreUtils.round( Math.pow(1.4, step) * 7);
			case 5 :	CoreUtils.round( Math.pow(1.4, step) * 5);
			case 6 :	step * 5;
			case 7 :	getCollectedCards(step, 0);
			case 8 :	step;
			case 9 :	CoreUtils.round( Math.pow(1.4, step) * 5);
			default: 	0;
		}
	}
	
		
	static function getNextStep(player:Player, type:Int, key:Int) : Int 
	{
		var i = 1;
		var current = getCurrent(player, type, key);
		while ( i <= MAX_STEP[type] )
		{
			if( getTarget(type, i) > current )
				return i;
			i ++;
		}
		return i;
	}
	
	static public function getCollectedCards(level:Int, count:Int) : Int 
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
}
//'P' plays with card 'C' only
//'W' wins with card 'C'
//'W' wins with all buildings occupition