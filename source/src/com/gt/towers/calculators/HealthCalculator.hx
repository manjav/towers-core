package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class HealthCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1.00; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float
	{	
		var ret = switch ( type )
		{
			case	101	:	0.50;
			case	102	:	5.00;
			case	103	:	0.10;
			case	104	:	1.00;
			case	105	:	1.40;
			case	106	:	0.60;
			case	107	:	0.60;
			case	108	:	1.00;
			case	109	:	0.30;
			case	110	:	0.10;
			case	111	:	1.00;
			case	112	:	1.00;
			case	113	:	1.00;
			
			case	201	:	6.00;
			
			default: BASE_VALUE;
		}
		return (ret + Math.log(level) * 0.585) * 1.5;
	}
}