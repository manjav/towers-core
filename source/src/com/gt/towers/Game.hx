package com.gt.towers;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.arenas.Arena;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.socials.Lobby;
import com.gt.towers.utils.maps.IntArenaMap;
import com.gt.towers.utils.maps.IntIntMap;

#if java
import com.gt.towers.utils.Tracer;
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

#if java
	public var tracer:Tracer;
	public function new( data:InitData, tracer:Tracer )
	{
		this.tracer = tracer;
		init(data);
	}
#else
	public function new( data:InitData )
	{
		init(data);
	}
#end
	
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
		arenas.set(0, new Arena(0, 0,		50,		-4,				"11"    ));
		arenas.set(1, new Arena(1, 51,		120,	-3,				"21"	));
		arenas.set(2, new Arena(2, 121,		200,	-2,				"31"	));
		arenas.set(3, new Arena(3, 221,		300,	-1,				"12"	));
		arenas.set(4, new Arena(4, 351,		500,	 0,				"41,22" ));
		arenas.set(5, new Arena(5, 501,		800,	 1,				"13,32"	));
		arenas.set(6, new Arena(6, 501,		1200,	 2,				"42,23"	));
		arenas.set(7, new Arena(7, 701,		1800,	 3,				"14,33"	));
		arenas.set(8, new Arena(8, 1001,	2500,	 4, 			"24,43"	));
		arenas.set(9, new Arena(9, 1401,	10000,	 5, 			"34,44"	));
		
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
}