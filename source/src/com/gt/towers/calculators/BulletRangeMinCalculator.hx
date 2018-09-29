package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class BulletRangeMinCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 300; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return BASE_VALUE;
	}
}