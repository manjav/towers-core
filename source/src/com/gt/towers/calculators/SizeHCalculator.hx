package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class SizeHCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 25; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch ( type )
		{
			case	101	:	35	;
			case	102	:	45  ;
			case	103	:	20	;
			case	104	:	25	;
			case	105	:	25	;
			case	106	:	25	;
			case	107	:	45	;
			case	108	:	25	;
			case	109	:	40	;
			case	110	:	25	;
			case	111	:	40	;
			
			case	201	:	70	;
			
			default: BASE_VALUE;
		}
	}
}