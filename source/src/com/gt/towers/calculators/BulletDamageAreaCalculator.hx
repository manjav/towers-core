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
			case	101	:	2.4	;
			case	102	:	2.4	;
			case	103	:	2.4	;
			case	104	:	18	;
			case	105	:	10	;
			case	106	:	14	;
			case	107	:	2.4	;
			case	108	:	2.4	;
			case	109	:	4	;
			case	110	:	2.4	;
			case	111	:	18	;
			
			case	151	:	10	;
			case	152	:	20	;
			
			case 201 : 2 ;
			
			default : BASE_VALUE;
		}
		return ret * 10;
	}
}