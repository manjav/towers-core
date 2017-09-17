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
			ret.set(ResourceType.CURRENCY_SOFT, 4 * cast(Math.max(0, score), Int));
			
			// battle stats 
			ret.set(ResourceType.BATTLES_COUNT, 1);
			if ( score > 0 )
				ret.set(ResourceType.BATTLES_WINS, 1);
			
			// keys
			var keyItem = game.exchanger.items.get(ExchangeType.S_41_KEYS);
			var maxKeys = 10;
			if ( keyItem.numExchanges < maxKeys )
			{
				var numKeys = cast( Math.min( maxKeys-keyItem.numExchanges, Math.max(0, score) ), Int );
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