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
			case	107	:	1	;
			case	108	:	1	;
			case	109	:	2	;
			case	110	:	3	;
			case	111	:	3	;
			
			case	151	:	0	;
			case	152	:	0	;
			
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
			case	106	:	0	;
			case	107	:	0	;
			case	108	:	0	;
			case	109	:	1	;
			case	110	:	1	;
			case	111	:	2	;

			case	151	:	3	;
			case	152	:	3	;

			default: 1000;
		}
	}
}