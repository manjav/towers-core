package com.gt.towers.calculators;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopPowerCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var category = BuildingType.get_category(type);
#if java
		if( category == BuildingType.B00_CAMP )
		{
			if( battleField.games.get(0).player.inTutorial() )
				return BASE_VALUE * (game == battleField.games.get(0) ? 1.7 : 0.6);// bot
			return BASE_VALUE * 0.9;// normal mode
		}
#end
		return switch( category )
		{
			//case 10	:	BASE_VALUE + 0.0 + ( Math.log(level) * 1.0 + Math.log(improveLevel) ) * 0.1;
			case 20	:	BASE_VALUE * 1.2 + ( Math.log(level) * 1.2 + Math.log(improveLevel) ) * 0.1;
			case 30	:	BASE_VALUE * 1.5 + ( Math.log(level) * 1.3 + Math.log(improveLevel) ) * 0.2;
			default : BASE_VALUE;
		}
	}
}