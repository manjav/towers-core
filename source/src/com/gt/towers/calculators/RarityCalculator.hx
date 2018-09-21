package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class RarityCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 10; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch ( type )
		{
			case	101	:	0	;
			case	102	:	0	;
			case	103	:	0	;
			case	104	:	1	;
			case	105	:	0	;
			case	106	:	0	;
			case	107	:	2	;
			case	108	:	1	;
			case	109	:	0	;
			case	110	:	0	;
			case	111	:	0	;
			case	112	:	0	;
			case	113	:	0	;
			case	114	:	2	;
			case	115	:	1	;
			
			case	151	:	1	;
			case	152	:	0	;
			case	153	:	0	;
			case	154	:	1	;
			case	155	:	1	;
			case	156	:	2	;
			case	157	:	0	;
			case	158	:	1	;
			case	159	:	2	;
			
			default: 0;
		}
	}
}