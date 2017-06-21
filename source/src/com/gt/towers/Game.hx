package com.gt.towers;
import com.gt.towers.Player;
import com.gt.towers.battle.fieldes.FieldProvider;
import com.gt.towers.battle.BattleField;
import com.gt.towers.battle.BattleOutcome;
import com.gt.towers.constants.PageType;
import com.gt.towers.constants.BuildingFeatureType;
import com.gt.towers.exchanges.Exchanger;


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
		_exchanger = new Exchanger(data);
	}

	private var _player:Player;
	public function get_player():Player
	{
		return _player;
	}
	
	private var _exchanger:Exchanger;
	public function get_exchanger():Exchanger
	{
		return _exchanger;
	}

	private static var _instance:Game;
	public static function get_instance():Game
	{
		return _instance;
	}
}