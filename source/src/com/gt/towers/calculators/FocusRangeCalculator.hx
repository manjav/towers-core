package com.gt.towers.calculators;
/**
 * ...
 * @author Mansour Djawadi
 */
class FocusRangeCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret =  switch( type )
		{
			case	101	:	1.8 ;
			case	102	:	1.0	;
			case	103	:	0.8	;
			case	104	:	0.8	;
			case	105	:	0.7	;
			case	106	:	1.6	;
			case	107	:	0.7	;
			case	108	:	1.4	;
			case	109	:	1.0	;
			case	110	:	0.8	;
			case	111	:	0.8	;
			case	112	:	0.7 ;
			case	113	:	0.7 ;
			
			case 	201 : 	1.4 ;
			
			default : BASE_VALUE;
		}
		return ret * 350;
	}
}