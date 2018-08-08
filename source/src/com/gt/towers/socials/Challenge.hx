package com.gt.towers.socials;
import com.gt.towers.constants.ResourceType;
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
	
	public var id:Int;
	public var type:Int;
	public var startAt:Int;
	public var waitTime:Int = 7200;
	public var duration:Int = 28800;
	public var capacity:Int = 20;
	public var rewards:IntIntMap;
	public var requirements:IntIntMap;
	public var attendees:Array<Attendee>;
	public var rewardCollected:Bool;

	public function new() 
	{
	}
	
	public function getState(now:Int):Int
	{
		if( now >= startAt + duration )
			return STATE_END;
		else if( now >= startAt )
			return STATE_STARTED;
		return STATE_WAIT;
	}
	
	public function getRewardByAttendee(attendeeId:Int) : Int
	{
		var rank = indexOfAttendees(attendeeId);
		if( rank <= -1 )
			return 0;
		return getRewardByRank(rank + 1);
	}
	
	public function getRewardByRank(rank:Int) : Int
	{
		if( rank <= 3 )
			return rewards.get(rank);
		if( rank <= 10 )
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
	
	#if java
	public static function getCapacity(type:Int):Int
	{
		return switch( type )
		{
			case 1:		20;
			default:	50;
		}
	}
		
	public static function getWaitTime(type:Int) 
	{
		return switch( type )
		{
			case 1:		3600 * 24;
			default:	3600 * 3;
		}
	}
	
	public static function getDuration(type:Int):Int
	{
		return switch( type )
		{
			case 1:		3600 * 120;
			default:	3600 * 5;
		}
	}
	
	public static function getRewards(type:Int):IntIntMap
	{
		var ret = new IntIntMap();
		if( type == 1 )
		{
			ret.set(1, 56);
			ret.set(2, 55);
			ret.set(3, 54);
			ret.set(4, 53);
			ret.set(5, 52);
		}
		else
		{
			ret.set(1, 54);
			ret.set(2, 53);
			ret.set(3, 52);
			ret.set(4, 52);
			ret.set(5, 51);
		}
		return ret;
	}
	
	public static function getRequiements(type:Int):IntIntMap
	{
		var ret = new IntIntMap();
		switch( type )
		{
			case 1:		ret.set(ResourceType.CURRENCY_HARD, 10);
			default:	ret.set(ResourceType.CURRENCY_HARD, 0);
		}
		return ret;
	}
	#end
}