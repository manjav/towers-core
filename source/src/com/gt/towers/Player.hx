package com.gt.towers;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntBuildingMap;
import com.gt.towers.utils.maps.PlayerResources;

/**
 * ...
 * @author Mansour Djawadi
 */

class Player
{
	public var troopType:Int = -1;

	public function new(initData:InitData)
	{
		_id = ""+initData.id;
		_nickName = initData.nickName;
		
		// add player buildings level
		_buildingsLevel = initData.buildingsLevel;
		
		// add player resources data
		_resources = new PlayerResources();
		
		var r:Int = 0;
		var kies = initData.resources.keys();
		while (r < kies.length)
		{
			_resources.set(kies[r], initData.resources.get(kies[r]));
			r++;
		}
	}

	private var _id:String = "no_id";
	public function get_id():String
	{
		return _id;
	}

	private var _nickName:String = "no_nickName";
	public function get_nickName():String
	{
		return _nickName;
	}

	private var _resources:PlayerResources;
	public function get_resources():PlayerResources
	{
		return _resources;
	}
	public function get_xp():Int { return get_resources().get(ResourceType.XP); }
	public function get_point():Int { return get_resources().get(ResourceType.POINT); }
	public function get_money():Int { return get_resources().get(ResourceType.CURRENCY_0); }
	public function get_gem():Int { return get_resources().get(ResourceType.CURRENCY_1); }
	
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
	
		
	private var _buildingsLevel:IntIntMap;
	public function get_buildingsLevel():IntIntMap
	{
		return _buildingsLevel;
	}
}