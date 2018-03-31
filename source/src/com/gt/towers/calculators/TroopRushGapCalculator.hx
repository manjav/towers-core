package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopRushGapCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 350; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		//if( CardTypes.get_category( type ) == CardTypes.C200 )// rapids
		//	return BASE_VALUE - 50 - Math.log(level) * 20 ;

		return BASE_VALUE ;
	}
}