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
			case	101	:	0.5	;
			case	102	:	0.55;
			case	103	:	0.35;
			case	104	:	0.5	;
			case	105	:	0.45;
			case	106	:	0.5	;
			case	107	:	0.4	;
			case	108	:	0.6	;
			case	109	:	1	;
			case	110	:	0.6	;
			case	111	:	1	;
			
			case	151	:	1	;
			
			case	201	:	1	;
			
			default: 1;
		}
		return ret * 80;
	}
}