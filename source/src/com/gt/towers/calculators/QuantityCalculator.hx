package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class QuantityCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch ( type )
		{
			case	101	:	1	;
			case	102	:	1	;
			case	103	:	6	;
			case	104	:	1	;
			case	105	:	1	;
			case	106	:	1	;
			case	107	:	1	;
			case	108	:	2	;
			case	109	:	1	;
			case	110	:	3	;
			case	111	:	2	;
			case	112	:	1	;
			case	113	:	1	;
			
			case	151	:	1	;
			case	152	:	1	;
			
			case	201	:	1	;
			
			default: 0;
		}
	}
}