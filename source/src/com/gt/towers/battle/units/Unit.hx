package com.gt.towers.battle.units;
import com.gt.towers.battle.BattleField;
import com.gt.towers.battle.GameObject;
import com.gt.towers.battle.units.Card;
import com.gt.towers.constants.CardTypes;
import com.gt.towers.events.BattleEvent;

/**
 * ...
 * @author Mansour Djawadi
 */
class Unit extends GameObject
{
    public var health:Float;
	public var bulletId:Int = 0;
	var attackTime:Float = 0;
	var cachedEnemy:Int = -1;

	public function new(id:Int, battleField:BattleField, card:Card, side:Int, x:Float, y:Float) 
	{
		x = ( side == battleField.side ) ? x : (BattleField.WIDTH - x);
		y = ( side == battleField.side ) ? y : (BattleField.HEIGHT - y);
		super(id, battleField, card, side, x, y);
		this.summonTime = battleField.now + card.summonTime;
		this.health = card.health;
		this.movable = card.type < CardTypes.C201;
		bulletId = id * 10000;
	}
	
	override public function update() : Void
	{
		if( disposed() )
			return;
		
		if( summonTime > battleField.now )
			return;
		
		finalizeDeployment();
		decide();
	}

	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= deploy -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function finalizeDeployment() : Void
	{
		if( summonTime == 0 )
			return;
		summonTime = 0;
		setState(GameObject.STATE_1_DIPLOYED);
	}
	

	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= decide -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function decide() 
	{
		var dec = id + ":    ";
		var target:Unit;
		cachedEnemy = getNearestEnemy();
		if( cachedEnemy > -1 )
		{
			dec += "enemyId " + cachedEnemy;
			if( attackTime < battleField.now )
			{
				target = battleField.units.get(cachedEnemy);
				attack(target);
				dec += "   " + health + " <=> " + target.health ;
				//trace(dec);
			}
			else
			{
				setState(GameObject.STATE_3_WAITING);
			}
		}
		else
		{
			dec += "   moved.";
			moveAhead();
		}
		//trace(dec);
	}

	
	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= attack -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function getNearestEnemy() : Int
	{
		if ( cachedEnemy != -1 && battleField.units.exists(cachedEnemy) && !battleField.units.get(cachedEnemy).disposed() )
		{
			if( com.gt.towers.utils.CoreUtils.getDistance(this.x, this.y, battleField.units.get(cachedEnemy).x, battleField.units.get(cachedEnemy).y) <= card.bulletRangeMax )
				return cachedEnemy;
		}
		
		var distance:Float = card.bulletRangeMax;
		var ret:Int = -1;
		var i = 0;
		var values = battleField.units.values();
		var len = values.length;
		while ( i < len )
		{
			if( !values[i].disposed() && values[i].summonTime == 0 )
			{
				if( (card.bulletDamage >= 0 && this.side != values[i].side) || (card.bulletDamage < 0 && this.side == values[i].side && values[i].card.type != CardTypes.C109 && values[i].card.type < CardTypes.C201 && values[i].health < values[i].card.health) )
				{
					var dis = com.gt.towers.utils.CoreUtils.getDistance(this.x, this.y, values[i].x, values[i].y);
					if( dis <= distance )
					{
						distance = dis;
						ret = values[i].id;
					}
				}
			}
			i ++;
		}
		return ret;
	}
	
	function attack(enemy:Unit) : Void
	{
#if java
		battleField.addBullet(this, side, x, y, enemy.x, enemy.y);
#end
		fireEvent(id, BattleEvent.ATTACK, enemy);
		attackTime = battleField.now + card.bulletShootGap;
	}
	
	public function hit(damage:Float) : Void
	{
		health = Math.min(health - damage, card.health);
		if( health <= 0 )
			dispose();
		fireEvent(id, BattleEvent.HIT, damage);
	}

	function moveAhead() : Void
	{
		//attackTime = battleField.now;
		if( movable )
			setPosition(GameObject.NaN, y + ((side == battleField.side ? -1 : 1) * (card.speed * battleField.deltaTime)));
	}
	
	#if java
	public function toString():String
	#elseif flash
	public override function toString():String
	#end
	{
		return "type:" + card.type + " x:" + x + " y:" + y + " side:" + side + " level:" + card.level + " elixirSize:" + card.elixirSize + " summonTime:" + card.summonTime + " health:" + health + " speed:" + card.speed + " bulletDamage:" + card.bulletDamage + " bulletFireGap:" + card.bulletShootGap + " bulletRangeMax:" + card.bulletRangeMax;
	}
}