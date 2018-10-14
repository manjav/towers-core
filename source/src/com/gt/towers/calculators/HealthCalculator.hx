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
			case	103	:	0.23;
			case	104	:	1.02;
			case	105	:	1.7;
			case	106	:	1;
			case	107	:	1.7	;
			case	108	:	1;
			case	109	:	0.4	;
			
			case	151	:	1	;
			
			case	201	:	5	;
			
			default: BASE_VALUE;
		}
		return ret * 3;
	}
}