package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class SpeedCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1.0; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch ( type )
		{
			case	101	:	1	;
			case	102	:	0.5;
			case	103	:	1.42	;
			case	104	:	1	;
			case	105	:	0.7	;
			case	106	:	1.1	;
			case	107	:	0.6	;
			case	108	:	1	;
			case	109	:	0.9	;
			
			case	151	:	1	;
			
			case	201	:	0	;
			
			default: BASE_VALUE;
		}
		return ret * 0.06;
	}
}