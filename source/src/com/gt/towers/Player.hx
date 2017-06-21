package com.gt.towers;
import com.gt.towers.buildings.AbstractBuilding;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.Bundle;
import com.gt.towers.utils.maps.IntBuildingMap;
import com.gt.towers.utils.maps.IntExchangeMap;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */

class Player
{
	public var troopType:Int = -1;

	public function new(initData:InitData)
	{
		_id = initData.id;
		_nickName = initData.nickName;
		
		
		// add player resources, quests data
		_resources = initData.resources;// new Bundle();
		_quests = initData.quests;// new IntIntMap();
		
		// add player buildings level
		_buildingsLevel = new IntBuildingMap();
		var i:Int = 0;
		var kies = initData.buildingsLevel.keys();
		while (i < kies.length)
		{
			_buildingsLevel.set(kies[i], BuildingType.instantiate( kies[i], null, 0, initData.buildingsLevel.get( kies[i] ) ) );
			i++;
		}
		
	}

	private var _id:Int;
	public function get_id():Int { return _id; }

	private var _nickName:String = "no_nickName";
	public function get_nickName():String { return _nickName; }

	private var _resources:Bundle;
	public function get_resources():Bundle { return _resources; }
	
	public function get_xp():Int { return get_resources().get(ResourceType.XP); }
	public function get_point():Int { return get_resources().get(ResourceType.POINT); }
	public function get_money():Int { return get_resources().get(ResourceType.CURRENCY_SOFT); }
	public function get_gem():Int { return get_resources().get(ResourceType.CURRENCY_HARD); }
	
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
	
	private var _quests:IntIntMap;
	public function get_quests():IntIntMap { return _quests; }
	public function get_questIndex():Int { return _quests.keys().length; }
	
	private var _buildingsLevel:IntBuildingMap;
	public function get_buildings():IntBuildingMap { return _buildingsLevel; }

}