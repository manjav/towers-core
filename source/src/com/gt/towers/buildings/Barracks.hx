package com.gt.towers.buildings;

/**
 * ...
 * @author Mansour Djawadi
 */
class Barracks extends Building 
{
	public override function get_birthRate():Float
	{
		return (Building.BASE_BIRTH_RATE + Math.log(get_level()) * 0.03 + Math.log(improveLevel) * 0.02) * Building.TIME_SCALE;
	}
}