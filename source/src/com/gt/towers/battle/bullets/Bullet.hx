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
	var dx:Float;
	var dy:Float;
	var deltaX:Float;
	var deltaY:Float;
	var explodeTime:Float = -1;

	public function new(battleField:BattleField, id:Int, card:Card, side:Int, x:Float, y:Float, dx:Float, dy:Float) 
	{
		super(id, battleField, card, side, x, y);
		this.summonTime = battleField.now + card.bulletShootDelay;
		this.dx = dx;
		this.dy = dy;
		var angle:Float = Math.atan2(dy - y, dx - x);
        deltaX = card.bulletSpeed * Math.cos(angle);
        deltaY = card.bulletSpeed * Math.sin(angle);
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
			
		setPosition(x + deltaX, y + deltaY);
		//if ( type == 0 )
		//    trace(id, x, y, deltaX, deltaY);
		if( deltaX > 0 && x > dx || deltaX < 0 && x < dx || deltaY > 0 && y > dy || deltaY < 0 && y < dy )
			hit();
	}	
	
	function hit() 
	{
		x = dx;
		y = dy;
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