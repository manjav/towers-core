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
			if( !battleField.singleMode || !battleField.games.get(0).player.inTutorial() )
				return BASE_VALUE * 0.9;// normal mode
			
			if( game == battleField.games.get(0) )
				return BASE_VALUE * (game.player.hardMode ? 0.7 : 1.2);// player
			
			return BASE_VALUE * (battleField.games.get(0).player.hardMode ? 1.2 : 0.7);// bot
		}
		
		if( category == BuildingType.B10_BARRACKS )
		{
			var ret = BASE_VALUE + ( Math.log(level) * 0.2 + Math.log(improveLevel) ) * 0.1;
			if( !battleField.singleMode || !battleField.games.get(0).player.inTutorial() )
				return ret;
			
			if( game == battleField.games.get(0) )
				return ret * (game.player.hardMode ? 0.9 : 1.2);// player
			
			return ret * (battleField.games.get(0).player.hardMode ? 1.2 : 0.9);// bot
		}
#end
		
		return switch( category )
		{
			case 10	:	1.0 + ( Math.log(level) * 1.0 + Math.log(improveLevel) ) * 0.1;
			case 20	:	1.1 + ( Math.log(level) * 1.2 + Math.log(improveLevel) ) * 0.1;
			case 30	:	1.6 + ( Math.log(level) * 1.8 + Math.log(improveLevel) ) * 0.3;
			default : BASE_VALUE;
		}
	}
}