package com.gt.towers.calculators;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageRadiusMaxCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 200; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return BASE_VALUE + Math.log(level) * 10 + Math.log(improveLevel) * 20;
	}
}