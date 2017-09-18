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
	public var hasStart:Bool;
	public var hasIntro:Bool;
	public var hasFinal:Bool;
	public var places:PlaceDataList;
	public var images:ImageDataList;
	public var times:IntList;
	public var isQuest:Bool;

	public function new(index:Int, name:String, hasStart:Bool = false, hasIntro:Bool = false, hasFinal:Bool = false, times:String = "") 
	{
		this.index = index;
		this.name = name;
		this.hasStart = hasStart;
		this.hasIntro = hasIntro;
		this.hasFinal = hasFinal;
		this.isQuest = name.substr(0, 6) == "quest_";
		
		this.places = new PlaceDataList();
		this.images = new ImageDataList();
		this.times = new IntList();
		
		var t = 0;
		var ts = times.split(',');
		while (t < ts.length)
		{
			this.times.push(Std.parseInt(ts[t]));
			t ++;
		}
		
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