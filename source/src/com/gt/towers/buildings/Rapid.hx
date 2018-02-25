package com.gt.towers.buildings;

/**
 * ...
 * @author Mansour Djawadi
 */
class Rapid extends Building 
{
	
	#if flash
	public override function get_troopName () : String
	{
		return "20/";
	}
	public override function get_troopSpriteCount () : Int
	{
		return 10;
	}
	#end
	
	public override function get_troopSpeed():Int
	{
		return Math.round( (Building.BASE_TROOP_SPEED - 1400 - ( Math.log(get_level()) * 2 + 2 * Math.log(improveLevel) ) * 40 ) * (1/Building.TIME_SCALE) );
	}
	public override function get_troopPower():Float
	{
		return 1.1 + ( Math.log(get_level()) * 0.3 + Math.log(improveLevel) ) * 0.3;
	}
}