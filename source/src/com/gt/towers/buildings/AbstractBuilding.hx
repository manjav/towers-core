package com.gt.towers.buildings;
import com.gt.towers.Game;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.constants.BuildingFeatureType;
import com.gt.towers.exchanges.ExchangeItem;
import com.gt.towers.exchanges.Exchanger;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class AbstractBuilding 
{
	public var type:Int;
	public var level:Int;
	public var improveLevel:Int;
	
	private var game:Game;
	
	public function new(game:Game, type:Int, level:Int)
	{
		this.game = game;
		this.type = type;
		this.level = level;
		this.improveLevel = type % 10;
	}
	
	
	public function get_upgradeCost():Int
	{
		return Math.floor( Math.pow( 2, level ) * 10 ) ;
	}
	public function get_upgradeCards():Int
	{
		return Math.floor( Math.pow( 2, level ) ) ;
	}
	public function get_upgradeRequirements():IntIntMap
	{
		var ret = new IntIntMap();
		ret.set( ResourceType.CURRENCY_SOFT, get_upgradeCost() );
		ret.set( type, get_upgradeCards() );
		return ret;
	}
	
	public function get_upgradeRewards():IntIntMap 
	{
		var ret = new IntIntMap();
		ret.set(ResourceType.XP, Math.round( ( Math.log(level * level) + Math.log(improveLevel * improveLevel) ) * 30 ) + 4);
		return ret;
	}
	
	
	public function upgradable():Bool 
	{
		return game.player.has(get_upgradeRequirements());
	}
	public function upgrade(confirmedHards:Int=0):Bool
	{
		if ( !upgradable() )
			return false;
			
		var ei = new ExchangeItem(0);
		ei.requirements = get_upgradeRequirements();
		ei.outcomes = get_upgradeRewards();
		game.exchanger.exchange(ei, confirmedHards);
//		game.player.resources.reduceMap();
//		game.player.resources.increaseMap(get_upgradeRewards());
		
		level ++;
		return true;
	}	
	public function get_unlockArena():Int 
	{
		return 100;
	}
	public function availabled():Bool 
	{
		return get_unlockArena() <= game.player.get_arena();
	}
	public function unlocked(type:Int=-1):Bool 
	{
		if ( type == BuildingType.NONE )
			type = this.type;
		else if ( type == BuildingType.IMPROVE )
			type = this.type + 1;
		return game.player.resources.exists(type);
	}

	
	public function price(count:Int = 1):Int
	{
		return Math.round( Math.round( Math.log(level * level) + Math.log(improveLevel * improveLevel))+1 ); 
	}
	public function toGem(count:Int = 1):Int
	{
		return game.exchanger.softToHard( price(count) );
	}

}