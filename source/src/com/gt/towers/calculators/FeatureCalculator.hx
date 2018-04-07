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
	
	//private var rarity:RarityCalculator;
	//private var availableAt:AvailableAtCalculator;
	//private var elixirSize:ElixirSizeCalculator;
	private var capacity:CapacityCalculator;
	//private var deployTime:DeployTimeCalculator;
	private var birthRate:BrithRateCalculator;
	
	private var troopSpeed:TroopSpeedCalculator;
	private var troopPower:TroopPowerCalculator;
	//private var troopHealth:TroopHealthCalculator;
	private var troopRushGap:TroopRushGapCalculator;
	
	private var damage:DamageCalculator;
	private var damageGap:DamageGapCalculator;
	private var damageRadiusMin:DamageRadiusMinCalculator;
	private var damageRadiusMax:DamageRadiusMaxCalculator;

	public function new(game:Game)
	{
		//rarity = new RarityCalculator();
		//availableAt = new AvailableAtCalculator(game);
		//elixirSize = new ElixirSizeCalculator();
		capacity = new CapacityCalculator(game);
		//deployTime = new DeployTimeCalculator();
		birthRate = new BrithRateCalculator(game);
		
		troopSpeed = new TroopSpeedCalculator(game);
		troopPower = new TroopPowerCalculator(game);
		//troopHealth = new TroopHealthCalculator();
		troopRushGap = new TroopRushGapCalculator(game);
		
		damage = new DamageCalculator(game);
		damageGap = new DamageGapCalculator(game);
		damageRadiusMin = new DamageRadiusMinCalculator(game);
		damageRadiusMax = new DamageRadiusMaxCalculator(game);
	}
	public function setField(battleField:BattleField) : Void
	{
		//availableAt.battleField = battleField;
		capacity.battleField = battleField;
		birthRate.battleField = battleField;
		troopSpeed.battleField = battleField;
		troopPower.battleField = battleField;
		//troopHealth.battleField = battleField;
		troopRushGap.battleField = battleField;
		damage.battleField = battleField;
		damageGap.battleField = battleField;
		damageRadiusMin.battleField = battleField;
		damageRadiusMax.battleField = battleField;
	}
	
	public function get(featureType:Int, buildingType:Int, level:Int, improveLevel:Int ) : Float
	{
		return switch( featureType )
		{
			//case 0 : rarity.get(buildingType, level, improveLevel);
			//case 1 : availableAt.get(buildingType, level, improveLevel);
			//case 2 : elixirSize.get(buildingType, level, improveLevel);
			case 3 : capacity.get(buildingType, level, improveLevel);
			//case 4 : deployTime.get(buildingType, level, improveLevel) * TIME_SCALE;
			case 5 : birthRate.get(buildingType, level, improveLevel) * TIME_SCALE;
			
			case 11: troopSpeed.get(buildingType, level, improveLevel) * TIME_SCALE;
			case 12: troopPower.get(buildingType, level, improveLevel);
			//case 13: troopHealth.get(buildingType, level, improveLevel);
			case 14: troopRushGap.get(buildingType, level, improveLevel) / TIME_SCALE;
			
			case 21: damage.get(buildingType, level, improveLevel);
			case 22: damageGap.get(buildingType, level, improveLevel) / TIME_SCALE;
			case 23: damageRadiusMin.get(buildingType, level, improveLevel);
			case 24: damageRadiusMax.get(buildingType, level, improveLevel);
			
			default: 0;
		}
	}
	
	public function getInt(featureType:Int, buildingType:Int, level:Int, improveLevel:Int ) : Int
	{
		return Math.round( get( featureType, buildingType, level, improveLevel) );
	}
	
	public function getBaseline(featureType:Int) : Float
	{
		return switch( featureType )
		{
			//case 0 : rarity.BASE_VALUE;
			//case 1 : availableAt.BASE_VALUE;
			//case 2 : elixirSize.BASE_VALUE;
			case 3 : capacity.BASE_VALUE;
			//case 4 : deployTime.BASE_VALUE;
			case 5 : birthRate.BASE_VALUE;
			
			case 11: troopSpeed.BASE_VALUE;
			case 12: troopPower.BASE_VALUE;
			//case 13: troopHealth.BASE_VALUE;
			case 14: troopRushGap.BASE_VALUE;
			
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