package com.gt.towers;
import com.gt.towers.Player;
import com.gt.towers.others.BalancingData;
import com.gt.towers.shop.Shop;
import com.gt.towers.battle.BattleField;
import com.gt.towers.utils.maps.IntBuildingMap;


/**
 * ...
 * @author Mansour Djawadi
 */
class Game
{
	public var noticeVersion:Int = 101;
	public var forceVersion:Int = 100;
	public var battleField:BattleField;

	public function new(data:InitData)
	{
		_instance = this;

		_player = new Player(data);
		_shop = new Shop();
		battleField = new BattleField();
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