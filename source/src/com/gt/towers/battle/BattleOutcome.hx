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
	public static var SCORE_RATIO:Int = 3;
	
	public static function get_outcomes(game:Game, field:FieldData, score:Int):IntIntMap
	{
		var ret:IntIntMap = new IntIntMap();
		
		if ( field.isQuest )
		{
			var diffScore = score - game.player.quests.get(field.index);
			var newRecord = diffScore > 0;
			
			if ( game.player.inTutorial() )
				return ret;
				
			if ( newRecord )
			{
				// calculate xp
				ret.set(ResourceType.XP, cast( Math.max(0, MAX_XP * (score > 0 ? score : -3) / 3 ), Int ) );
				
				// calculate rewards
				/*var unlockedBuildings = game.player.buildings.keys();
				var i:Int = 0;
				var numUnlocked = Math.min(unlockedBuildings.length, diffScore);
				while ( i < numUnlocked )
				{
					//if ( Math.random() < 1/numUnlocked )
					ret.set(unlockedBuildings[i], Math.ceil(Math.random() * MAX_CARDS));
					i++;
				}*/
				ret.set(ResourceType.KEY, diffScore);
	
				// calculate money
				ret.set(ResourceType.CURRENCY_SOFT, 10 * diffScore);
			}
		}
		else
		{
			// money manipulation 
			ret.set(ResourceType.CURRENCY_SOFT, 4 * cast(Math.max(0, score), Int));
			
			// key manipulation 
			var keyItem = game.exchanger.items.get(ExchangeType.S_41_KEYS);
			var maxKeys = 10;
			if ( keyItem.numExchanges < maxKeys )
			{
				var numKeys = cast( Math.min( maxKeys-keyItem.numExchanges, Math.max(0, score) ), Int );
				ret.set(ResourceType.KEY, numKeys);
				keyItem.numExchanges += numKeys;
			}
		
			// point manipulation
			var point = score * SCORE_RATIO;
			if ( point != 0 )
				point += Math.round(Math.random() * 4) - 2;
				
			if ( point < 0 && game.player.resources.get(ResourceType.POINT) < -point)
				point = 0;
			ret.set(ResourceType.POINT, point );

			// unlocked cards manipulation 
			/*var nextArena = game.player.get_arena( game.player.get_point() + point );
			if ( nextArena > game.player.get_arena(0) )
			{
				var cards = game.arenas.get ( nextArena ).cards;
				var c = 0;
				while ( c < cards.size() )
				{
					if ( !game.player.buildings.exists( cards.get(c) ) )
						ret.set( cards.get(c) , 1 );
					c ++;
				}
			}*/
		}
		return ret;
	}
	#end
}