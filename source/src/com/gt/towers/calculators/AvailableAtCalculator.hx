package com.gt.towers.calculators;
/**
 * ...
 * @author Mansour Djawadi
 */
class AvailableAtCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 0; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch( type )
		{
			case	101	:	0	;
			case	102	:	0	;
			case	103	:	0	;
			case	104	:	0	;
			case	105	:	0	;
			case	106	:	0	;
			case	107	:	0	;
			case	108	:	0	;
			case	109	:	0	;
			case	110	:	1	;
			case	111	:	1	;
			case	112	:	1	;
			case	113	:	1	;
			case	114	:	1	;
			case	115	:	1	;
			
			case	151	:	1	;
			case	152	:	2	;
			case	153	:	2	;
			case	154	:	2	;
			case	155	:	2	;
			case	156	:	2	;
			case	157	:	2	;
			case	158	:	2	;
			case	159	:	2	;
			
			default : 9;
		}
	}
	
	public static function getChance( type:Int ) : Int
	{
		return switch ( type )
		{
			case	101	:	0	;
			case	102	:	0	;
			case	103	:	0	;
			case	104	:	0	;
			case	105	:	0	;
			case	106	:	1	;
			case	107	:	2	;
			case	108	:	10	;
			case	109	:	20	;
			case	110	:	40	;
			case	111	:	50	;
			case	112	:	90	;
			case	113	:	100	;
			case	114	:	130	;
			case	115	:	140	;
			
			case	151	:	0	;
			case	152	:	4	;
			case	153	:	30	;
			case	154	:	70	;
			case	155	:	80	;
			case	156	:	110	;
			case	157	:	120	;
			case	158	:	160	;
			case	159	:	180	;
			
			default: 1000;
		}
	}
}