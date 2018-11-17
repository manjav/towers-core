package com.gt.towers.calculators;
import com.gt.towers.calculators.FocusRangeCalculator;
import com.gt.towers.calculators.SizeHCalculator;
import com.gt.towers.calculators.SizeVCalculator;
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
	var summonTime:SummonTimeCalculator;
	
	var speed:SpeedCalculator;
	var health:HealthCalculator;
	var sizeH:SizeHCalculator;
	var sizeV:SizeVCalculator;
	var focusRange:FocusRangeCalculator;
	
	var bulletSpeed:BulletSpeedCalculator;
	var bulletDamage:BulletDamageCalculator;
	var bulletShootGap:BulletShootGapCalculator;
	var bulletShootDelay:BulletShootDelayCalculator;
	var bulletRangeMin:BulletRangeMinCalculator;
	var bulletRangeMax:BulletRangeCalculator;
	var bulletDamageArea:BulletDamageAreaCalculator;
	var bulletExplodeDelay:BulletExplodeDelayCalculator;


	public function new()
	{
		rarity = new RarityCalculator(null);
		availableAt = new AvailableAtCalculator(null);
		elixirSize = new ElixirSizeCalculator(null);
		quantity = new QuantityCalculator(null);
		summonTime = new SummonTimeCalculator(null);
		
		speed = new SpeedCalculator(null);
		health = new HealthCalculator(null);
		sizeH = new SizeHCalculator(null);
		sizeV = new SizeVCalculator(null);
		focusRange = new FocusRangeCalculator(null);
		
		bulletSpeed = new BulletSpeedCalculator(null);
		bulletDamage = new BulletDamageCalculator(null);
		bulletShootGap = new BulletShootGapCalculator(null);
		bulletShootDelay = new BulletShootDelayCalculator(null);
		bulletRangeMin = new BulletRangeMinCalculator(null);
		bulletRangeMax = new BulletRangeCalculator(null);
		bulletDamageArea = new BulletDamageAreaCalculator(null);
		bulletExplodeDelay = new BulletExplodeDelayCalculator(null);
	}
	
	public function get(featureType:Int, buildingType:Int, level:Int = 1) : Float
	{
		return switch( featureType )
		{
			case 0 : rarity.get(buildingType);
			case 1 : availableAt.get(buildingType);
			case 2 : elixirSize.get(buildingType);
			case 3 : quantity.get(buildingType);
			case 4 : summonTime.get(buildingType) * TIME_SCALE;
			
			case 11: speed.get(buildingType, level) / TIME_SCALE;
			case 12: health.get(buildingType, level);
			case 13: sizeH.get(buildingType, level);
			case 14: sizeV.get(buildingType, level);
			case 15: focusRange.get(buildingType, level);
			
			case 21: bulletSpeed.get(buildingType, level) / TIME_SCALE;
			case 22: bulletDamage.get(buildingType, level);
			case 23: bulletShootGap.get(buildingType, level) * TIME_SCALE;
			case 24: bulletShootDelay.get(buildingType, level) * TIME_SCALE;
			case 25: bulletRangeMin.get(buildingType, level);
			case 26: bulletRangeMax.get(buildingType, level);
			case 27: bulletDamageArea.get(buildingType, level);
			case 28: bulletExplodeDelay.get(buildingType, level);
			
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
			case 4 : summonTime.BASE_VALUE;
			
			case 11: speed.BASE_VALUE;
			case 12: health.BASE_VALUE;
			
			case 21: bulletSpeed.BASE_VALUE;
			case 22: bulletDamage.BASE_VALUE;
			case 23: bulletShootGap.BASE_VALUE;
			case 24: bulletShootDelay.BASE_VALUE;
			case 25: bulletRangeMin.BASE_VALUE;
			case 26: bulletRangeMax.BASE_VALUE;
			case 27: bulletDamageArea.BASE_VALUE;
			case 28: bulletExplodeDelay.BASE_VALUE;
			
			default: 0;
		}
	}
}