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
			case	101	:	1.8	;
			case	102	:	1.8	;
			case	103	:	1.8	;
			case	104	:	18	;
			case	105	:	13	;
			case	106	:	18	;
			case	107	:	7.0	;
			case	108	:	1.8	;
			case	109	:	7.0	;
			case	110	:	1.8	;
			case	111	:	18	;
			
			case	151	:	10	;
			case	152	:	20	;
			
			case 201 : 2 ;
			
			default : BASE_VALUE;
		}
		return ret * 10;
	}
}