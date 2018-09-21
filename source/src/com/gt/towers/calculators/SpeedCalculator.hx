package com.gt.towers.calculators;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class SpeedCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 12.5; }//2500
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var category = CardTypes.get_category(type);
		return switch( category )
		{
			case 100	: BASE_VALUE * 0.82;
			case 150	: BASE_VALUE * 1.50 + ( Math.log(level) * 2 + Math.log(improveLevel) ) * 3.0;
			case 200	: BASE_VALUE * 0.70 + ( Math.log(level) * 1 + Math.log(improveLevel) ) * 0.4;
			default : BASE_VALUE;
		}
	}
}