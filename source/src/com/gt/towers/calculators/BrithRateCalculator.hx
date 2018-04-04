package com.gt.towers.calculators;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class BrithRateCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 0.04; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var category = BuildingType.get_category(type);
#if java		
		if( category == BuildingType.B00_CAMP )
		{
			if( !battleField.singleMode || !battleField.games.get(0).player.inTutorial() )
				return BASE_VALUE * 0.9;
			
			if( game == battleField.games.get(0) )
				return BASE_VALUE * (game.player.hardMode ? 0.7 : 1.3);// player
			
			return BASE_VALUE * (battleField.games.get(0).player.hardMode ? 1.3 : 0.7);// bot
		}
#end	
		if( category == BuildingType.B10_BARRACKS )
			return BASE_VALUE + Math.log(level) * 0.03 + Math.log(improveLevel) * 0.02;
		else if( category == BuildingType.B30_HEAVY )
			return BASE_VALUE * 0.8;
		
		return BASE_VALUE;
	}
}