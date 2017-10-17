package com.gt.towers.battle;
import com.gt.towers.Game;
import com.gt.towers.Player;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.constants.BuildingType;
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

	public static var MAX_XP:Int = 10;
	public static var MAX_POINTS:Int = 30;
	public static var MAX_CARDS:Int = 2;
	public static var SCORE_RATIO:Int = 4;
	
	public static function get_outcomes(game:Game, field:FieldData, score:Int):IntIntMap
	{
		var ret:IntIntMap = new IntIntMap();
		if ( game.player.inFriendlyBattle )
			return ret;
		
		if ( field.isQuest )
		{
			var diffScore = score - game.player.quests.get(field.index);
			var newRecord = diffScore > 0;
			
			if ( game.player.inTutorial() )
				return ret;
				
			if ( newRecord )
			{
				// xp
				ret.set(ResourceType.XP, cast( Math.max(0, MAX_XP * (score > 0 ? score : -3) / 3 ), Int ) );
				
				// keys
				ret.set(ResourceType.KEY, diffScore);
	
				// moneis
				ret.set(ResourceType.CURRENCY_SOFT, 10 * diffScore);
			}
		}
		else
		{
			// moneis
			ret.set(ResourceType.CURRENCY_SOFT, 5 * cast(Math.max(0, score), Int));
			
			// battle stats 
			ret.set(ResourceType.BATTLES_COUNT, 1);
			var winStrike:Int = game.player.resources.get(ResourceType.WIN_STRIKE);
			var arena = game.player.get_arena(0);
			if ( score > 0 )
			{
				ret.set(ResourceType.BATTLES_WINS, 1);
				if ( arena > 0 )
					ret.set(ResourceType.WIN_STRIKE, 1);
			}
			else if ( score < 0 )
			{
				if ( arena > 0 && winStrike >= game.arenas.get(arena).minWinStreak)
					ret.set(ResourceType.WIN_STRIKE, Math.random() > 0.5 ? -1 : -2);
			}
			
			// keys
			var keyItem = game.exchanger.items.get(ExchangeType.S_41_KEYS);
			if ( keyItem.numExchanges < game.loginData.maxKeysPerDay )
			{
				var numKeys = cast( Math.min( game.loginData.maxKeysPerDay-keyItem.numExchanges, Math.max(0, score) ), Int );
				ret.set(ResourceType.KEY, numKeys);
				keyItem.numExchanges += numKeys;
			}
		
			// points
			var point = score * SCORE_RATIO;
			if ( point != 0 )
				point += Math.round(Math.random() * 4) - 2;
				
			if ( point < 0 && game.player.resources.get(ResourceType.POINT) < -point)
				point = 0;
			ret.set(ResourceType.POINT, point );
		}
		return ret;
	}
	#end
}