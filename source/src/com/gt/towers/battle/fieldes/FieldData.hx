package com.gt.towers.battle.fieldes;
import com.gt.towers.utils.lists.ImageDataList;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.lists.PlaceDataList;

/**
 * ...
 * @author Mansour Djawadi
 */
class FieldData
{
	public var index:Int;
	public var name:String;
	public var places:PlaceDataList;
	public var images:ImageDataList;
	public var introNum:IntList;
	public var startNum:IntList;
	public var endNum:IntList;
	public var times:IntList;
	public var isQuest:Bool;

	public function new(index:Int, name:String, introNum:String, startNum:String = "", endNum:String = "", times:String = "") 
	{
		this.index = index;
		this.name = name;
		this.isQuest = name.substr(0, 6) == "quest_";
		
		this.places = new PlaceDataList();
		this.images = new ImageDataList();
		
		this.introNum = IntList.parse(introNum);
		this.startNum = IntList.parse(startNum);
		this.endNum = IntList.parse(endNum);
		this.times = IntList.parse(times);
	}
	
	public function getSwipeTutorPlaces(): PlaceDataList
	{
		var ret = new PlaceDataList();
		var i = 0;
		while (i < places.size())
		{
			if ( places.get(i).tutorIndex > -1 )
			{
				if( ret.size() > 0 || places.get(i).troopType == 0 )
					ret.push(places.get(i));
			}
			
			i ++;
		}
		return ret;
	}
	
	public function getImprovableTutorPlace():PlaceData
	{
		var i = 0;
		while (i < places.size())
		{
			if ( places.get(i).tutorIndex < 0 && places.get(i).tutorIndex != -3 )
				return places.get( i );
				
				i ++;
		}
		return null;
	}
}