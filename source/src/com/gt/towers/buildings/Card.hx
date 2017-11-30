package com.gt.towers.buildings;

/**
 * ...
 * @author Babak Sheikh Salimi
 */
class Card extends Building
{
	public var troopPower:Float;

	public function new() 
	{
		troopSpeed = get_troopSpeed();
		troopHealth = get_troopPower();
		troopPower = get_troopPower();
		troopGeneration = get_birthRate();
	}
	
	override public function get_troopSpeed():Float
	{
		return super.get_troopSpeed();
	}
	
	override public function get_troopPower():Float
	{
		return super.get_troopPower();
	}
	
	override public function get_birthRate():Float
	{
		return super.get_birthRate();
	}
}