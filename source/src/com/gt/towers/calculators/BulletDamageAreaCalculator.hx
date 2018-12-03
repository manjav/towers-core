package com.gt.towers.calculators;
/**
 * ...
 * @author Mansour Djawadi
 */
class BulletDamageAreaCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 20.0; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret =  switch( type )
		{
			case	101	:	1.00	;
			case	102	:	1.00	;
			case	103	:	1.00	;
			case	104	:	15.0	;
			case	105	:	1.00	;
			case	106	:	18.0	;
			case	107	:	20.0	;
			case	108	:	1.00	;
			case	109	:	12.0	;
			case	110	:	1.00	;
			case	111	:	15.0	;
			case	112	:	1.00	;
			case	113	:	1.00	;
			
			case	151	:	10.0	;
			case	152	:	15.0	;
			
			case 	201 : 	1.00 	;
			
			default : BASE_VALUE;
		}
		return ret * 10;
	}
}