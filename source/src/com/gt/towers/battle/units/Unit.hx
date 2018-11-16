package com.gt.towers.battle.units;
import com.gt.towers.battle.BattleField;
import com.gt.towers.battle.GameObject;
import com.gt.towers.battle.tilemap.Tile;
import com.gt.towers.battle.fieldes.FieldData;
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
	var targetTile:Tile;
	var path:Array<Tile>;

	public function new(id:Int, battleField:BattleField, card:Card, side:Int, x:Float, y:Float, z:Float) 
	{
		x = ( side == battleField.side ) ? x : (BattleField.WIDTH - x);
		y = ( side == battleField.side ) ? y : (BattleField.HEIGHT - y);
		super(id, battleField, card, side, x, y, z);
		this.summonTime = battleField.now + card.summonTime;
		this.health = card.health;
		this.bulletId = id * 10000;
		this.movable = card.type < CardTypes.C201;
		if( !this.movable )
			return;
		this.targetTile = battleField.tileMap.getTile(battleField.field.type == FieldData.TYPE_HEADQUARTER ? BattleField.WIDTH * 0.5 : this.x, side == 0 ? 0 : BattleField.HEIGHT);
		var tile = battleField.tileMap.getTile(this.x, this.y);
		this.path = battleField.tileMap.findPath(targetTile.i, targetTile.j, tile.i, tile.j);
		estimateAngle();
		
		//trace(tile + " " + targetTile);
		/*var i = 0;
		while ( i < path.length )
		{
			trace(path[i].toString());
			i ++;
		}*/
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
		//var log = id + ":    ";
		var target:Unit;
		cachedEnemy = getNearestEnemy();
		if( cachedEnemy > -1 )
		{
			//log += "enemyId " + cachedEnemy;
			if( attackTime < battleField.now )
			{
				target = battleField.units.get(cachedEnemy);
				attack(target);
				//log += "   " + health + " <=> " + target.health ;
				//trace(log);
			}
			else
			{
				setState(GameObject.STATE_3_WAITING);
			}
		}
		else
		{
			//log += "   moved.";
			move();
		}
		//trace(log);
	}

	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= movement -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function estimateAngle() : Void 
	{
		var angle:Float = Math.atan2(path[0].y - y, path[0].x - x);
        deltaX = card.speed * Math.cos(angle);
        deltaY = card.speed * Math.sin(angle);
		//trace("side:" + side + "  x:" + x + " " + path[0].x + " ,  y:" + y + " " + path[0].y + " ,  delta:" + deltaX + " " + deltaY);
	}
	
	function move() : Void
	{
		if( !movable )
			return;
		
		if( (side == 0 && y <= path[0].y) || (side == 1 && y >= path[0].y) )
		{
			path.shift();
			estimateAngle();
			return;
		}
		setPosition(x + deltaX * battleField.deltaTime, y + deltaY * battleField.deltaTime, GameObject.NaN);
//		setPosition(GameObject.NaN, y + ((side == battleField.side ? -1 : 1) * (card.speed * battleField.deltaTime)), GameObject.NaN);
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

	#if java
	public function toString():String
	#elseif flash
	public override function toString():String
	#end
	{
		return "type:" + card.type + " x:" + x + " y:" + y + " side:" + side + " level:" + card.level + " elixirSize:" + card.elixirSize + " summonTime:" + card.summonTime + " health:" + health + " speed:" + card.speed + " bulletDamage:" + card.bulletDamage + " bulletFireGap:" + card.bulletShootGap + " bulletRangeMax:" + card.bulletRangeMax;
	}
}