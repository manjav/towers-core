package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class FocusLatencyCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch ( type )
		{
			case	101	:	1.5	;
			case	102	:	2	;
			case	103	:	0.7	;
			case	104	:	1.8	;
			case	105	:	1.5	;
			case	106	:	1.5	;
			case	107	:	0.0	;
			case	108	:	0.7	;
			case	109	:	1.0	;
			case	110	:	0.7	;
			case	111	:	2.0	;
			case	112	:	1.0	;
			case	113	:	1.0	;
			
			case	201	:	1	;
			default: BASE_VALUE;
		}
		return ret * 0.06;
	}
}