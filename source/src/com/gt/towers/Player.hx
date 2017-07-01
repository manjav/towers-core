package com.gt.towers;
import com.gt.towers.Game;
import com.gt.towers.buildings.AbstractBuilding;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntBuildingMap;
import com.gt.towers.utils.maps.IntExchangeMap;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */

class Player
{
	public var id:Int;
	public var nickName:String = "no_nickName";
	public var troopType:Int = -1;
	public var resources:IntIntMap;
	public var quests:IntIntMap;
	public var buildings:IntBuildingMap;
	
	private var game:Game;
	
	public function new(game:Game, initData:InitData)
	{
		this.game = game;
		id = initData.id;
		nickName = initData.nickName;
		
		// add player resources, quests data
		resources = initData.resources;// new IntIntMap();
		resources.set(ResourceType.CURRENCY_REAL, 2147483647);
		quests = initData.quests;// new IntIntMap();
		
		// add player buildings data
		buildings = new IntBuildingMap();
		
		var i:Int = 0;
		var kies = initData.buildingsLevel.keys();
		while (i < kies.length)
		{
			buildings.set(kies[i], BuildingType.instantiate( game, kies[i], null, 0, initData.buildingsLevel.get( kies[i] ) ) );
			i++;
		}
	}

	public function get_questIndex():Int 
	{ 
		var i:Int = 0;
		var kies = quests.keys();
		while (i < kies.length)
		{
			if (quests.get(kies[i]) == 0)
				return i;
				
			i++;
		}
		return i-1;
	}
	
	public function get_xp():Int { return resources.get(ResourceType.XP); }
	public function get_point():Int { return resources.get(ResourceType.POINT); }
	public function get_softs():Int { return resources.get(ResourceType.CURRENCY_SOFT); }
	public function get_hards():Int { return resources.get(ResourceType.CURRENCY_HARD); }
	public function get_level():Int
	{
		var xp:Int = get_xp();
		
		if (xp < 15)
			return 1;
		else if (xp < 135)
			return 2;
		else if (xp < 80)
			return 3;
		else 
		{
			var l:Int = 3;
			var _xp:Int = 0;
			while (_xp <= xp)
			{
				l ++;
				_xp = Math.round( l * (l + 1) * (l + 2) * (l + 9) / 6) ;
			}
			return l;
		}
	}
	
	public function get_arena():Int
	{
		var point:Int = get_point();
		
		if (point < 100)
			return 1;
		else if (point < 1000)
			return 2;
		else
			return 3;
	}
	
	
	public function has(IntIntMap:IntIntMap):Bool
	{
		var i:Int = 0;
		var keis = IntIntMap.keys();
		while (i < keis.length)
		{
			if ( IntIntMap.get(keis[i]) > resources.get(keis[i]) )
				return false;
			i++;
		}
		return true;
	}
	
	public function deductions(IntIntMap:IntIntMap) : IntIntMap
	{
		var ret = new IntIntMap();
		var keis = IntIntMap.keys();
		var i = 0;
		while ( i < keis.length )
		{
			var remain = IntIntMap.get(keis[i]) - resources.get(keis[i]);
			if(remain > 0)
				ret.set(keis[i], remain);
			i ++;
		}
		return ret;
	}
}