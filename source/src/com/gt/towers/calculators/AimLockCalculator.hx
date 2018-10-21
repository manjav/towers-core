package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class AimLockCalculator extends BaseCalculator
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

			case	151	:	1	;
			case	152	:	1	;
			
			case 201 : 1 ;

			
			default: 1;
		}
		return ret * 0.06;
	}
}