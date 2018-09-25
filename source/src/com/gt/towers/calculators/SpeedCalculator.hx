package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class SpeedCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }//2500
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		/*var category = CardTypes.get_category(type);
		var ret = switch( category )
		{
			case 100	: BASE_VALUE * 0.1;
			case 150	: BASE_VALUE * 1.50 + ( Math.log(level) * 2 + Math.log(improveLevel) ) * 0.3;
			case 200	: BASE_VALUE * 0.70 + ( Math.log(level) * 1 + Math.log(improveLevel) ) * 0.4;
			default : BASE_VALUE;
		}*/
		return BASE_VALUE * 0.15;
	}
}