package com.gt.towers.battle;
import com.gt.towers.Game;
import com.gt.towers.Player;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.Bundle;

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
	
	
	public static function get_outcomes(player:Player, field:FieldData, score:Int):Bundle
	{
		var ret:Bundle = new Bundle();
		
		
		
		var rewardChance : Int = 0;
		if ( field.isQuest )
		{
			if ( !player.get_quests().exists(field.index) || player.get_quests().get(field.index) < score )
				rewardChance = score - player.get_quests().get(field.index);
			
			// calculate xp
			ret.set(ResourceType.XP, cast( Math.max(0, MAX_XP * (score > 0 ? score : -3) / 3 ), Int ) );
			
			// calculate money
			ret.set(ResourceType.CURRENCY_0, 10 * score);
		}
		else
		{
			rewardChance = score;
			
			// calculate point
			ret.set(ResourceType.POINT, cast( Math.max(0, MAX_POINTS * (score > 0 ? score : -3) / 3 ), Int ) );
		}
		
		
		// calculate rewards
		var unlockedBuildings = player.get_buildingsLevel().keys();
		var i:Int = 0;
		var numUnlocked = Math.min(unlockedBuildings.length, rewardChance);
		while (i < numUnlocked)
		{
			//if ( Math.random() < 1/numUnlocked )
				ret.set(unlockedBuildings[i], Math.ceil(Math.random() * MAX_CARDS));
			i++;
		}

		return ret;
	}
	#end
	
	public static function consume_outcomes(player:Player, outcomes:Bundle):Void
	{
		player.get_resources().increaseMap(outcomes);
	}
}