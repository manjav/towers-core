package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageRadiusMinCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 100; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return BASE_VALUE;
	}
}