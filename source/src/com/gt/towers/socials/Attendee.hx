package com.gt.towers.socials;

/**
 * ...
 * @author Mansour Djawadi ...
 */
class Attendee 
{
	public var id:Int;
	public var point:Int;
	public var name:String;
	public function new(id:Int, name:String, point:Int) 
	{
		this.id = id;
		this.name = name;
		this.point = point;
	}
}