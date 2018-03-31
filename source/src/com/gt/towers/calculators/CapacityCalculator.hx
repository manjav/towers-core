package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class CapacityCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 10; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch( improveLevel )
		{
			case 1 : 15;
			case 2 : 18;
			case 3 : 20;
			case 4 : 22;
			
			default : BASE_VALUE;
		}
	}
}