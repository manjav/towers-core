package com.gt.towers.events;

import flash.events.Event;

/**
 * ...
 * @author Mansour Djawadi
 */
class CoreEvent extends Event 
{
	public static var CHANGE:String = "change";
	
	public var key:Int;
	public var from:Int;
	public var to:Int;

	public function new (type:String, key:Int, from:Int, to:Int) 
	{
		this.key = key;
		this.from = from;
		this.to = to;
		super(type, false, false);
	}
	
}