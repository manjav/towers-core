package com.gt.towers;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.arenas.Arena;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.constants.BuildingType;
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
	public var player:Player;
	public var appVersion:Int;
	public var market:String;
	public var sessionsCount:Int;
	public var exchanger:Exchanger;
	public var fieldProvider:FieldProvider;
	public var arenas:IntArenaMap;
	public var lobby:Lobby;

	public function new(){}
	function init(data:InitData) 
	{
		appVersion = data.appVersion;
		market = data.market;
		sessionsCount = data.sessionsCount;
		
		player = new Player(this, data);
		exchanger = new Exchanger(this, data);
		lobby = new Lobby(this);
		
		arenas = new IntArenaMap();
		
	  //				Arena(num, min,		max,	minWinStreak,	unlockCards));
		arenas.set(0, new Arena(0, 0,		100,	-8,				"11"    ));
		arenas.set(1, new Arena(1, 101,		300,	-7,				"21,31"	));//400
		arenas.set(2, new Arena(2, 301,		600,	-6,				"41,12"	));//700
		arenas.set(3, new Arena(3, 601,		1000,	-5,				"13,22"	));//1100
		arenas.set(4, new Arena(4, 1001,	1500,	-4,				"32,42" ));//1400
		arenas.set(5, new Arena(5, 1501,	2200,	-3,				"23,33"	));//1700
		arenas.set(6, new Arena(6, 2201,	3000,	-2,				"14,43"	));//2000
		arenas.set(7, new Arena(7, 3001,	4500,	-2,				"24"	));//2400
		arenas.set(8, new Arena(8, 4501,	7000,	-1, 			"34"	));//2800
		arenas.set(9, new Arena(9, 7001,	10000,	 0, 			"44"	));//3000
		
		fieldProvider = new FieldProvider(this);
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
	
	public function fillAllBuildings() : Void
	{
		var baseLevel:Int = Math.round(Math.max(1, Math.log(player.get_point() / 250) * 2.4));
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
				var level = baseLevel + 4 - BuildingType.get_improve(type);
				trace("bot building " + type, " level:" + level);
				player.buildings.set(type, BuildingType.instantiate( this, type, null, 0, level ) );
				cardsLen --;
			}
			arenaIndex ++;
		}
	}
}