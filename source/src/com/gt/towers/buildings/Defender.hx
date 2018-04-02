package com.gt.towers.buildings;
import com.gt.towers.battle.Troop;
import com.gt.towers.buildings.Place;
import com.gt.towers.constants.BuildingFeatureType;
import haxe.Int64;

/**
 * ...
 * @author Mansour Djawadi
 */
class Defender 
{
	var place:Place;
	var readyAt:Int64;
	
	public var damage:Float;
	public var damageGap:Int;
	//public var impactDelay:Int = 0;
	public var damageRadiusMin:Float;
	public var damageRadiusMax:Float;
	
	public function new(place:Place) 
	{
		this.place = place;
		this.damage				= place.game.calculator.get(BuildingFeatureType.F21_DAMAGE,				place.building.type, place.building.get_level(), place.building.improveLevel);
		this.damageGap			= place.game.calculator.getInt(BuildingFeatureType.F22_DAMAGE_GAP,		place.building.type, place.building.get_level(), place.building.improveLevel);
		this.damageRadiusMin	= place.game.calculator.get(BuildingFeatureType.F23_RANGE_RADIUS_MIN,	place.building.type, place.building.get_level(), place.building.improveLevel);
		this.damageRadiusMax 	= place.game.calculator.get(BuildingFeatureType.F24_RANGE_RADIUS_MAX,	place.building.type, place.building.get_level(), place.building.improveLevel);
		//trace("type:" + place.building.type, " level:" + place.building.get_level(), " improveLevel:" + place.building.improveLevel, " damage:" + damage, " damageGap:" +damageGap, " damageRadiusMax:" + damageRadiusMax);
	}
	
#if java
	public function update( currentTimeMillis:Int64 ) : Void
	{
		if( readyAt > currentTimeMillis )
			return;
		
		var iterator : java.util.Iterator < java.util.Map.Map_Entry<Int, Troop> > = place.battleField.troops.entrySet().iterator();
		var numHitTroops:Int = 0;
		var  troops:java.util.List<Troop> = new java.util.ArrayList<Troop>();
        while ( iterator.hasNext() )
		{
			var troop = iterator.next().getValue();
			if ( inRadius(troop) )
			{
				troop.hit(damage);
				troops.add(troop);
				numHitTroops ++;
				//trace("hit id:", troop.id, troop.health, " numHitTroops:"+numHitTroops, " improveLevel:"+place.building.improveLevel );
				if( numHitTroops >= place.building.improveLevel )
				{
					place.battleField.hitTroop(place.index, troops);
					break;
				}
			}
		}
		readyAt = currentTimeMillis + damageGap;
	}
	
	function inRadius(troop:Troop) : Bool
	{
		if( troop.type == place.building.troopType || troop.disposed )
			return false;
		
		var distance:Float = Math.sqrt(Math.pow(place.x-troop.x, 2) + Math.pow((place.y-troop.y)*1.25, 2));
		return ( distance > damageRadiusMin && distance < damageRadiusMax );
	}
#end
}