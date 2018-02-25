package com.gt.towers.buildings;

/**
 * ...
 * @author Mansour Djawadi
 */
class Heavy extends Building 
{
	#if flash
	public override function get_troopName () : String
	{
		return "30/";
	}
	public override function get_troopSpriteCount () : Int
	{
		return 23;
	}
	#end
	
	public override function get_troopSpeed():Int
	{
		return Math.round(4000 * (1/Building.TIME_SCALE));
	}
	public override function get_troopPower():Float
	{
		return 1.5 + ( Math.log(get_level()) * 0.9 + Math.log(improveLevel) ) * 0.5;
	}
	public override function get_birthRate():Float
	{
		return super.get_birthRate() * 0.8;
	}
	public override function get_exitGap():Int 
	{
		return super.get_exitGap() * 2;
	}
	
}