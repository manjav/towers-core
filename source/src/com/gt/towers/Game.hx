package com.gt.towers;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.arenas.Arena;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.utils.Tracer;
import com.gt.towers.utils.maps.IntArenaMap;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class Game
{
	public var loginData:LoginData = new LoginData(); 
	
	public var player:Player;
	public var exchanger:Exchanger;
	public var fieldProvider:FieldProvider;
	public var arenas:IntArenaMap;

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
		player = new Player(this, data);
		exchanger = new Exchanger(this, data);
		fieldProvider = new FieldProvider();
		
		arenas = new IntArenaMap();
		//arenas.set(0, new Arena(0, 0,		20,		"21"    ));
		arenas.set(1, new Arena(1, 21,		60,		"21"	));
		arenas.set(2, new Arena(2, 61,		135,	"31"	));
		arenas.set(3, new Arena(3, 136,		240,	"12"	));
		arenas.set(4, new Arena(4, 240,		400,	"41,32" ));
		arenas.set(5, new Arena(5, 401,		650,	"22,42"	));
		arenas.set(6, new Arena(6, 651,		1100,	"13,23"	));
		arenas.set(7, new Arena(7, 981,		1900,	"33,43"	));
		arenas.set(8, new Arena(8, 1901,	20000,	"24,14"	));
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