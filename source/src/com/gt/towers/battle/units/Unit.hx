package com.gt.towers.battle.units;
import com.gt.towers.battle.BattleField;
import com.gt.towers.battle.units.Card;
import com.gt.towers.events.UnitEvent;
import haxe.Int64;

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
	
	var currentTimeMillis:Float;
	var deployTime:Float = -1;
	var attackTime:Float;
#if java
	public var eventCallback:com.gt.towers.events.EventCallback;
#end

	public function new(id:Int, battleFIeld:BattleField, card:Card, side:Int, x:Float, y:Float) 
	{
#if flash
		super();
#end
		this.id = id;
		this.battleField = battleFIeld;
		this.side = side;
		this.x = x;
		this.y = y;
		this.card = card;
		this.health = card.health;
		this.currentTimeMillis = battleField.now;
		this.deployTime = currentTimeMillis + card.deployTime;
	}
	
	public function update( currentTimeMillis:Float ) : Void
	{
		if( disposed )
			return;
		
		if( deployTime == -1 || deployTime > currentTimeMillis )
			return;
		
		this.currentTimeMillis = currentTimeMillis;
		finalizeDeployment();
#if java
		decide();
#end
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
#if java
	function decide() 
	{
		if( attackTime < currentTimeMillis )
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
		var unit:Unit = null;
		var ret:Unit = null;
		var iterator : java.util.Iterator < java.util.Map.Map_Entry<Int, Unit> > = battleField.units._map.entrySet().iterator();
		var distance:Float = 2000;
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
		}
		return ret;
	}
	
	function attack(enemy:Unit) : Void
	{
		fireEvent(id, UnitEvent.ATTACK, enemy);
		var units:java.util.List<Unit> = new java.util.ArrayList<Unit>();
		units.add(enemy);
		battleField.hitUnit(this, units);
		attackTime = currentTimeMillis + card.bulletFireGap;
	}
#end
	
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
		y += (side == 0 ? -1 : 1) * card.speed;
	}

	private function fireEvent (dispatcherId:Int, type:String, data:Any) :Void
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