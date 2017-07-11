package com.gt.towers;
import com.gt.towers.InitData;
import com.gt.towers.Player;
import com.gt.towers.battle.FieldProvider;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.utils.Tracer;
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
	public var arenas:IntIntMap;

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
		
		arenas = new IntIntMap();
		arenas.set(0, 0);
		arenas.set(1, 30);
		arenas.set(2, 100);
		arenas.set(3, 250);
		arenas.set(4, 600);
		arenas.set(5, 1000);
		arenas.set(6, 1500);
		arenas.set(7, 2200);
		arenas.set(8, 3000);
	}
}