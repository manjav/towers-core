package com.gt.towers.calculators;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopSpeedCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 2500; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var category = BuildingType.get_category(type);
		return switch( category )
		{
			case 0	: 3000;
			case 20	: BASE_VALUE - ( Math.log(level) * 2 + Math.log(improveLevel) ) * 80 - 1400;
			case 30	: BASE_VALUE - ( Math.log(level) * 1 + Math.log(improveLevel) ) * 40;
			default : BASE_VALUE;
		}
	}
}