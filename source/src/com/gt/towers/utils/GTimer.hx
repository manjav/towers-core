package com.gt.towers.utils;

/**
 * ...
 * @author Mansour Djawadi
 */
 import haxe.Timer;
 
class GTimer 
{
	#if java
    public static var timers:java.util.HashMap<Int, Timer> = new java.util.HashMap<Int, Timer>();
    
    public static function setInterval(func:Dynamic, milliseconds:Int, rest:Array<Dynamic>):Int
    {
        var timer:Timer = new Timer(milliseconds);
        var id:Int = getIncreasedId();
        timers.put( id , timer );
        timer.run = function() 
        {
            Reflect.callMethod(null, func, rest);
        }
        
        return id;
    }
   
    public static function clearInterval(id:Int) :Void
    {
		if (!timers.containsKey(id))
			return;
			
        timers.get(id).stop();
        timers.remove(id);
    }
    
	
    public static function setTimeout(func:Dynamic, milliseconds:Int, rest:Array<Dynamic>):Int
    {
        var timer:Timer = new Timer(milliseconds);
        var id:Int = getIncreasedId();
        timers.put( id , timer );
        timer.run = function() 
        {
            Reflect.callMethod(null, func, rest);
            clearTimeout(id);
        }
        
        return id;
    }

    public static function clearTimeout(id:Int) : Void
    {
		if (!timers.containsKey(id))
			return;
			
        timers.get(id).stop();
        timers.remove(id);
    }

	public static function stopAll() : Void
	{
		if (timers == null)
			return;
		
		var i = 0;
		var len = timers.keySet().size();
		while ( i < len )
		{
			if(timers.get(i) != null)
				timers.get(i).stop();
			i ++;
		}
		
		timers.clear();
	}
	
	static private function getIncreasedId() : Int
	{
		var i = 0;
		var len = timers.keySet().size();
		while ( i < len )
		{
			if (timers.get(i) == null)
				return i;
			i ++;
		}
		return len;
	}
	
	#end
}