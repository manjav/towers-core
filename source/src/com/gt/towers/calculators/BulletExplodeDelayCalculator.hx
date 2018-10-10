package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class BulletExplodeDelayCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 0; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch( type )
		{
			case	106	:	200	;
			default	: BASE_VALUE;
		}
	}
}