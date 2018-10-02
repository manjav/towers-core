package com.gt.towers.calculators;
import com.gt.towers.calculators.QuantityCalculator;
/**
 * ...
 * @author Mansour Djawadi
 */
class FeatureCalculator 
{
	public var TIME_SCALE:Float = 1;
	
	var rarity:RarityCalculator;
	var availableAt:AvailableAtCalculator;
	var elixirSize:ElixirSizeCalculator;
	var quantity:QuantityCalculator;
	var deployTime:DeployTimeCalculator;
	
	var speed:SpeedCalculator;
	var health:HealthCalculator;
	
	var bulletSpeed:BulletSpeedCalculator;
	var bulletDamage:BulletDamageCalculator;
	var bulletFireGap:BulletFireGapCalculator;
	var bulletRangeMin:BulletRangeMinCalculator;
	var bulletRangeMax:BulletRangeMaxCalculator;
	var bulletDamageArea:BulletDamageAreaCalculator;

	public function new()
	{
		rarity = new RarityCalculator(null);
		availableAt = new AvailableAtCalculator(null);
		elixirSize = new ElixirSizeCalculator(null);
		quantity = new QuantityCalculator(null);
		deployTime = new DeployTimeCalculator(null);
		speed = new SpeedCalculator(null);
		health = new HealthCalculator(null);
		
		bulletSpeed = new BulletSpeedCalculator(null);
		bulletDamage = new BulletDamageCalculator(null);
		bulletFireGap = new BulletFireGapCalculator(null);
		bulletRangeMin = new BulletRangeMinCalculator(null);
		bulletRangeMax = new BulletRangeMaxCalculator(null);
		bulletDamageArea = new BulletDamageAreaCalculator(null);
	}
	/*public function setField(battleField:BattleField) : Void
	{
		//availableAt.battleField = battleField;
		capacity.battleField = battleField;
		troopSpeed.battleField = battleField;
		troopPower.battleField = battleField;
		//troopHealth.battleField = battleField;
		troopRushGap.battleField = battleField;
		damage.battleField = battleField;
		damageGap.battleField = battleField;
		damageRadiusMin.battleField = battleField;
		damageRadiusMax.battleField = battleField;
	}*/
	
	public function get(featureType:Int, buildingType:Int, level:Int = 1) : Float
	{
		return switch( featureType )
		{
			case 0 : rarity.get(buildingType);
			case 1 : availableAt.get(buildingType);
			case 2 : elixirSize.get(buildingType);
			case 3 : quantity.get(buildingType);
			case 4 : deployTime.get(buildingType) * TIME_SCALE;
			
			case 11: speed.get(buildingType, level) / TIME_SCALE;
			case 12: health.get(buildingType, level);
			
			case 21: bulletSpeed.get(buildingType, level) / TIME_SCALE;
			case 22: bulletDamage.get(buildingType, level);
			case 23: bulletFireGap.get(buildingType, level) * TIME_SCALE;
			case 24: bulletDamageArea.get(buildingType, level);
			case 25: bulletRangeMin.get(buildingType, level);
			case 26: bulletRangeMax.get(buildingType, level);
			
			default: 0;
		}
	}
	
	public function getInt(featureType:Int, CardType:Int, level:Int = 1) : Int
	{
		return Math.round( get( featureType, CardType, level) );
	}
	
	public function getBaseline(featureType:Int) : Float
	{
		return switch( featureType )
		{
			case 0 : rarity.BASE_VALUE;
			case 1 : availableAt.BASE_VALUE;
			case 2 : elixirSize.BASE_VALUE;
			case 3 : quantity.BASE_VALUE;
			case 4 : deployTime.BASE_VALUE;
			
			case 11: speed.BASE_VALUE;
			case 12: health.BASE_VALUE;
			
			case 21: bulletSpeed.BASE_VALUE;
			case 22: bulletDamage.BASE_VALUE;
			case 23: bulletFireGap.BASE_VALUE;
			case 24: bulletDamageArea.BASE_VALUE;
			case 25: bulletRangeMin.BASE_VALUE;
			case 26: bulletRangeMax.BASE_VALUE;
			
			default: 0;
		}
	}
	
	public function getUIFactor(featureType:Int) : Float
	{
		return switch( featureType )
		{
			case 5 : 1000;
			case 11: 4;
			case 12: 50;
			case 21: 50;
			case 22: 0.15;
			case 23: 0.2;
			case 24: 0.2;
			default: 1;
		}
	}
}