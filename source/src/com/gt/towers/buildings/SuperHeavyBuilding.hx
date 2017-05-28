package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;

/**
 * ...
 * @author Mansour Djawadi
 */
class SuperHeavyBuilding extends Building 
{

	public function new(index:Int) 
	{
		super(index);
		_type = BuildingType.B02_SUPER_HEAVY;
	}
	
	public override function get_capacity():Int 
	{
		return 20 * level;
	}
	public override function get_exitGap():Int 
	{
		return 260 - ((level-1) * 40);
	}
	public override function get_troopSpeed():Int
	{
		return 700 - ((level-1) * 30);
	}
	public override function get_spawnGap():Int
	{
		return 1400 - ((level-1) * 16);
	}
}