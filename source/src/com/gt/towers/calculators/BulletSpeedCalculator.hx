package com.gt.towers.calculators;
/**
 * ...
 * @author Mansour Djawadi
 */
class BulletSpeedCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch( type )
		{
			case	101	:	2	;
			case	102	:	0.7	;
			case	103	:	1.7	;
			case	104	:	1.6	;
			case	105	:	1	;
			case	106	:	0.5	;
			case	107	:	0.7	;
			case	108	:	2	;
			case	109	:	2	;
			
			case	201	:	1	;
			
			default : BASE_VALUE;
		}
		return ret * 20;
	}
}