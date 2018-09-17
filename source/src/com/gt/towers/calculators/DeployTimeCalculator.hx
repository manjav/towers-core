package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class DeployTimeCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 10; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return BASE_VALUE ;
	}
}