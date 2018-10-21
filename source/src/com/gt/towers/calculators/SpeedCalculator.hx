package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class SpeedCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1.00; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch ( type )
		{
			case	101	:	1.00;
			case	102	:	0.50;
			case	103	:	1.10;
			case	104	:	1.00;
			case	105	:	0.70;
			case	106	:	1.00;
			case	107	:	0.60;
			case	108	:	1.00;
			case	109	:	0.80;
			case	110	:	1.10;
			case	111	:	1;
			
			case	201	:	0	;
			
			default: BASE_VALUE;
		}
		return ret * 0.055;
	}
}