package com.gt.towers.battle.units;
import com.gt.towers.battle.BattleField;
import com.gt.towers.battle.units.Card;
import com.gt.towers.events.UnitEvent;
import com.gt.towers.utils.CoreUtils;
import haxe.Int64;

/**
 * ...
 * @author Mansour Djawadi
 */
class Unit 
{
	public var id:Int;
    public var x:Float;
    public var y:Float;
	public var side:Int;
	public var card:Card;
	var battleField:BattleField;
	
	var deployTime:Int64 = -1;
	var attackTime:Int64;
	//var currentTimeMillis:Int64;
#if java
	public var eventCallback:com.gt.towers.events.EventCallback;
	public var disposed:Bool;
#end

	public function new(id:Int, card:Card, battleFIeld:BattleField) 
	{
		this.id = id;
		this.card = card;
		this.battleField = battleFIeld;
	}
	
#if java
	public function update( currentTimeMillis:Int64 ) : Void
	{
		if( disposed )
			return;
		
		if( deployTime == -1 || deployTime > currentTimeMillis )
			return;
		
		finalizeDeployment();
		decide(currentTimeMillis);
	}

	
	
	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= decide -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function decide(currentTimeMillis:Int64) 
	{
		if( attackTime < currentTimeMillis )
		{
			var enemy = getNearestEnemy();
			if( enemy != null )
			{
				attack(currentTimeMillis, enemy);
				return;
			}
		}
		moveAhead(currentTimeMillis);
	}


	
	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= deploy -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	public function deploy(currentTimeMillis:Int64) : Bool
	{
		if( !deployable() )
			return false;
		
		dispatchEvent(id, UnitEvent.DEPLOYMENT_STARTED, null);
		battleField.elixirBar.set(side, battleField.elixirBar.get(side) - card.elixirSize );
		deployTime = currentTimeMillis + card.deployTime;
		//trace(" type:" + type + " population:" + get_population() + " card.type:" + card.type + " card.index:" + card.index + " card.troopType:" + card.troopType + " transformTime:" + transformTime);
		return true;
	}
	function finalizeDeployment() : Void
	{
		if( deployTime <= 0 )
			return;
		deployTime = 0;
		dispatchEvent(id, UnitEvent.DEPLOYMENT_COMPLETE, null);
	}
	
	
	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= attack -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function getNearestEnemy() : Unit 
	{
		var unit:Unit = null;
		var ret:Unit = null;
		var iterator : java.util.Iterator < java.util.Map.Map_Entry<Int, Unit> > = battleField.units.entrySet().iterator();
		var distance:Float = 2000;
        while( iterator.hasNext() )
        {
            unit = iterator.next().getValue();
			if( side != unit.side )
			{
				var dis = CoreUtils.getDistance(this, unit);
				if ( distance > dis )
				{
					distance = dis;
					ret = unit;
				}
			}
		}
		return ret;
	}
	
	function attack(currentTimeMillis:Int64, enemy:Unit) : Void
	{
		dispatchEvent(id, UnitEvent.ATTACK, enemy);
		var units:java.util.List<Unit> = new java.util.ArrayList<Unit>();
		units.add(enemy);
		battleField.hitUnit(this, units);
		attackTime = currentTimeMillis + card.bulletFireGap;
	}
	
	public function hit(damage:Float) : Void
	{
		card.health -= damage;
		if( card.health <= 0 )
			dispose();
	}

	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= move -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function moveAhead(currentTimeMillis:Int64) : Void
	{
		y += (side == 0 ? -1 : 1) * card.speed;
	}
	
	private function dispatchEvent (dispatcherId:Int, type:Int, data:Any) :Void
	{
		if( eventCallback != null )
			eventCallback.dispatch( dispatcherId, type, data );
	}
	
	public function dispose() : Void
	{
		disposed = true;
	}
#end
	
	public function deployable() : Bool
	{
		//if( place.battlefield.elixirBar.get(troopType) < card.elixirSize )
		//	return false;
		return true;
	}


}