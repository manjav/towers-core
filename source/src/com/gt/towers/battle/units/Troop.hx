package com.gt.towers.battle.units;

import com.gt.towers.battle.units.Card;
import haxe.Int64;

/**
 * ...
 * @author Mansour Djawadi
 */
class Troop extends Unit 
{
	var moving:Bool;

	public function new(card:Card) 
	{
		super(card);
	}
	
#if java
	override public function update( currentTimeMillis:Int64 ): Void
	{
		if( disposed )
			return;
		
		super.update(currentTimeMillis);
		if( moving )
		{
			/*x += deltaX;
			y += deltaY;
			//if ( type == 0 )
			//	trace(id, x, y, deltaX, deltaY);
			if( deltaX > 0 && x > destination.x || deltaX < 0 && x < destination.x || deltaY > 0 && y > destination.y || deltaY < 0 && y < destination.y )
				arrived();*/
		}
	}
	
	public function hit(damage:Float) : Void
	{
		card.health -= damage;
		if( card.health <= 0 )
			dispose();
	}
	
	override public function dispose() : Void
	{
		moving = false;
		super.dispose();
	}
#end
}