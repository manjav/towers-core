package com.gt.towers.battle;
import com.gt.towers.Game;
import com.gt.towers.Player;
import com.gt.towers.battle.fieldes.FieldData;
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
	
	public static function get_outcomes(player:Player, field:FieldData, score:Int):IntIntMap
	{
		var ret:IntIntMap = new IntIntMap();
		
		if ( field.isQuest )
		{
			var diffScore = score - player.quests.get(field.index);
			var newRecord = diffScore > 0;
			if ( newRecord )
			{
				// calculate xp
				ret.set(ResourceType.XP, cast( Math.max(0, MAX_XP * (score > 0 ? score : -3) / 3 ), Int ) );
				
				// calculate rewards
				var unlockedBuildings = player.buildings.keys();
				var i:Int = 0;
				var numUnlocked = Math.min(unlockedBuildings.length, diffScore);
				while ( i < numUnlocked )
				{
					//if ( Math.random() < 1/numUnlocked )
					ret.set(unlockedBuildings[i], Math.ceil(Math.random() * MAX_CARDS));
					i++;
				}
	
				// calculate money
				ret.set(ResourceType.CURRENCY_SOFT, 10 * diffScore);
			}
		}
		else
		{
			// calculate money
			ret.set(ResourceType.CURRENCY_SOFT, 4 * score);
			// calculate point
			ret.set(ResourceType.POINT, cast( Math.max(0, MAX_POINTS * (score > 0 ? score : -3) / 3 ), Int ) );
		}

		return ret;
	}
	#end
	
	public static function consume_outcomes(player:Player, outcomes:IntIntMap):Void
	{
		player.resources.increaseMap(outcomes);
	}
}