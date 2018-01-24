package com.gt.towers;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.arenas.Arena;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.buildings.cals.FeatureCalculator;
import com.gt.towers.events.CoreEventDispatcher;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.constants.MessageTypes;
import com.gt.towers.constants.StickerType;
import com.gt.towers.socials.Lobby;
import com.gt.towers.utils.maps.IntArenaMap;

#if java
import com.gt.towers.battle.Bot;
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


	public function new()
	{
		eventDispatcher = new CoreEventDispatcher();
	}
	
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
		
	  //				Arena(num, min,		max,	minWinStreak));
		arenas.set(0, new Arena(0, 0,		30,		-4, featureCaculator.availableAt.getArenaCards(0)));
		arenas.set(1, new Arena(1, 31,		100,	-3, featureCaculator.availableAt.getArenaCards(1)));
		arenas.set(2, new Arena(2, 101,		180,	-2, featureCaculator.availableAt.getArenaCards(2)));
		arenas.set(3, new Arena(3, 181,		300,	-1, featureCaculator.availableAt.getArenaCards(3)));
		arenas.set(4, new Arena(4, 301,		500,	 0, featureCaculator.availableAt.getArenaCards(4)));
		arenas.set(5, new Arena(5, 501,		900,	 1, featureCaculator.availableAt.getArenaCards(5)));
		arenas.set(6, new Arena(6, 901,		1500,	 2, featureCaculator.availableAt.getArenaCards(6)));
		arenas.set(7, new Arena(7, 1501,	2500,	 3, featureCaculator.availableAt.getArenaCards(7)));
		arenas.set(8, new Arena(8, 2501,	4000,	 4, featureCaculator.availableAt.getArenaCards(8)));
		arenas.set(9, new Arena(9, 4001,	10000,	 5, featureCaculator.availableAt.getArenaCards(9)));
		
		fieldProvider = new FieldProvider(this);
	}
}