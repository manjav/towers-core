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
		return "darkelfassassin-move-";
	}
	public override function get_troopSpriteCount () : Int
	{
		return 10;
	}
	#end
	
	public override function get_troopSpeed():Int
	{
		return Math.round( (Building.BASE_TROOP_SPEED - 300 - ( Math.log(get_level()) * Math.log(get_level()) * 0.7 + 3 * (Math.log(improveLevel)) ) * 120) * (1/Building.TIME_SCALE) );
	}
	public override function get_troopPower():Float
	{
		return 1.05 + ( Math.log(get_level()) * 0.2 + Math.log(improveLevel) ) * 0.1;
	}
}