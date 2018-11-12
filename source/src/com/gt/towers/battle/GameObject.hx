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
	static public var NaN:Int = -1000000;
	static public var STATE_0_INITIALIZED:Int = 0;
	static public var STATE_1_DIPLOYED:Int = 1;
	static public var STATE_2_MOVING:Int = 2;
	static public var STATE_3_WAITING:Int = 3;
	static public var STATE_4_DIPOSED:Int = 4;
	
	public var id:Int;
    public var x:Float;
    public var y:Float;
    public var z:Float = 0;
	public var side:Int;
	public var card:Card;
	public var state:Int;
	public var movable:Bool = true;
	public var summonTime:Float = 0;
	public var battleField:BattleField;
	var deltaX:Float;
	var deltaY:Float;
	public function new(id:Int, battleField:BattleField, card:Card, side:Int, x:Float, y:Float, z:Float) 
	{
		#if flash
			super();
		#end
		this.id = id;
		this.battleField = battleField;
		this.side = side;
		this.card = card;
		setPosition(x, y, z, true);
	}
	
	public function update() : Void
	{
	}
	
	public function setPosition(x:Float, y:Float, z:Float, forced:Bool = false) : Bool
	{
		if( !forced && ( x <= NaN || x == this.x ) && ( y <= NaN || y == this.y ) && ( z <= NaN || z == this.z ) )
			return false;
		if( x > NaN )
			this.x = x;
		if( y > NaN )
			this.y = y;
		if( z > NaN )
			this.z = z;
		if( !forced )
			setState(GameObject.STATE_2_MOVING);
		return true;
	}
	
	function setState(state:Int) : Bool
	{
		if( this.state == state )
			return false;
		this.state = state;
		fireEvent(id, com.gt.towers.events.BattleEvent.STATE_CHANGE, state);
		return true;
	}
	
	function fireEvent (dispatcherId:Int, type:String, data:Any) : Void
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
		setState(GameObject.STATE_4_DIPOSED);
	}
	
	public function disposed() : Bool
	{
		return state == GameObject.STATE_4_DIPOSED;
	}
}