package com.gt.towers.calculators;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class BrithRateCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 0.025; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var category = BuildingType.get_category(type);
#if java		
		if( category == BuildingType.B00_CAMP )
		{
			if( battleField.games.get(0).player.inTutorial() )
				return BASE_VALUE * (game == battleField.games.get(0) ? 1 : 0.6 );				
			return BASE_VALUE * 0.8;// normal mode
		}
#end	
		var ret:Float = BASE_VALUE + 0;
		if( category == BuildingType.B10_BARRACKS )
			ret = BASE_VALUE * 1.00 + Math.log(level) * 0.02 + Math.log(improveLevel) * 0.003;
		else if( category == BuildingType.B20_RAPID )
			ret = BASE_VALUE * 0.85;
		else if( category == BuildingType.B30_HEAVY )
			ret = BASE_VALUE * 0.75;
		else if( category == BuildingType.B40_CRYSTAL )
			ret = BASE_VALUE * 0.65;
		//trace("type", type, " category", category, " level", level, " improveLevel", improveLevel, " ret", ret);
		return ret;
	}
}