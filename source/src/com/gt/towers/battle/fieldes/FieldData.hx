package com.gt.towers.battle.fieldes;
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
	public var introNum:IntList;
	public var startNum:IntList;
	public var endNum:IntList;
	public var times:IntList;
	public var isOperation:Bool;
#if flash
	public var images:com.gt.towers.utils.lists.ImageDataList;
#end

	public function new(index:Int, name:String, times:String = "", introNum:String = "", startNum:String = "", endNum:String = "") 
	{
		this.index = index;
		this.name = name;
		this.isOperation = name.substr(0, 6) == "quest_";
		this.places = new PlaceDataList();
		this.times = IntList.parse(times);
		this.introNum = IntList.parse(introNum);
		this.startNum = IntList.parse(startNum);
		this.endNum = IntList.parse(endNum);
#if flash
		this.images = new com.gt.towers.utils.lists.ImageDataList();
#end
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