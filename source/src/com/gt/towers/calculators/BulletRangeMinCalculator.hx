package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class BulletRangeMinCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 0.01; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch( type )
		{
			default : BASE_VALUE;
		}
		return ret;
	}
}