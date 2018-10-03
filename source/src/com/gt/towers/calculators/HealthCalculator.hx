package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class HealthCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{	
		var ret = switch ( type )
		{
			case	101	:	0.5	;
			case	102	:	2.9	;
			case	103	:	0.42;
			case	104	:	1.02;
			case	105	:	1.85;
			case	106	:	1.45;
			case	107	:	1.7	;
			case	108	:	1.25;
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
			
			default: BASE_VALUE;
		}
		return 3  * ret;
	}
}