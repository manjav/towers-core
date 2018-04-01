package com.gt.towers.calculators;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class CapacityCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 10; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		if( BuildingType.get_category(type) == BuildingType.B00_CAMP )
			return BASE_VALUE;
		
		return switch( improveLevel )
		{
			case 1 : 15;
			case 2 : 18;
			case 3 : 21;
			case 4 : 24;
			
			default : BASE_VALUE;
		}
	}
}