package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageGapCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 720; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
/*		if( CardTypes.get_category(type) != CardTypes.B40_CRYSTAL )
			return BASE_VALUE ;
		
*/		return BASE_VALUE + improveLevel * 100 - Math.log(level) * 40;
	}
}