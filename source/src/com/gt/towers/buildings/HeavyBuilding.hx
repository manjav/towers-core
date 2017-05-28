package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class HeavyBuilding extends Building 
{

	public function new(index:Int) 
	{
		super(index);
		_type = BuildingType.B01_HEAVY;
	}
	
	public override function get_capacity():Int 
	{
		return 15 * level;
	}
	public override function get_exitGap():Int 
	{
		return 280 - ((level-1) * 30);
	}
	public override function get_troopSpeed():Int
	{
		return 800 - ((level-1) * 25);
	}
	public override function get_spawnGap():Int
	{
		return 1700 - ((level-1) * 130);
	}
}