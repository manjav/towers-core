package com.gt.towers.calculators;
import com.gt.towers.Game;
import com.gt.towers.battle.BattleField;

/**
 * ...
 * @author Mansour Djawadi
 */
class FeatureCalculator 
{
	public var TIME_SCALE:Float = 1;
	
	public var rarity:RarityCalculator;
	public var availableAt:AvailableAtCalculator;
	public var elixirSize:ElixirSizeCalculator;
	public var deployTime:DeployTimeCalculator;
	
	public var troopSpeed:SpeedCalculator;
	public var troopHealth:HealthCalculator;
	
	public var damage:DamageCalculator;
	public var damageGap:DamageGapCalculator;
	public var damageRadiusMin:DamageRadiusMinCalculator;
	public var damageRadiusMax:DamageRadiusMinCalculator;

	public function new(game:Game)
	{
		rarity = new RarityCalculator(null);
		availableAt = new AvailableAtCalculator(null);
		elixirSize = new ElixirSizeCalculator(null);
		deployTime = new DeployTimeCalculator(null);
		troopSpeed = new SpeedCalculator(null);
		troopHealth = new HealthCalculator(null);
		damage = new DamageCalculator(null);
		damageGap = new DamageGapCalculator(null);
		damageRadiusMin = new DamageRadiusMinCalculator(null);
		damageRadiusMax = new DamageRadiusMinCalculator(null);
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
	
	public function get(featureType:Int, buildingType:Int, level:Int ) : Float
	{
		return switch( featureType )
		{
			case 0 : rarity.get(buildingType);
			case 1 : availableAt.get(buildingType);
			case 2 : elixirSize.get(buildingType);
			case 4 : deployTime.get(buildingType) * TIME_SCALE;
			
			case 11: troopSpeed.get(buildingType, level) / TIME_SCALE * 0.7;
			case 13: troopHealth.get(buildingType, level);
			
			case 21: damage.get(buildingType, level);
			case 22: damageGap.get(buildingType, level) / TIME_SCALE;
			case 23: damageRadiusMin.get(buildingType, level);
			case 24: damageRadiusMax.get(buildingType, level);
			
			default: 0;
		}
	}
	
	public function getInt(featureType:Int, CardType:Int, level:Int) : Int
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
			case 4 : deployTime.BASE_VALUE;
			
			case 11: troopSpeed.BASE_VALUE;
			case 13: troopHealth.BASE_VALUE;
			
			case 21: damage.BASE_VALUE;
			case 22: damageGap.BASE_VALUE;
			case 23: damageRadiusMin.BASE_VALUE;
			case 24: damageRadiusMax.BASE_VALUE;
			
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