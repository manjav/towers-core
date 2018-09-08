package com.gt.towers.buildings;

import com.gt.towers.Game;
import com.gt.towers.Player;
import com.gt.towers.battle.Troop;
import com.gt.towers.buildings.Defender;
import com.gt.towers.constants.BuildingFeatureType;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.lists.IntList;
import haxe.Int64;

/**
 * ...
 * @author Mansour Djawadi
 */
class Building extends Card
{
#if java
	var defender:Defender;
#end
	public var place:Place;
	public var troopType:Int = -2;
	public var maxLevel:Int = 10;
	public var capacity:Int;
	public var birthRate:Float;

	//public var troopHealth:Float = 1;
	public var troopPower:Float;
	public var troopSpeed:Float;
	public var troopRushGap:Int;
	
	public var _population:Float;
	
	public function new(game:Game, place:Place, index:Int, type:Int, level:Int = 0)
	{
		this.game = game;
		this.place = place;
		
		if( level == 0 )
		{
			var abs = getCard(type);
			if( abs != null && abs.get_level() > 0 )
				level = game.player.isBot() ? abs.get_level() : cast(Math.min(maxLevel, abs.get_level()), Int);
			else
				level = 1;
		}
		super( game, type, level );
	}
	private function setFeatures():Void
	{
		this.category = BuildingType.get_category(type);
		this.improveLevel = BuildingType.get_improve(type);
		capacity = game.calculator.getInt(BuildingFeatureType.F03_CAPACITY, type, get_level(), improveLevel);
		birthRate = game.calculator.get(BuildingFeatureType.F05_BIRTH_RATE, type, get_level(), improveLevel);
		
		// troops data
		troopSpeed = game.calculator.get(BuildingFeatureType.F11_TROOP_SPEED, type, get_level(), improveLevel);
		troopPower = game.calculator.get(BuildingFeatureType.F12_TROOP_POWER, type, get_level(), improveLevel);
		//troopHealth = game.calculator.get(BuildingFeatureType.F13_TROOP_HEALTH, type, get_level(), improveLevel);
		troopRushGap = game.calculator.getInt(BuildingFeatureType.F14_TROOP_RUSH_GAP, type, get_level(), improveLevel);
		
		#if java
		//trace("index:" + place.index, " type:" + type, " level:" + get_level(), " improveLevel:" + improveLevel, " birthRate:" + birthRate, " capacity:" + capacity, " troopSpeed:" + troopSpeed, " troopPower:" + troopPower, " troopRushGap:" + troopRushGap );
		if( category == BuildingType.B40_CRYSTAL )
			defender = new Defender(place);
		else if( defender != null )
			defender = null;
		#end
	}
	
	// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-  generic  data  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
	public function get_population():Int
	{
		return Math.floor(_population);
	}
	
	public function improvable(type:Int):Bool 
	{
		if( type == this.type)
			return false;
		if( type == BuildingType.B01_CAMP )
			return true;
		if( !unlocked(type) )
			return false;
		
		//trace("type "+ type ,this.type, " equalsCategory " + equalsCategory(this.type+1) , " _population " + _population , " get_capacity " + get_capacity());
		return ((type == BuildingType.IMPROVE && equalsCategory(this.type+1)) || (this.type == BuildingType.B01_CAMP && type % 10 == 1)) &&  _population >= capacity;
	}
	
	// -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-  methods  -_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-_-
	
	public function createEngine(troopType:Int, initialPopulation:Int = -1):Void
	{
		this.troopType = troopType;
		setFeatures();
		#if java
		if( initialPopulation == -1 )
			initialPopulation = capacity;
		
		_population = initialPopulation;
		#end
	}
	
	#if java
	public function improve(type:Int):Bool
	{
		if( !improvable(type) )
			return false;
		if( type == BuildingType.IMPROVE )
			type = this.type + 1;
		if( type != BuildingType.B01_CAMP )
			_population -= Math.round( capacity * (game.player.inTutorial() && game==place.battleField.games.get(0) ? 0.1 : 0.5) );
		
		if( equalsCategory(type) )
			improveLevel ++;
		else
			improveLevel = 1;
		this.type = type;
		set_level(game.player.buildings.exists(type) ? game.player.buildings.get(type).get_level() : 1);
		setFeatures();
		//trace("improved index:", place.index, " this.type:" + this.type, " type:" + type, "equalsCategory:" + equalsCategory(type));
		return true;
	}
	
	public function update( currentTimeMillis:Int64 ):Void
	{
		if( place == null || !place.enabled )
			return;
		
		var gap:Float = birthRate + 0.0;
		if( _population < capacity )
		{
			if( _population + gap > capacity )
				_population = capacity;
			else
				_population += gap;
		}
		else if( _population > capacity )
		{
			gap = (_population - capacity) * 0.05;
			if( _population - gap < capacity )
				_population = capacity;
			else
				_population -= gap;
		}
		//trace(place.index + " t:" + type," g:" + gap," _p:" + _population," _br:" + birthRate);
		if( defender != null )
			defender.update(currentTimeMillis);
	}
	
	public function popTroop() : Bool
	{
		var ret = (_population - 1 > 0);
		if( ret )
			_population --;
		return ret;
	}
	public function pushTroops(troop:Troop) : Bool
	{
		//trace(index, "type", troop.type, troopType, "id", troop.id, "health", troop.health, "_population", _population);
		var ret = troopType == troop.type; // if ret true troop is mine
		_population += (ret ? 1 : -troop.health);
		if( _population < 0 || (_population == 0 && !place.enabled ) ) 
			occupy(troop);
		return ret;
	}
	
	function occupy(troop:Troop) : Void
	{
		troopType = troop.type;
		place.enabled = true;
		
		var p = place.battleField.games.get(0).player;
		if( place.battleField.singleMode && p.inTutorial() )
			_population = !p.hardMode && troop.type == TroopType.T_0 ? capacity * 0.3 : 0.0;
		else 
			_population = 0;
			
		//if ( type == BuildingType.B01_CAMP )
		//{
			place.game = game = troop.building.game;
		//	return;
	//	}
		type = BuildingType.B01_CAMP;
		_level = 1;
		//place.setBuilidng(BuildingType.B01_CAMP, troop.building.game);
		setFeatures();
	}
	
	public function getPower() : Float
	{
		var ret = _population * troopPower;
		if( category == BuildingType.B40_CRYSTAL )
			ret += defender.estimatePower();
		return ret;
	}
	#end

	public function getCard(type:Int) : Card
	{
		if ( !game.player.buildings.exists(type) )
			return null;
		return game.player.buildings.get(type);
	}
	public function equalsCategory(type:Int):Bool
	{
		return category == BuildingType.get_category(type);
	}
 }