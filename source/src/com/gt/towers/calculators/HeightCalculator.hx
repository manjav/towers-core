package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class HeightCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch ( type )
		{
			case	101	:	1	;
			case	102	:	1	;
			case	103	:	1	;
			case	104	:	1	;
			case	105	:	1	;
			case	106	:	1	;
			case	107	:	1	;
			case	108	:	1	;
			case	109	:	1	;
			case	110	:	1	;
			case	111	:	1	;
			case	112	:	1	;
			case	113	:	1	;
			case	114	:	1	;
			case	115	:	1	;
			
			case	151	:	1	;
			case	152	:	1	;
			case	153	:	1	;
			case	154	:	1	;
			case	155	:	1	;
			case	156	:	1	;
			case	157	:	1	;
			case	158	:	1	;
			case	159	:	1	;
			
			case	201	:	1	;
			
			default: 1;
		}
		return ret * 100;
	}
}