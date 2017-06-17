package com.gt.towers.buildings;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.Bundle;

/**
 * ...
 * @author Mansour Djawadi
 */
class AbstractBuilding 
{
	public var type:Int;
	public var level:Int;
	
	public function new(type:Int, level:Int)
	{
		this.type = type;
		this.level = level;
	}
	
	public function get_upgradeRequirements():Bundle
	{
		var ret = new Bundle();
		ret.set( ResourceType.CURRENCY_0, Math.floor( Math.pow( 10, level ) ) );
		ret.set( type, Math.floor( Math.pow( 2, level ) ) );
		return ret;
	}
	public function upgradable():Bool 
	{
		return get_upgradeRequirements().enough();
	}
	public function upgrade():Bool
	{
		if ( !upgradable() )
			return false;
		Game.get_instance().get_player().get_resources().reduceMap(get_upgradeRequirements());
		level ++;
		return true;
	}	
	public function get_unlockArena():Int 
	{
		return 100;
	}
	public function availabled():Bool 
	{
		return get_unlockArena() <= Game.get_instance().get_player().get_arena();
	}
	public function unlocked():Bool 
	{
		return Game.get_instance().get_player().get_resources().exists(type);
	}

	public function get_upgradeRewards():Bundle 
	{
		var ret = new Bundle();
		ret.set(ResourceType.XP, Math.floor( Math.pow( 0.5, level) ) );
		return ret;
	}
	
}