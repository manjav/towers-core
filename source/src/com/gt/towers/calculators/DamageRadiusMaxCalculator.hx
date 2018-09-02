package com.gt.towers.calculators;
/**
 * ...
 * @author Mansour Djawadi
 */
class DamageRadiusMaxCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 200; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return BASE_VALUE + Math.log(level) * 12 + Math.log(improveLevel) * 24;
	}
}