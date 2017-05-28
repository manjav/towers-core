package com.gt.towers.utils;

/**
 * ...
 * @author Mansour Djawadi
 */
 import haxe.Timer;
 
class GTimer 
{
	
    public static var timers:Map<Int, Timer> = new Map<Int, Timer>();
    
    public static function setInterval(func:Dynamic, milliseconds:Int, rest:Array<Dynamic>):Int
    {
        var timer:Timer = new Timer(milliseconds);
        var id:Int = getRandomId();
        timers.set( id , timer );
        timer.run = function() 
        {
            Reflect.callMethod(null, func, rest);
        }
        
        return id;
    }
   
    public static function clearInterval(id:Int) 
    {
        timers.get(id).stop();
        timers.remove(id);
    }
    
	
    public static function setTimeout(func:Dynamic, milliseconds:Int, rest:Array<Dynamic>):Int
    {
        var timer:Timer = new Timer(milliseconds);
        var id:Int = getRandomId();
        timers.set( id , timer );
        timer.run = function() 
        {
            Reflect.callMethod(null, func, rest);
            clearTimeout(id);
        }
        
        return id;
    }

    public static function clearTimeout(id:Int) 
    {
        timers.get(id).stop();
        timers.remove(id);
    }

	static private function getRandomId() : Int
	{
		var ret = Math.floor(Math.random() * 10000);
		if (timers.exists(ret))
			ret = getRandomId();
		return ret;
	}
	
	public static function stopAll() : Void
	{
		for (value in timers)
			value.stop();
		
		timers = new Map<Int, Timer>();
	}

}