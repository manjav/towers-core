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
			case	101	:	0.70;
			case	102	:	0.60;
			case	103	:	1.10;
			case	104	:	1.00;
			case	105	:	0.90;
			case	106	:	0.70;
			case	107	:	1.10;
			case	108	:	1.00;
			case	109	:	0.80;
			case	110	:	1.10;
			case	111	:	1.00;
			case	112	:	0.70;
			case	113	:	0.60;
			
			case	201	:	0.00;
			
			default: BASE_VALUE;
		}
		return ret * 0.05 * 1.7;
	}
}