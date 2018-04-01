package com.gt.towers.calculators;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopSpeedCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 12; }//2500
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return BASE_VALUE;
		var category = BuildingType.get_category(type);
		return switch( category )
		{
			case 0	: BASE_VALUE * 0.833;
			case 20	: BASE_VALUE * 2.000 + ( Math.log(level) * 2 + Math.log(improveLevel) ) * 4.0;
			case 30	: BASE_VALUE * 0.625 + ( Math.log(level) * 2 + Math.log(improveLevel) ) * 0.8;
			default : BASE_VALUE;
		}
	}
}