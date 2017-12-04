package com.gt.towers.buildings.cals;
import com.gt.towers.constants.BuildingFeatureType;

/**
 * ...
 * @author Mansour Djawadi
 */
class FeatureCalculator 
{
	public function new(){}
	
	public function get(featureType:Int, buildingType:Int, level:Int ) : Float
	{
		return switch( featureType )
		{
			case 1: CapacityCalculator.get(buildingType, level);
			case 2 : BrithRateCalculator.get(buildingType, level);
			
			case 11: TroopSpeedCalculator.get(buildingType, level);
			case 12: TroopPowerCalculator.get(buildingType, level);
			case 13: TroopHealthCalculator.get(buildingType, level);
			case 14: TroopRushGapCalculator.get(buildingType, level);
			
			case 21: DamageCalculator.get(buildingType, level);
			case 22: DamageGapCalculator.get(buildingType, level);
			case 23: DamageRangMinCalculator.get(buildingType, level);
			case 24: DamageRangMaxCalculator.get(buildingType, level);
			default: 0; // common
		}
	}
	
	public function getInt(featureType:Int, buildingType:Int, level:Int) 
	{
		return cast (get( featureType, buildingType, level), Int);
	}
}