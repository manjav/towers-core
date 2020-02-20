package com.gt.towers.calculators;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopSpeedCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 12.5; }//2500
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var category = BuildingType.get_category(type);
		return switch( category )
		{
			case 0	: BASE_VALUE * 0.82;
			case 20	: BASE_VALUE * 1.50 + ( Math.log(level) * 2 + Math.log(improveLevel) ) * 3.0;
			case 30	: BASE_VALUE * 0.70 + ( Math.log(level) * 1 + Math.log(improveLevel) ) * 0.4;
			default : BASE_VALUE;
		}
	}
}