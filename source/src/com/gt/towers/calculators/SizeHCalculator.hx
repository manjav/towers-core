package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class SizeHCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 5; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch ( type )
		{
			case	101	:	20	;
			case	102	:	16  ;
			case	103	:	10	;
			case	104	:	16	;
			case	105	:	11	;
			case	106	:	12	;
			case	107	:	15	;
			case	108	:	20	;
			
			case	201	:	30	;
			
			default: 1;
		}
	}
}