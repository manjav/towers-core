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
			case	101	:	15	;
			case	102	:	20	;
			case	103	:	20	;
			case	104	:	180	;
			case	105	:	100	;
			case	106	:	140	;
			case	107	:	20	;
			case	108	:	15	;
			case	109	:	60	;
			
			case 201 : 20 ;
			
			default : BASE_VALUE;
		}
		return ret;
	}
}