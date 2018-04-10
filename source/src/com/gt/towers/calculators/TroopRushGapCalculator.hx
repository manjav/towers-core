package com.gt.towers.calculators;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopRushGapCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 350; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch( BuildingType.get_category(type) )
		{
			case 20	: BASE_VALUE * 0.5;
			case 30	: BASE_VALUE * 1.8;
			default : BASE_VALUE;
		}
	}
}