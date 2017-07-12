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
		arenas.set(0, new Arena(0, 0,		30,		"11"	));
		arenas.set(1, new Arena(1, 31,		100,	"12"	));
		arenas.set(2, new Arena(2, 101,		250,	"21,31"	));
		arenas.set(3, new Arena(3, 251,		600,	"13,22"	));
		arenas.set(4, new Arena(4, 601,		1000,	"41,32"	));
		arenas.set(5, new Arena(5, 1001,	1500,	"42,23"	));
		arenas.set(6, new Arena(6, 1501,	2200,	"14,33"	));
		arenas.set(7, new Arena(7, 2201,	3000,	"43,24"	));
		arenas.set(8, new Arena(8, 3001,	100000,	"44,34"	));
	}
}