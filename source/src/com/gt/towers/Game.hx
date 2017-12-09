package com.gt.towers;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.arenas.Arena;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.buildings.cals.FeatureCalculator;
import com.gt.towers.events.CoreEventDispatcher;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.socials.Lobby;
import com.gt.towers.utils.lists.IntList;
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

	public var eventDispatcher:CoreEventDispatcher;
	public var featureCaculator:FeatureCalculator;
	public var exchanger:Exchanger;
	public var fieldProvider:FieldProvider;
	public var arenas:IntArenaMap;
	public var lobby:Lobby;

#if java
	public var tracer:Tracer;
	public function new( data:InitData, tracer:Tracer )
	{
		this.tracer = tracer;
		eventDispatcher = new CoreEventDispatcher();
		init(data);
	}
#elseif flash
	public function new()
	{
		eventDispatcher = new CoreEventDispatcher();
	}
#end
	
	function init(data:InitData) 
	{
		appVersion = data.appVersion;
		market = data.market;
		sessionsCount = data.sessionsCount;
		
		featureCaculator = new FeatureCalculator();
		player = new Player();
		player.init(this, data);
		exchanger = new Exchanger(this, data);
		lobby = new Lobby(this);
		
		arenas = new IntArenaMap();
		
	  //				Arena(num, min,		max,	minWinStreak,	unlockCards));
		arenas.set(0, new Arena(0, 0,		50,		-4,				"101, 201, 301, 401, 102, 202, 302, 402" ));
		arenas.set(1, new Arena(1, 51,		120,	-3,				"103, 203, 303, 403" ));
		arenas.set(2, new Arena(2, 121,		200,	-2,				"104, 204, 304, 404" ));
		arenas.set(3, new Arena(3, 201,		300,	-1,				"105, 205, 305, 405" ));
		arenas.set(4, new Arena(4, 301,		500,	 0,				"106, 206, 306, 501" ));
		arenas.set(5, new Arena(5, 501,		900,	 1,				"107, 207, 406, 502" ));
		arenas.set(6, new Arena(6, 901,		1500,	 2,				"307, 407, 503" ));
		arenas.set(7, new Arena(7, 1501,	2500,	 3,				"108, 208, 109" ));
		arenas.set(8, new Arena(8, 2501,	4000,	 4, 			"308, 408, 504" ));
		arenas.set(9, new Arena(9, 4001,	10000,	 5, 			"209, 309, 409" ));
		
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