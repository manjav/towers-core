package com.gt.towers.buildings;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.utils.lists.IntList;

/**
 * ...
 * @author Mansour Djawadi
 */
class Crystal extends Building 
{

	#if flash

	public function get_crystalHeight () : Int
	{
		if ( type == BuildingType.B42_CRYSTAL )
			return 60;
		else if ( type == BuildingType.B43_CRYSTAL )
			return 68;
		else if ( type == BuildingType.B44_CRYSTAL )
			return 70;
		return 5;
	}
	#end
	
	public override function get_damage():Float
	{
		return 1.05 + ( Math.log(get_level()) * 0.75 + Math.log(improveLevel) ) * 0.35;
	}
	public override function get_damageGap():Int
	{
		return Math.round( 500 * (1/Building.TIME_SCALE) - Math.log(improveLevel) * 80 +  Math.log(get_level()) * 90 );
	}
	public override function get_damageRadius():Float
	{
		return 180 + Math.round( (Math.log(improveLevel) + Math.log(get_level())) * 32);
	}
}