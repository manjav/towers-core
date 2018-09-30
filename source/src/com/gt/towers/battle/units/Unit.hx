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
	
	var deployTime:Float = 0;
	var attackTime:Float = 0;
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
		x = ( side == battleField.side ) ? x : (BattleField.WIDTH - x);
		y = ( side == battleField.side ) ? y : (BattleField.HEIGHT - y);
		setPosition(x, y, true);
	}
	
	public function update() : Void
	{
		if( disposed )
		{
			trace(id + " disposed.");
			return;
		}		
		if( deployTime > battleField.now )
		{
			//trace(id + " under deployment");
			return;
		}
		
		finalizeDeployment();
		decide();
	}

	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= deploy -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function finalizeDeployment() : Void
	{
		if( deployTime == 0 )
			return;
		deployTime = 0;
		fireEvent(id, UnitEvent.DEPLOY, null);
	}
	

	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= decide -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function decide() 
	{
		var dec = id + ":    ";
		var target:Unit;
		if( attackTime < battleField.now )
		{
			var enemyId = getNearestEnemy();
			dec += "enemyId " + enemyId;
			if( enemyId > -1 && battleField.units.exists(enemyId) )
			{
				target = battleField.units.get(enemyId);
				attack(target);
				dec += "   " + health + " <=> " + target.health ;
	//			trace(dec);
				return;
			}
			dec += "   moved.";
			moveAhead();
		}
		//trace(dec);
	}

	
	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= attack -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function getNearestEnemy() : Int
	{
		var distance:Float = card.bulletRangeMax;
		var ret:Int = -1;
		var i = 0;
		var values = battleField.units.values();
		var len = values.length;
		while ( i < len )
		{
			if( !values[i].disposed && this.side != values[i].side && values[i].deployTime == 0 )
			{
				var dis = com.gt.towers.utils.CoreUtils.getDistance(this, values[i]);
				if( dis <= distance )
				{
					distance = dis;
					ret = values[i].id;
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
		var units:java.util.List<Unit> = new java.util.ArrayList<Unit>();
		units.add(enemy);
		battleField.hitUnit(this, units);
#end
		fireEvent(id, UnitEvent.ATTACK, enemy.id);
		attackTime = battleField.now + card.bulletFireGap;
	}
	
	public function hit(damage:Float) : Void
	{
		health -= damage;
		if( health <= 0 )
			dispose();
		fireEvent(id, UnitEvent.HIT, damage);
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
			eventCallback.dispatch(dispatcherId, type, data);
#elseif flash
		dispatchEvent(new UnitEvent(type, data));
#end
	}
	
	public function dispose() : Void
	{
		disposed = true;
		fireEvent(id, UnitEvent.DISPOSE, null);
	}
}