package com.gt.towers.events;

import flash.events.Event;

/**
 * ...
 * @author Mansour Djawadi
 */
class ResouceEvent extends Event 
{
	public var resourceType:Int;
	public var from:Int;
	public var to:Int;

	public function new (type:Int, from:Int, to:Int) 
	{
		this.resourceType = type;
		this.from = from;
		this.to = to;
		super(type+"", false, false);
	}
	
}