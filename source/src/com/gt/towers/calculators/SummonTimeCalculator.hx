package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class SummonTimeCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch( type )
		{
			case	101	:	0.8	;
			case	102	:	1	;
			case	103	:	1	;
			case	104	:	1	;
			case	105	:	1.2	;
			case	106	:	1	;
			case	107	:	1	;
			case	108	:	1	;
			case	109	:	1	;
			case	110	:	1	;
			case	111	:	1	;
			
			case	151	:	2	;
			case	152	:	0.7	;
			
			case	201	:	0	;
			
			default : BASE_VALUE;
		}
		return ret * 2000;
	}
}