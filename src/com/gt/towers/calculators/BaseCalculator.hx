package com.gt.towers.calculators;
import com.gt.towers.Game;
import com.gt.towers.battle.BattleField;

/**
 * ...
 * @author Mansour Djawadi
 */
class BaseCalculator 
{
	var game:Game;
	public var battleField:BattleField;
	public var BASE_VALUE:Float = 1;
	public function new (game:Game) { this.game = game; }
	public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return 1;
	}
}