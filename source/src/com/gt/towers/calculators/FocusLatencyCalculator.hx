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
			case	101	:	2	;
			case	102	:	2	;
			case	103	:	0.7	;
			case	104	:	2	;
			case	105	:	2.5	;
			case	106	:	2	;
			case	107	:	3	;
			case	108	:	0.6	;
			case	109	:	1	;
			case	110	:	1	;
			case	111	:	1	;
			case	112	:	1	;
			case	113	:	1	;
			
			case	201	:	1	;
			default: BASE_VALUE;
		}
		return ret * 0.06;
	}
}