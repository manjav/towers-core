package com.gt.towers.socials;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author ...Mansour Djawadi
 */
class Challenge 
{
	public static var START_HOUR:Int = 19;

	public static var STATE_WAIT:Int = 0;
	public static var STATE_STARTED:Int = 1;
	public static var STATE_END:Int = 2;
	
	public var id:Int;
	public var type:Int;
	public var startAt:Int;
	public var duration:Int = 14400;
	public var capacity:Int;
	public var rewards:IntIntMap;
	public var requirements:IntIntMap;
	public var attendees:Array<Attendee>;
	public var rewardCollected:Bool;

	public function new() 
	{
		rewards = new IntIntMap();
		rewards.set(1, 56);
		rewards.set(2, 55);
		rewards.set(3, 54);
		rewards.set(4, 53);
		rewards.set(5, 52);
		
		requirements = new IntIntMap();
		requirements.set(ResourceType.CURRENCY_HARD, 10);
	}
	
	public function getState(now:Int):Int
	{
		if( now >= startAt + duration )
			return STATE_END;
		else if( now >= startAt )
			return STATE_STARTED;
		return STATE_WAIT;
	}
	
	public function getReward(rank:Int) : Int
	{
		if( rank <= 3 )
			return rewards.get(rank);
		else if( rank > 3 && rank <= 10 )
			return rewards.get(4);
		return rewards.get(5);
	}
	
	public function indexOfAttendees(attendeeId:Int) : Int
	{
		var i = 0;
		while ( i < attendees.length )
		{
			if( attendees[i].id == attendeeId )
				return i;
			i++;
		}
		return -1;
	}
	
	public static function getDuration(type:Int):Int
	{
		return switch( type )
		{
			default: 14400;
		}
	}
}