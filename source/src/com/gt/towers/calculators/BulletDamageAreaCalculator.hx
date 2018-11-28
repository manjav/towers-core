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
			case	101	:	1.50	;
			case	102	:	1.50	;
			case	103	:	1.50	;
			case	104	:	15.0	;
			case	105	:	2.00	;
			case	106	:	18.0	;
			case	107	:	15.0	;
			case	108	:	1.50	;
			case	109	:	9.00	;
			case	110	:	1.50	;
			case	111	:	15.0	;
			case	112	:	1.50	;
			case	113	:	1.50	;
			
			case	151	:	10.0	;
			case	152	:	15.0	;
			
			case 201 : 1.80 ;
			
			default : BASE_VALUE;
		}
		return ret * 10;
	}
}