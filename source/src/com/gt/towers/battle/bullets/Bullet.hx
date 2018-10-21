package com.gt.towers.battle.bullets;
import com.gt.towers.battle.GameObject;
import com.gt.towers.battle.units.Card;
import com.gt.towers.events.BattleEvent;

/**
 * ...
 * @author Mansour Djawadi
 */
class Bullet extends GameObject
{
	var sx:Float;
	var sy:Float;
	var sz:Float;
	var fx:Float;
	var fy:Float;
	var fz:Float;
	var dx:Float;
	var dy:Float;
	var dz:Float;
	var deltaX:Float;
	var deltaY:Float;
	var deltaZ:Float;
	var explodeTime:Float = -1;

	public function new(battleField:BattleField, id:Int, card:Card, side:Int, x:Float, y:Float, z:Float, fx:Float, fy:Float, fz:Float) 
	{
		super(id, battleField, card, side, x, y, z);
		this.summonTime = battleField.now + card.bulletShootDelay;
		this.sx = this.x;
		this.sy = this.y;
		this.sz = this.z;
		this.fx = fx;
		this.fy = fy;
		this.fz = fz;
		dx = fx - sx;
		dy = fy - sy;
		dz = fz - sz;
		var angle:Float = Math.atan2(dy, dx);
        deltaX = card.bulletSpeed * Math.cos(angle);
        deltaY = card.bulletSpeed * Math.sin(angle);
		angle = Math.atan2(dz, dx);
        deltaZ = card.bulletSpeed * Math.sin(angle);
	}

	override public function update() : Void
	{
		if( disposed() )
			return;
		if( summonTime > battleField.now )
			return;
		
		finalizeDeployment();
		move();
		if( explodeTime > -1 && explodeTime < battleField.now )
			explode();
	}

	// -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-= deploy -=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
	function finalizeDeployment() : Void
	{
		if( summonTime == 0 )
			return;
		summonTime = 0;
		setState(GameObject.STATE_1_DIPLOYED);
	}
	
	function move() : Void
	{
		if( explodeTime > -1 )
			return;
		
		setPosition(dx != 0 ? x + deltaX : GameObject.NaN, dy != 0 ? y + deltaY : GameObject.NaN, dz != 0 ? z + deltaZ : GameObject.NaN);
		//if( card.type == 152 )
			//trace("sx:" + sx, " x:" + x, " fx:" + fx, " dx:" + dx, " deltaX:" + deltaX + "    sy:" + sy, " y:" + y, " fy:" + fy, " dy:" + dy, " deltaY:" + deltaY + "    sz:" + sz, " z:" + z, " fz:" + fz, " dz:" + dz, " deltaZ:" + deltaZ);
		if( (deltaX >= 0 && x >= fx || deltaX < 0 && x <= fx) && (deltaY >= 0 && y >= fy || deltaY < 0 && y <= fy) && (deltaZ >= 0 && z >= fz || deltaZ < 0 && z <= fz) )
			hit();
	}	
	
	function hit() 
	{
		x = fx;
		y = fy;
		z = fz;
		//trace("Bullet " + id + " exploded.");
		explodeTime = battleField.now + card.bulletExplodDelay;
		fireEvent(id, BattleEvent.HIT, null);
	}
	
	function explode() 
	{
#if java
		battleField.explodeBullet(this);
#end
		dispose();
	}
}