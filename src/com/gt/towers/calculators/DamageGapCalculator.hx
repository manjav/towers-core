package com.gt.towers.calculators;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class DamageGapCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 720; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		if( BuildingType.get_category(type) != BuildingType.B40_CRYSTAL )
			return BASE_VALUE ;
		
		return BASE_VALUE + improveLevel * 100 - Math.log(level) * 40;
	}
}