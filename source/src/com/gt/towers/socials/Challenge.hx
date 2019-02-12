package com.gt.towers.socials;
import com.gt.towers.constants.MessageTypes;
import com.gt.towers.exchanges.ExchangeItem;
import com.gt.towers.others.Arena;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.IntArenaMap;
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
	public var rewards:IntArenaMap;
	public var joinRequirements:IntIntMap;
	public var runRequirements:IntIntMap;
	public var attendees:Array<Attendee>;
	public var rewardCollected:Bool;

	public function new(){}
	public function getState(now:Int):Int
	{
		if( now >= startAt + duration )
			return STATE_END;
		else if( now >= startAt )
			return STATE_STARTED;
		return STATE_WAIT;
	}
	
	public function sort() 
	{
		attendees.sort(function(a:Attendee, b:Attendee) : Int 
		{
			if( a.point > b.point ) return -1;
			if( a.point < b.point ) return 1;
			if( a.updateAt > b.updateAt ) return -1;
			if( a.updateAt < b.updateAt ) return 1;
			return 0;
		});
	}
	
	public function getRewardByAttendee(attendeeId:Int) : IntIntMap
	{
		sort();
		var index = indexOfAttendees(attendeeId);
		if( index <= -1 )
			return getRewardByRank(5);
		return getRewardByRank(index + 1);
	}
	
	public function getRewardByRank(rank:Int) : IntIntMap
	{
		var ret = new IntIntMap();
		var ratio = attendees.length / rank / attendees.length;
	//	if( type == 1 )
	//	{
			var prizeKeys = rewards.keys();
			var i = 0;
			var prize:Arena = null;
			while ( i < prizeKeys.length )
			{
				prize = rewards.get(prizeKeys[i]);
				if( rank >= prize.min && rank <= prize.max )
				{
					if( prize.minWinStreak == -1 )
						ret.set(prize.minWinStreak, 0);
					else if( ResourceType.isBook(prize.minWinStreak) )
						ret.set(prize.minWinStreak, 1);
					else
						ret.set(prize.minWinStreak, Math.floor(ratio * 1000));
					break; 
				}
				i ++;
			}
			/*if( rank <= 0 )
				ret.set(-1, 0);
			else if( rank <= 3 )
				ret.set(rewards.get(rank).minWinStreak, 1);
			else if( rank <= 10 )
				ret.set(rewards.get(4)., 1);
			else if( rank <= 20 )
				ret.set(rewards.get(5), 1);
			else if( rank <= 40 )
				ret.set(rewards.get(6), Math.floor(ratio * 1000));		
			else
				ret.set(rewards.get(7), 0);
			
			return ret;
		}
		
		if( rank <= 0 )
			ret.set(rewards.get(5), 1);
		else if( rank <= 3 )
			ret.set(rewards.get(rank), 1);
		else if( ratio <= 0.5 )
			ret.set(rewards.get(4), 1);
		else
			ret.set(rewards.get(5), 1);*/
		
		trace(rank + " " + ratio + " " + ret.toString());
		return ret;
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
	
	public function run(game:Game, now:Int, arena:Int) : Int
	{
		if( now < startAt || now > startAt + duration )
			return MessageTypes.RESPONSE_NOT_ALLOWED;
		return game.exchanger.exchange(getExchangeItem(type, runRequirements, arena), now);
	}
	
	#if java
	static public function getlowestJoint(player:Player) : Int
	{
		var ret = ResourceType.CHALLENGES + 1;
		return ret;
		/*
		var i = 0;
		var lowest = 9999999;
		var joints = 0;
		while( i < 2 )
		{
			joints = player.getResource(ResourceType.CHALLENGES + i + 1 );
			if( lowest > joints )
			{
				lowest = joints;
				ret = ResourceType.CHALLENGES + i + 1;
			}
			i ++;
		}
		return ret;*/
	}
	
	static public function getCapacity(type:Int):Int
	{
		return switch( type )
		{
			case 1:		100;
			default:	100;
		}
	}
	
	static public function getWaitTime(type:Int) 
	{
		return switch( type )
		{
			case 1:		3600 * 12;
			default:	3600 * 12;
		}
	}
	
	static public function getDuration(type:Int):Int
	{
		return switch( type )
		{
			case 1:		3600 * 144;
			default:	3600 * 12;
		}
	}
	
	static public function getRewards(type:Int):IntArenaMap
	{
		var ret = new IntArenaMap();
		if( type == 1 )
		{
			ret.set(1, new Arena(1,	1,	1,	59,		null));
			ret.set(2, new Arena(2, 2,	5,	58,		null));
			ret.set(3, new Arena(3, 6,	10,	57,		null));
			ret.set(4, new Arena(4, 11,	15,	56,		null));
			ret.set(5, new Arena(5, 16, 20, 55,		null));
			ret.set(6, new Arena(6, 21, 40, 1002,	null));
			ret.set(7, new Arena(7, 41, 50, -1,		null));
		}
		else
		{
			ret.set(1, new Arena(1,	1,	1,	55,		null));
			ret.set(2, new Arena(2, 2,	3,	54,		null));
			ret.set(3, new Arena(3, 4,	10,	53,		null));
			ret.set(4, new Arena(4, 11,	20,	52,		null));
			ret.set(5, new Arena(5, 21, 50, 51,		null));
		}
		return ret;
	}
	
	static public function getJoinRequiements(type:Int):IntIntMap
	{
		var ret = new IntIntMap();
		switch( type )
		{
			//case 1:	ret.set(ResourceType.CURRENCY_HARD, 0);
			default:	ret.set(ResourceType.CURRENCY_HARD, 0);
		}
		return ret;
	}

	static public function getRunRequiements(type:Int):IntIntMap
	{
		var ret = new IntIntMap();
		switch( type )
		{
			case 1:		ret.set(ResourceType.TICKET, 1);
			default:	ret.set(ResourceType.TICKET, 0);
		}
		return ret;
	}
	
	#elseif flash
	static public function getTargetLabel(type:Int) : String
	{
		return "challenge_wins";
	}
	#end
	
	static public function getExchangeItem(type:Int, requirements:IntIntMap, arena:Int) : ExchangeItem
	{
		var ret:ExchangeItem = new ExchangeItem(ResourceType.CHALLENGES + type + 1);
        ret.outcomes = new IntIntMap(ResourceType.XP + ":" + 10 * arena);
		ret.requirements = requirements;
		return ret;
	}	
}