package com.gt.towers.calculators;
/**
 * ...
 * @author Mansour Djawadi
 */
class BulletDamageAreaCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret =  switch( type )
		{
			case	101	:	1 ;
			case	102	:	1	;
			case	103	:	1	;
			case	104	:	9.5	;
			case	105	:	5	;
			case	106	:	7.2	;
			case	107	:	1	;
			case	108	:	1	;
			case	109	:	3	;
			
			case 201 : 1 ;
			
			default : BASE_VALUE;
		}
		return ret * 20;
	}
}