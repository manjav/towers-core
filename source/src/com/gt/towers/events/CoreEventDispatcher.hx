package com.gt.towers.events;

#if java
	import com.gt.towers.events.ValueChangeCallback;
#elseif flash
	import flash.events.EventDispatcher;
	import com.gt.towers.events.CoreEvent;
#end

/**
 * ...
 * @author Mansour Djawadi
 */
#if java
class CoreEventDispatcher
#elseif flash
class CoreEventDispatcher extends EventDispatcher
#end
{
#if java
	public var changeCallback:ValueChangeCallback;
#end
	
	public function new() 
	{
#if flash
		super();
#end
	}
	
	public function dispatch(key:Dynamic, from:Dynamic, to:Dynamic) 
	{
#if java
		if ( changeCallback != null )
			changeCallback.update( key, from, to );
#elseif flash
		//if( hasEventListener ( CoreEvent.CHANGE ) )
			dispatchEvent(new CoreEvent(CoreEvent.CHANGE, key, from, to) );
#end
	}
	
}