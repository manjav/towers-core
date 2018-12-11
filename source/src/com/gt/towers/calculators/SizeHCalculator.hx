package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class SizeHCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 30; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = return switch ( type )
		{
			case	101	:	35	;
			case	102	:	45  ;
			case	103	:	15	;
			case	104	:	35	;
			case	105	:	35	;
			case	106	:	30	;
			case	107	:	45	;
			case	108	:	30	;
			case	109	:	40	;
			case	110	:	25	;
			case	111	:	35	;
			case	112	:	25	;
			case	113	:	25	;
			
			case	201	:	70	;
			
			default: BASE_VALUE;
		}
		
		return ret * 20.00;
	}
}