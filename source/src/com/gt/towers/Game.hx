package com.gt.towers;
import com.gt.towers.Player;
import com.gt.towers.battle.fieldes.FieldProvider;
import com.gt.towers.exchanges.Exchanger;

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

	public function new(data:InitData)
	{
		player = new Player(this, data);
		exchanger = new Exchanger(this, data);
		fieldProvider = new FieldProvider();
	}
}