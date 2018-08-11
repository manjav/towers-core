package com.gt.towers;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.arenas.Arena;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.calculators.FeatureCalculator;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.socials.Lobby;
import com.gt.towers.utils.maps.IntArenaMap;
import com.gt.towers.utils.maps.IntBuildingMap;

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
		player = new Player(this, data);
		exchanger = new Exchanger(this);
		lobby = new Lobby(this);
		calculator = new FeatureCalculator(this);
		fieldProvider = new FieldProvider(this);
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
	
	public function unlockedBuildingAt ( type:Int ) : Int
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
			return BuildingType.AVAILABLITY_EXISTS;
		if( player.buildings.exists(type) )
			return BuildingType.AVAILABLITY_EXISTS;
		return unlockedBuildingAt(type) <= player.get_arena(0) ? BuildingType.AVAILABLITY_WAIT : BuildingType.AVAILABLITY_NOT;
	}
	
	public function fillAllBuildings() : Void
	{
		var baseLevel:Int = Math.round( Math.log( Math.max(1, player.get_point() / 100) ) ) * 5 + 1;
		var playerArena = player.get_arena(0);
		var arenaIndex = 0;
		player.buildings = new IntBuildingMap();
		while ( arenaIndex < arenas.keys().length )
		{
			var arena = arenas.get(arenaIndex);
			if ( player.get_point() < arena.min )
				break;
			
			var cardsLen:Int = arena.cards.size() - 1;
			while ( cardsLen >= 0 )
			{
				var type = arena.cards.get(cardsLen);
				var level = playerArena == 0 ? 1 : baseLevel + 4 - BuildingType.get_improve(type);
				player.buildings.set(type, BuildingType.instantiate( this, type, null, 0, level));
				cardsLen --;
			}
			arenaIndex ++;
		}
	}
	
	public function logBuildings() : Void
	{
		var keys = player.buildings.keys();
		var len = keys.length - 1;
		var log = "Id: " + player.id + ", Point: " + player.get_point() + " => ";
		while ( len >= 0 )
		{
			log += " B" + keys[len] + ":" + player.buildings.get(keys[len]).get_level() + "\t";
			len --;
		}
		trace(log);
	}
}