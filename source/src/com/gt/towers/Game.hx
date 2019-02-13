package com.gt.towers;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.scripts.ScriptEngine;
import com.gt.towers.constants.CardFeatureType;
import com.gt.towers.others.Arena;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.constants.CardTypes;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.socials.Lobby;
import com.gt.towers.utils.maps.IntArenaMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Game
{
	public var loginData:LoginData = new LoginData(); 
	public var appVersion:Int;
	public var market:String;
	public var sessionsCount:Int;
	public var exchanger:Exchanger;
	public var levels:Array<Int>;
	public var arenas:IntArenaMap;
	public var player:Player;
	public var lobby:Lobby;
	public var inBattleChallengMode:Int = -1;

	public function new()
	{
		levels = [0, 20, 50, 100, 200, 400, 1000, 2000, 5000, 10000, 20000, 40000, 80000];
	}
	function init(data:InitData) 
	{
		appVersion = data.appVersion;
		market = data.market;
		sessionsCount = data.sessionsCount;
		FieldProvider.init();
		fillArenas();
		player = new Player(this, data);
		exchanger = new Exchanger(this);
		lobby = new Lobby(this);
	}
	
	function fillArenas() : Void
	{
		arenas = new IntArenaMap();
	  //				Arena(num,	min,	max, minWinStreak));
		arenas.set(0, new Arena(0,	0,		100,	-8));
		arenas.set(1, new Arena(1,	101,	300,	-7));//400
		arenas.set(2, new Arena(2,	301,	600,	-6));//700
		arenas.set(3, new Arena(3,	601,	1000,	-5));//1100
		arenas.set(4, new Arena(4,	1001,	1500,	-4));//1400
		arenas.set(5, new Arena(5,	1501,	2200,	-3));//1700
		arenas.set(6, new Arena(6,	2201,	3000,	-2));//2000
		arenas.set(7, new Arena(7,	3001,	4500,	-2));//2400
		arenas.set(8, new Arena(8,	4501,	7000,	-1));//2800
		arenas.set(9, new Arena(9,	7001,	10000,	 0));//3000
	}
	
	/*public function unlockedBuildingAt ( type:Int ) : Int
	{
		var arenaIndex = 0;
		var arenaKeys = arenas.keys();
		while ( arenaIndex < arenaKeys.length )
		{
			var cardIndex = 0;
			var arena = arenas.get(arenaKeys[arenaIndex]);
			while ( cardIndex <  arena.cards.size() )
			{
				if( arena.cards.get(cardIndex) == type )
					return arenaIndex;
				cardIndex ++;
			}
			arenaIndex ++;
		}
		return 100;
	}*/
	public function getBuildingAvailablity(type:Int =-1) : Int
	{
		if( !ResourceType.isCard(type) )
			return CardTypes.AVAILABLITY_EXISTS;
		if( player.cards.exists(type) )
			return CardTypes.AVAILABLITY_EXISTS;
		return ScriptEngine.getInt(CardFeatureType.F01_AVAILABLE_AT, type, 1) <= player.get_arena(0) ? CardTypes.AVAILABLITY_WAIT : CardTypes.AVAILABLITY_NOT;
	}
}