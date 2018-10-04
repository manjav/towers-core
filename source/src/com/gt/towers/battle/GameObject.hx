package com.gt.towers.battle;
import com.gt.towers.battle.units.Card;
/**
 * ...
 * @author Mansour Djawadi
 */
#if flash
class GameObject extends flash.events.EventDispatcher
{
#elseif java
class GameObject
{
	public var eventCallback:com.gt.towers.events.EventCallback;
#end
	public var id:Int;
    public var x:Float;
    public var y:Float;
	public var side:Int;
	public var card:Card;
	public var disposed:Bool;
	public var movable:Bool = true;
	public var deployTime:Float = 0;
	public var battleField:BattleField;
	public function new(id:Int, battleField:BattleField, card:Card, side:Int, x:Float, y:Float) 
	{
		#if flash
			super();
		#end
		this.id = id;
		this.battleField = battleField;
		this.side = side;
		this.card = card;
		setPosition(x, y, true);
	}
	
	public function update() : Void
	{
	}
	
	public function setPosition(x:Float, y:Float, forced:Bool = false) : Bool
	{
		if( !forced && ( x < 0 || x == this.x ) && ( y < 0 || y == this.y ) )
			return false;
		if( x > 0 )
			this.x = x;
		if( y > 0 )
			this.y = y;
		return true;
	}
	
	private function fireEvent (dispatcherId:Int, type:String, data:Any) : Void
	{
#if java
		if( eventCallback != null )
			eventCallback.dispatch(dispatcherId, type, data);
#elseif flash
		dispatchEvent(new com.gt.towers.events.BattleEvent(type, data));
#end
	}
	
	public function dispose() : Void
	{
		disposed = true;
		fireEvent(id, com.gt.towers.events.BattleEvent.DISPOSE, null);
	}
}