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
			case	102	:	3.00;
			case	103	:	0.10;
			case	104	:	1.02;
			case	105	:	2.50;
			case	106	:	1.00;
			case	107	:	2.04;
			case	108	:	1.00;
			case	109	:	0.30;
			case	110	:	0.10;
			case	111	:	1.02;
			case	112	:	0.40;
			case	113	:	1.90;
			
			case	201	:	8.00;
			
			default: BASE_VALUE;
		}
		return (ret + Math.log(level) * 0.585) * 1.5;
	}
}