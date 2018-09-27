package com.gt.towers.battle.units;
import com.gt.towers.battle.BattleField;
import com.gt.towers.battle.units.Card;
import com.gt.towers.events.UnitEvent;

/**
 * ...
 * @author Mansour Djawadi
 */
#if java
class Unit
#elseif flash
class Unit extends flash.events.EventDispatcher
#end

{
	static public var STATE_WAIT:Int = 0;
	static public var STATE_MOVE:Int = 1;
	static public var STATE_ATTACK:Int = 2;
	
	public var id:Int;
    public var x:Float;
    public var y:Float;
	public var side:Int;
    public var health:Float;
	public var card:Card;
	public var battleField:BattleField;
	public var disposed:Bool;
	public var movable:Bool = true;
	
	var deployTime:Float = -1;
	var attackTime:Float;
#if java
	public var eventCallback:com.gt.towers.events.EventCallback;
#end

	public function new(id:Int, battleField:BattleField, card:Card, side:Int, x:Float, y:Float) 
	{
#if flash
		super();
#end
		this.id = id;
		this.battleField = battleField;
		this.side = side;
		this.card = card;
		this.health = card.health;
		this.deployTime = battleField.now + card.deployTime;
		x = ( side == battleField.side ) ? x : (1080 - x);
		y = ( side == battleField.side ) ? y : (1920 - y);
		setPosition(x, y, true);
	}
	
	public function update() : Void
	{
		if( disposed )
			return;
		
		if( deployTime == -1 || deployTime > battleField.now )
			return;
		
		finalizeDeployment();
		decide();
	}

	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= deploy -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function finalizeDeployment() : Void
	{
		if( deployTime <= 0 )
			return;
		deployTime = 0;
		fireEvent(id, UnitEvent.DEPLOY, null);
	}
	

	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= decide -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function decide() 
	{
		if( attackTime < battleField.now )
		{
			var enemy = getNearestEnemy();
			if( enemy != null )
			{
				attack(enemy);
				return;
			}
		}
		moveAhead();
	}

	
	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= attack -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function getNearestEnemy() : Unit 
	{
		var distance:Float = 2000;
		var ret:Unit = null;
		var i = 0;
		var values = battleField.units.values();
		var len = values.length;
		while ( i < len )
		{
			if( this.side != values[i].side )
			{
				var dis = com.gt.towers.utils.CoreUtils.getDistance(this, values[i]);
				if( distance > dis )
				{
					distance = dis;
					ret = values[i];
				}
			}
			i ++;
		}
		
		/*var iterator : java.util.Iterator < java.util.Map.Map_Entry<Int, Unit> > = battleField.units._map.entrySet().iterator();
        while( iterator.hasNext() )
        {
            unit = iterator.next().getValue();
			if( side != unit.side )
			{
				var dis = com.gt.towers.utils.CoreUtils.getDistance(this, unit);
				if ( distance > dis )
				{
					distance = dis;
					ret = unit;
				}
			}
		}*/
		return ret;
	}
	
	function attack(enemy:Unit) : Void
	{
#if java
		fireEvent(id, UnitEvent.ATTACK, enemy);
		var units:java.util.List<Unit> = new java.util.ArrayList<Unit>();
		units.add(enemy);
		battleField.hitUnit(this, units);
		attackTime = battleField.now + card.bulletFireGap;
#end
	}
	
	public function hit(damage:Float) : Void
	{
		health -= damage;
		fireEvent(id, UnitEvent.HIT, damage);
		if( health <= 0 )
			dispose();
	}

	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= move -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function moveAhead() : Void
	{
		if( movable )
			setPosition(-1, y + ((side == battleField.side ? -1 : 1) * (card.speed * battleField.deltaTime)));
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
			eventCallback.dispatch( dispatcherId, type, data );
#elseif flash
		dispatchEvent(new UnitEvent(type, data));
#end
	}
	
	public function dispose() : Void
	{
		fireEvent(id, UnitEvent.DISPOSE, null);
		disposed = true;
	}
}