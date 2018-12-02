package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class SizeVCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch ( type )
		{
			case	101	:	0.50;
			case	102	:	0.55;
			case	103	:	0.35;
			case	104	:	0.50;
			case	105	:	0.45;
			case	106	:	0.50;
			case	107	:	0.40;
			case	108	:	0.60;
			case	109	:	1.00;
			case	110	:	0.35;
			case	111	:	0.50;			
			case	112	:	0.50;
			case	113	:	0.50;
			
			case	151	:	1.00;
			
			case	201	:	1.00;
			
			default: 1;
		}
		return ret * 80;
	}
}