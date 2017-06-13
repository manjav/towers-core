package com.gt.towers.battle;
import com.gt.towers.battle.fieldes.PlaceData;
import com.gt.towers.battle.fieldes.FieldData;
import com.gt.towers.battle.fieldes.QuestProvider;
import com.gt.towers.buildings.Place;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.TroopType;
import com.gt.towers.utils.lists.PlaceList;

/**
 * ...
 * @author Mansour Djawadi
 */
class BattleField
{
	private var questProvider:QuestProvider;

	public var places:PlaceList;
	public var map:FieldData;

	public function new(mapName:String, troopType:Int)
	{
		
		questProvider = new QuestProvider();
		map = questProvider.fields.get(mapName);
		
		places = new PlaceList();
		var p = 0;
		var placesLen:Int = map.places.size();
		var placeData:PlaceData = null;
		var place:Place = null;
		while ( p < placesLen )
		{
			placeData = map.places.get( p );
			place = new Place(placeData.index, (troopType == 1 ? 1080 - placeData.x : placeData.x), (troopType == 1 ? 1920 - placeData.y : placeData.y), placeData.enabled);
			place.building = BuildingType.instantiate(placeData.type, place, placeData.index, placeData.level);
			place.building.createEngine(placeData.troopType);
			places.push(place);
			
			p ++;
		}

		p = 0;
		var l = 0;
		while ( p < placesLen )
		{
			placeData = map.places.get( p );
			places.get(p).links = new PlaceList();
			l = 0;
			while (l < placeData.links.size())
			{
				places.get(p).links.push( places.get( placeData.links.get( l ) ) );
				l ++;
			}
			p ++;
		}

		#if java
		var a = new AIEnemy(this);
		#end
	}

	public function getAllTowers(troopType:Int):PlaceList
	{
		if (troopType == TroopType.NONE)
			return places;

		var ret:PlaceList = new PlaceList();
		var placesLen:Int = places.size();
		var p:Int = 0;
		while ( p < placesLen )
		{
			if (places.get(p).building.troopType == troopType)
				ret.push(places.get(p));

			p ++;
		}
		return ret;
	}
}