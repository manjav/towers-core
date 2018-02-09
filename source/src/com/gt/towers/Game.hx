package com.gt.towers;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.arenas.Arena;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.buildings.Building;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.socials.Lobby;
import com.gt.towers.utils.maps.IntArenaMap;
import com.gt.towers.utils.maps.IntBuildingMap;
import com.gt.towers.utils.maps.IntIntMap;

#if java
import com.gt.towers.battle.AIEnemy;
#end

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
		arenas.set(0, new Arena(0, 0,		20,		-4,				"11"    ));
		arenas.set(1, new Arena(1, 21,		100,	-3,				"21,31"	));
		arenas.set(2, new Arena(2, 101,		200,	-2,				"41,12"	));
		arenas.set(3, new Arena(3, 201,		300,	-1,				"13,22"	));
		arenas.set(4, new Arena(4, 301,		500,	 0,				"32,42" ));
		arenas.set(5, new Arena(5, 501,		900,	 1,				"23,33"	));
		arenas.set(6, new Arena(6, 901,		1500,	 2,				"14,43"	));
		arenas.set(7, new Arena(7, 1501,	2500,	 3,				"24"	));
		arenas.set(8, new Arena(8, 2501,	4000,	 4, 			"34"	));
		arenas.set(9, new Arena(9, 4001,	10000,	 5, 			"44"	));
		
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
		var baseLevel:Int = Math.round(Math.max(1, Math.log(player.get_point() / 250) * 4) + 2);
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
				trace("bot building " + type + ", level: " + level );
				player.buildings.set(type, BuildingType.instantiate( this, type, null, 0, level ) );
				cardsLen --;
			}
			arenaIndex ++;
		}
	}
	
	public function isBot() : Bool
	{
		return player.id < 10000;
	}
}