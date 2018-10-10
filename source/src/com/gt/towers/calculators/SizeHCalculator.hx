package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class SizeHCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 15; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch ( type )
		{
			case	101	:	25	;
			case	102	:	35  ;
			case	103	:	20	;
			case	104	:	15	;
			case	105	:	15	;
			case	106	:	15	;
			case	107	:	35	;
			case	108	:	25	;
			
			case	201	:	50	;
			
			default: BASE_VALUE;
		}
	}
}