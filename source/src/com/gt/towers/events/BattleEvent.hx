package com.gt.towers.events;
/**
 * ...
 * @author Mansour Djawadi
 */

#if java
class BattleEvent 
#elseif flash
class BattleEvent extends flash.events.Event
#end
{
static public var DEPLOY:String = "deploy";
static public var ATTACK:String = "attack";
static public var HIT:String = "hit";
static public var DISPOSE:String = "dispose";

 #if java
public function new() {}
#elseif flash
public var data:Any;
public function new(type:String, data:Any = null)
{
	super(type, false, false);
	this.data = data;
}
#end
}