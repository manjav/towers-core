package com.gt.towers.socials;
import com.gt.towers.Game;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.IntAttendeeMap;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author ...Mansour Djawadi
 */
class Challenge 
{
	public static var STATE_WAIT:Int = 0;
	public static var STATE_STARTED:Int = 1;
	public static var STATE_END:Int = 2;
	
	public var state:Int;
	public var startAt:Int;
	public var duration:Int;
	public var rewards:IntIntMap;
	public var requirements:IntIntMap;
	public var attendees:IntAttendeeMap;

	public function new() 
	{
		
		rewards = new IntIntMap();
		rewards.set(1, 56);
		rewards.set(2, 55);
		rewards.set(3, 54);
		rewards.set(4, 53);
		rewards.set(5, 53);
		rewards.set(6, 53);
		rewards.set(7, 53);
		rewards.set(8, 52);
		rewards.set(9, 52);
		rewards.set(10, 52);
		
		requirements = new IntIntMap();
		requirements.set(ResourceType.CURRENCY_HARD, 10);
		
		startAt = 1534778310;
		duration = 3600 * 4;
		
		attendees = new IntAttendeeMap();
	}
	
	public function getState(now:Int):Int
	{
		if( now >= startAt + duration )
			return STATE_END;
		else if( now >= startAt )
			return STATE_STARTED;
		return STATE_WAIT;
	}
}