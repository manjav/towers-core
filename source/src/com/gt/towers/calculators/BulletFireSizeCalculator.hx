package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class SizeHCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 50; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch ( type )
		{
			case	101	:	10	;
			case	102	:	13;
			case	103	:	6	;
			case	104	:	9	;
			case	105	:	11	;
			case	106	:	8	;
			case	107	:	8	;
			case	108	:	9	;
			case	109	:	9	;
			case	110	:	6	;
			case	111	:	10	;
			case	112	:	8	;
			case	113	:	8	;

		
			case	151	:	1	;
			case	152	:	1	;
			
			default: BASE_VALUE;
		}
		return ret * 20;
	}
}