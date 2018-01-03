package com.gt.towers.buildings.cals;
import com.gt.towers.buildings.cals.DeployTimeCalculator;
import com.gt.towers.buildings.cals.ElixirSizeCalculator;
import com.gt.towers.constants.BuildingFeatureType;

/**
 * ...
 * @author Mansour Djawadi
 */
class FeatureCalculator 
{
	public var TIME_SCALE:Float = 1;
	
	public var capacity:CapacityCalculator;
	public var birthRate:BrithRateCalculator;
	public var elixirSize:ElixirSizeCalculator;
	public var deployTime:DeployTimeCalculator;
	
	public var troopSpeed:TroopSpeedCalculator;
	public var troopPower:TroopPowerCalculator;
	public var troopHealth:TroopHealthCalculator;
	public var troopRushGap:TroopRushGapCalculator;
	
	public var damage:DamageCalculator;
	public var damageGap:DamageGapCalculator;
	public var damageRangeMin:DamageRangMinCalculator;
	public var damageRangeMax:DamageRangMaxCalculator;

	public function new()
	{
		capacity = new CapacityCalculator();
		birthRate = new BrithRateCalculator();
		elixirSize = new ElixirSizeCalculator();
		deployTime = new DeployTimeCalculator();
		
		troopSpeed = new TroopSpeedCalculator();
		troopPower = new TroopPowerCalculator();
		troopHealth = new TroopHealthCalculator();
		troopRushGap = new TroopRushGapCalculator();
		
		damage = new DamageCalculator();
		damageGap = new DamageGapCalculator();
		damageRangeMin = new DamageRangMinCalculator();
		damageRangeMax = new DamageRangMaxCalculator();
	}
	
	public function get(featureType:Int, buildingType:Int, level:Int ) : Float
	{
		return switch( featureType )
		{
			case 1 : capacity.get(buildingType, level);
			case 2 : birthRate.get(buildingType, level) * TIME_SCALE;
			case 3 : elixirSize.get(buildingType);
			case 4 : deployTime.get(buildingType, level) * TIME_SCALE;
			
			case 11: troopSpeed.get(buildingType, level) / TIME_SCALE;
			case 12: troopPower.get(buildingType, level);
			case 13: troopHealth.get(buildingType, level);
			case 14: troopRushGap.get(buildingType, level) / TIME_SCALE;
			
			case 21: damage.get(buildingType, level);
			case 22: damageGap.get(buildingType, level) / TIME_SCALE;
			case 23: damageRangeMin.get(buildingType, level);
			case 24: damageRangeMax.get(buildingType, level);
			
			default: 0;
		}
	}
	
	public function getInt(featureType:Int, buildingType:Int, level:Int) : Int
	{
		return Math.round( get( featureType, buildingType, level) );
	}
	
	public function getBaseline(featureType:Int) : Float
	{
		return switch( featureType )
		{
			case 1 : capacity.BASE_VALUE;
			case 2 : birthRate.BASE_VALUE;
			case 3 : elixirSize.BASE_VALUE;
			case 4 : deployTime.BASE_VALUE;
			
			case 11: troopSpeed.BASE_VALUE;
			case 12: troopPower.BASE_VALUE;
			case 13: troopHealth.BASE_VALUE;
			case 14: troopRushGap.BASE_VALUE;
			
			case 21: damage.BASE_VALUE;
			case 22: damageGap.BASE_VALUE;
			case 23: damageRangeMin.BASE_VALUE;
			case 24: damageRangeMax.BASE_VALUE;
			
			default: 0;
		}
	}
}