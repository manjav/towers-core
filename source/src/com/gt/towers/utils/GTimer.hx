package com.gt.towers.utils;

/**
 * ...
 * @author Mansour Djawadi
 */
#if java
	import com.gt.towers.utils.maps.IntTimerMap;
	import haxe.Timer;
#end
 
class GTimer 
{
	#if java
   // public static var timers:java.util.HashMap<Int, Timer> = new java.util.HashMap<Int, Timer>();
    public static var timers:IntTimerMap = new IntTimerMap();
    
    public static function setInterval(func:Dynamic, milliseconds:Int, rest:Array<Dynamic>):Int
    {
        var timer:Timer = new Timer(milliseconds);
        var id:Int = getIncreasedId();
        timers.set( id , timer );
        timer.run = function() 
        {
 			if ( !timers.exists( id ) )
				return;
            Reflect.callMethod(null, func, rest);
        }
        
        return id;
    }
   
    public static function clearInterval(id:Int) :Void
    {
		if ( timers==null || !timers.exists(id) || timers.get(id)==null )
			return;
			
        timers.get(id).stop();
        timers.set(id, null);
    }
    
	
    public static function setTimeout(func:Dynamic, milliseconds:Int, rest:Array<Dynamic>):Int
    {
        var timer:Timer = new Timer(milliseconds);
        var id:Int = getIncreasedId();
        timers.set( id , timer );
        timer.run = function() 
        {
			if ( !timers.exists( id ) )
				return;
				
            Reflect.callMethod(null, func, rest);
            clearTimeout(id);
        }
        return id;
    }

    public static function clearTimeout(id:Int) : Void
    {
		if ( timers==null || !timers.exists(id) || timers.get(id)==null )
			return;
			
        timers.get(id).stop();
        timers.set(id, null);
    }

	public static function stopAll() : Void
	{
		if ( timers == null )
			return;
		
		var i = 0;
		var keys = timers.keys();
		var len = keys.length;
		while ( i < len )
		{
			if (timers.get(keys[i]) != null)
			{
				timers.get(keys[i]).stop();
				timers.set(keys[i], null);
			}
			i ++;
		}
	}
	
	static private function getIncreasedId() : Int
	{
		var i = 0;
		var keys = timers.keys();
		var len = keys.length;
		while ( i < len )
		{
			if (timers.get(keys[i]) == null)
				return keys[i];
			i ++;
		}
		return len;
	}
	
	#end
}