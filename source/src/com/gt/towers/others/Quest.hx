package com.gt.towers.others;
import com.gt.towers.Player;
import com.gt.towers.buildings.AbstractBuilding;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Quest 
{
	static public var TYPE_LEAGUEUP:Int = 0;
	static public var TYPE_LEVELUP:Int = 1;
	static public var TYPE_BATTLES:Int = 2;
	static public var TYPE_OPERATIONS:Int = 3;
	static public var TYPE_FRIENDLY_BATTLES:Int = 4;
	static public var TYPE_CHALLENGES:Int = 5;
	static public var TYPE_CARD_COLLECT:Int = 6;
	static public var TYPE_CARD_UPGRADE:Int = 7;
	static public var TYPE_BOOK_OPEN:Int = 8;
	
	/*static public var KEY_LEAGUEUP:Int = 101;
	static public var KEY_LEVELUP:Int = 102;
	static public var KEY_BATTLES:Int = 103;
	static public var KEY_OPERATIONS:Int = 104;
	static public var KEY_FRIENDLY_BATTLES:Int = 105;
	static public var KEY_CHALLENGES:Int = 106;
	static public var KEY_FREE_BOOKS_OPEN:Int = 107;
	static public var KEY_BATTLE_BOOKS_OPEN:Int = 108;
	
	static public var KEY_CARD_11_COLLECT:Int = 11;
	static public var KEY_CARD_11_UPGRADE:Int = 111;
	static public var KEY_CARD_12_COLLECT:Int = 12;
	static public var KEY_CARD_12_UPGRADE:Int = 112;
	static public var KEY_CARD_13_COLLECT:Int = 13;
	static public var KEY_CARD_13_UPGRADE:Int = 113;
	static public var KEY_CARD_14_COLLECT:Int = 14;
	static public var KEY_CARD_14_UPGRADE:Int = 114;	
	static public var KEY_CARD_21_COLLECT:Int = 21;
	static public var KEY_CARD_21_UPGRADE:Int = 121;
	static public var KEY_CARD_22_COLLECT:Int = 22;
	static public var KEY_CARD_22_UPGRADE:Int = 122;
	static public var KEY_CARD_23_COLLECT:Int = 23;
	static public var KEY_CARD_23_UPGRADE:Int = 123;
	static public var KEY_CARD_24_COLLECT:Int = 24;
	static public var KEY_CARD_24_UPGRADE:Int = 124;
	static public var KEY_CARD_31_COLLECT:Int = 31;
	static public var KEY_CARD_31_UPGRADE:Int = 131;
	static public var KEY_CARD_32_COLLECT:Int = 32;
	static public var KEY_CARD_32_UPGRADE:Int = 132;
	static public var KEY_CARD_33_COLLECT:Int = 33;
	static public var KEY_CARD_33_UPGRADE:Int = 133;
	static public var KEY_CARD_34_COLLECT:Int = 34;
	static public var KEY_CARD_34_UPGRADE:Int = 134;
	static public var KEY_CARD_41_COLLECT:Int = 41;
	static public var KEY_CARD_41_UPGRADE:Int = 141;
	static public var KEY_CARD_42_COLLECT:Int = 42;
	static public var KEY_CARD_42_UPGRADE:Int = 142;
	static public var KEY_CARD_43_COLLECT:Int = 243;
	static public var KEY_CARD_43_UPGRADE:Int = 143;
	static public var KEY_CARD_44_COLLECT:Int = 44;
	static public var KEY_CARD_44_UPGRADE:Int = 144;
	
	static public var KEY_BOOK_51_OPEN:Int = 51;
	static public var KEY_BOOK_52_OPEN:Int = 52;
	static public var KEY_BOOK_53_OPEN:Int = 53;
	static public var KEY_BOOK_54_OPEN:Int = 54;
	static public var KEY_BOOK_55_OPEN:Int = 55;
	static public var KEY_BOOK_56_OPEN:Int = 56;
	static public var KEY_BOOK_57_OPEN:Int = 57;
	static public var KEY_BOOK_58_OPEN:Int = 58;
	static public var KEY_BOOK_59_OPEN:Int = 59;*/
	
	static public function GET_ALL(player:Player):Array<Quest>
	{
		var arena:Int = player.get_arena(player.get_point());
		var level:Int = player.get_level(player.get_xp());
		var ret:Array<Quest> = [
		new Quest(TYPE_LEAGUEUP,		ResourceType.POINT,				"1000:5,1002:8",	2,	arena),
		new Quest(TYPE_LEVELUP,			ResourceType.XP,				"1000:2,1002:9",	2,	level),
		new Quest(TYPE_CARD_COLLECT,	BuildingType.B11_BARRACKS,		"1000:5,1002:6",	10,	GET_COLLCTED_CARDS(player.buildings.get(11).get_level(), player.getResource(11))),
		new Quest(TYPE_CARD_UPGRADE,	BuildingType.B11_BARRACKS,		"1000:5,1002:8",	3,	player.buildings.get(11).get_level()),
		new Quest(TYPE_BATTLES,			ResourceType.BATTLES_COUNT,		"1000:4,1002:4",	10,	player.get_battlesCount()),
		new Quest(TYPE_OPERATIONS,		ResourceType.OPERATIONS_COUNT,	"1000:4,1002:4",	10,	player.getLastOperation())
		];
		return ret;
	}

	public var id:Int;
	public var key:Int;
	public var type:Int;
	public var value:Int;
	public var target:Int;
	public var collected:Bool;
	public var rewards:IntIntMap;
	public function new(type:Int, key:Int, rewards:String, target:Int, value:Int) 
	{
		this.key = key;
		this.type = type;
		this.value = value;
		this.target = target;
		this.rewards = new IntIntMap(/*passed() ? "" : */rewards);
	}
	
	public function passed() : Bool
	{
		return value >= target;
	}
	
	static public function GET_COLLCTED_CARDS(level:Int, count:Int):Int 
	{
		var ret = count + 0;
		var l = level - 1;
		while ( l > 0 )
		{
			ret += AbstractBuilding.get_upgradeCards(l);
			l --;
		}
		return ret;
	}
	
}
//'P' plays with card 'C' only
//'W' wins with card 'C'
//'W' wins with all buildings occupition