package com.gt.towers.calculators;
/**
 * ...
 * @author Mansour Djawadi
 */
class BulletRangeMaxCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret =  switch( type )
		{
			case	101	:	1.8 ;
			case	102	:	1.2	;
			case	103	:	0.8	;
			case	104	:	1.2	;
			case	105	:	1.2	;
			case	106	:	1.2	;
			case	107	:	1.3	;
			case	108	:	1.4	;
			case	109	:	1.0	;
			case	110	:	0.8	;
			case	111	:	1.2	;
			
			case 201 : 1.6 ;
			
			default : BASE_VALUE;
		}
		return ret * 400;
	}
}