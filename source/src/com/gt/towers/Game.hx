package com.gt.towers;
import com.gt.towers.Player;
import com.gt.towers.battle.fieldes.FieldProvider;
import com.gt.towers.shop.Shop;
import com.gt.towers.battle.BattleField;
import com.gt.towers.battle.BattleOutcome;
import com.gt.towers.constants.PageType;


/**
 * ...
 * @author Mansour Djawadi
 */
class Game
{
	public static var loginData:LoginData = new LoginData();
	public static var fieldProvider:FieldProvider = new FieldProvider();

	public function new(data:InitData)
	{
		_instance = this;

		_player = new Player(data);
		//_shop = new Shop();
	}

	private var _player:Player;
	public function get_player():Player
	{
		return _player;
	}
	
	private var _shop:Shop;
	public function get_shop():Shop
	{
		return _shop;
	}




	private static var _instance:Game;
	public static function get_instance():Game
	{
		return _instance;
	}
}