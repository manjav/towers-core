package com.gt.towers.buildings.cals;
import com.gt.towers.constants.BuildingFeatureType;

/**
 * ...
 * @author Mansour Djawadi
 */
class FeatureCalculator 
{

	public function new() 
	{
	}
	
	public function get(featureType:Int, buildingType:Int ) : Float
	{
		return switch( featureType )
		{
			case 1: CapacityCalculator.get(buildingType);
			case 2 : BrithRateCalculator.get(buildingType);
			
			case 11: TroopSpeedCalculator.get(buildingType);
			case 12: TroopPowerCalculator.get(buildingType);
			case 13: TroopHealthCalculator.get(buildingType);
			case 14: TroopRushGapCalculator.get(buildingType);
			
			case 21: DamageCalculator.get(buildingType);
			case 22: DamageGapCalculator.get(buildingType);
			case 23: DamageRangMinCalculator.get(buildingType);
			case 24: DamageRangMaxCalculator.get(buildingType);				
			default: 0; // common
		}
	}
	
	public function getInt(featureType:Int, buildingType:Int) 
	{
		return cast (get( featureType, buildingType), Int);
	}
}