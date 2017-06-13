package com.gt.towers.battle;
import com.gt.towers.Player;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.Bundle;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.Game;

/**
 * ...
 * @author Mansour Djawadi
 */
class BattleOutcome 
{

	public static var MAX_POINTS:Int = 30;
	public static var MAX_CARDS:Int = 2;
	
	public function new(){}
	
	public function get_outcomes(winner:Bool):Bundle
	{
		var ret:Bundle = new Bundle();
		var pl:Player = Game.get_instance().get_player();
		
		// calculate money
		ret.set(ResourceType.CURRENCY_0, pl.get_arena() * 10);
		
		// calculate point
		if (pl.get_point() <  MAX_POINTS && !winner)
			ret.set(ResourceType.POINT, 0 );
		else
			ret.set(ResourceType.POINT, MAX_POINTS * (winner ? 1 : -1) );
		
		// calculate cards
		/*var unlockedWeapons = Game.get_instance().get_player().get_buildings().get_availables();
		var i:Int = 0;
		while (i < unlockedWeapons.length)
		{
			if (Math.random() < 0.1)
				ret.set(unlockedWeapons[i], Math.ceil(Math.random() * MAX_CARDS));
			i++;
		}*/

		return ret;
	}
	
	public function consume_outcomes(outcomes:Bundle):Void
	{
		Game.get_instance().get_player().get_resources().increaseMap(outcomes);
	}


	
}