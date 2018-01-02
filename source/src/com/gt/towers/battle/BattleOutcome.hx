package com.gt.towers.battle;
import com.gt.towers.Game;
import com.gt.towers.Player;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.constants.ExchangeType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class BattleOutcome 
{

	public function new(){}
	
	#if java

	public static var MIN_POINTS:Int = 7;
	public static var COE_POINTS:Int = 1;
	public static var MAX_XP:Int = 10;
	public static var MAX_CARDS:Int = 2;

	
	public static function get_outcomes(game:Game, field:FieldData, earnedScore:Int, earnedKeys:Int):IntIntMap
	{
		var ret:IntIntMap = new IntIntMap();
		if ( game.player.inFriendlyBattle )
		{
			ret.set(ResourceType.BATTLES_COUNT_WEEKLY, 1);
			return ret;
		}
		
		if ( field.isQuest )
		{
			var diffScore = earnedScore - game.player.quests.get(field.index);
			var newRecord = diffScore > 0;
			
			if ( game.player.inTutorial() )
				return ret;
				
			if ( newRecord )
			{
				// xp
				ret.set(ResourceType.XP, cast( Math.max(0, MAX_XP * (earnedScore > 0 ? earnedScore : -3) / 3 ), Int ) );
				
				// keys
				ret.set(ResourceType.KEY, diffScore);
	
				// softs
				ret.set(ResourceType.CURRENCY_SOFT, 10 * diffScore);
			}
		}
		else
		{
			// softs
			ret.set(ResourceType.CURRENCY_SOFT, 5 * cast(Math.max(0, earnedKeys), Int));
			
			// battle stats 
			ret.set(ResourceType.BATTLES_COUNT, 1);
			ret.set(ResourceType.BATTLES_COUNT_WEEKLY, 1);
			
			var winStreak:Int = game.player.resources.get(ResourceType.WIN_STREAK);
			var arena = game.player.get_arena(0);
			if ( earnedScore > 0 )
			{
				ret.set(ResourceType.BATTLES_WINS, 1);
				if ( arena > 0 )
					ret.set(ResourceType.WIN_STREAK, 1);
			}
			else if ( earnedScore < 0 )
			{
				if ( arena > 0 && winStreak >= game.arenas.get(arena).minWinStreak)
					ret.set(ResourceType.WIN_STREAK, Math.random() > 0.5 ? -1 : -2);
			}
			
			// keys
			var keyItem = game.exchanger.items.get(ExchangeType.S_41_KEYS);
			if ( keyItem.numExchanges < game.loginData.maxKeysPerDay )
			{
				var numKeys = cast( Math.min( game.loginData.maxKeysPerDay-keyItem.numExchanges, Math.max(0, earnedKeys) ), Int );
				ret.set(ResourceType.KEY, numKeys);
				keyItem.numExchanges += numKeys;
			}
		
			// points
			var point = 0;
			if ( earnedScore > 0 )
				point = MIN_POINTS + earnedScore * COE_POINTS + Math.round(Math.random() * 4 - 2);
			else if ( earnedScore < 0 )
				point = -MIN_POINTS + earnedScore * COE_POINTS + Math.round(Math.random() * 4 - 2);
				
			if ( point < 0 && game.player.resources.get(ResourceType.POINT) < -point)
				point = 0;
			ret.set(ResourceType.POINT, point );
		}
		return ret;
	}
	#end
}