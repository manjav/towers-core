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
			case	101	:	1.80	;
			case	102	:	1.80	;
			case	103	:	1.80	;
			case	104	:	15.0	;
			case	105	:	2.00	;
			case	106	:	18.0	;
			case	107	:	15.0	;
			case	108	:	1.80	;
			case	109	:	9.00	;
			case	110	:	1.80	;
			case	111	:	15.0	;
			
			case	151	:	10.0	;
			case	152	:	15.0	;
			
			case 201 : 2 ;
			
			default : BASE_VALUE;
		}
		return ret * 10;
	}
}