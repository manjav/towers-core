package com.gt.towers;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.others.Arena;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.calculators.FeatureCalculator;
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
	public var fieldProvider:FieldProvider;
	public var calculator:FeatureCalculator;
	public var levels:Array<Int>;
	public var arenas:IntArenaMap;
	public var player:Player;
	public var lobby:Lobby;

	public function new(){}
	function init(data:InitData) 
	{
		appVersion = data.appVersion;
		market = data.market;
		sessionsCount = data.sessionsCount;
		
		levels = [0, 20, 50, 100, 200, 400, 1000, 2000, 5000, 10000, 20000, 40000, 80000];
		
		fillArenas();
		fieldProvider = new FieldProvider(this);
		player = new Player(this, data);
		exchanger = new Exchanger(this);
		lobby = new Lobby(this);
		calculator = new FeatureCalculator(this);
	}
	
	function fillArenas() : Void
	{
		arenas = new IntArenaMap();
	  //				Arena(num,	min,	max, minWinStreak,	unlockCards));
		arenas.set(0, new Arena(0,	0,		100,	-8,			"11,21"    	));
		arenas.set(1, new Arena(1,	101,	300,	-7,			"12,31,41"	));//400
		arenas.set(2, new Arena(2,	301,	600,	-6,			"13,22,32"	));//700
		arenas.set(3, new Arena(3,	601,	1000,	-5,			"23,33"		));//1100
		arenas.set(4, new Arena(4,	1001,	1500,	-4,			"14" 		));//1400
		arenas.set(5, new Arena(5,	1501,	2200,	-3,			"42"		));//1700
		arenas.set(6, new Arena(6,	2201,	3000,	-2,			"24"		));//2000
		arenas.set(7, new Arena(7,	3001,	4500,	-2,			"43"		));//2400
		arenas.set(8, new Arena(8,	4501,	7000,	-1, 		"34"		));//2800
		arenas.set(9, new Arena(9,	7001,	10000,	 0, 		"44"		));//3000
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
	}
	public function getBuildingAvailablity(type:Int =-1) : Int
	{
		if( !ResourceType.isBuilding(type) )
			return CardTypes.AVAILABLITY_EXISTS;
		if( player.cards.exists(type) )
			return CardTypes.AVAILABLITY_EXISTS;
		return unlockedBuildingAt(type) <= player.get_arena(0) ? CardTypes.AVAILABLITY_WAIT : CardTypes.AVAILABLITY_NOT;
	}*/
}