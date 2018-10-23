package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class BulletShootDelayCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch( type )
		{
			case	101	:	1.2	;
			case	102	:	2	;
			case	103	:	0.7	;
			case	104	:	1	;
			case	105	:	2.5	;
			case	106	:	2	;
			case	107	:	3	;
			case	108	:	0.6	;
			case	109	:	1.2;
			case	110	:	0.7;
			case	111	:	1;
			
			case	201	:	0.8;
			
			default	: BASE_VALUE;
		}
		return ret * 700 ;
	}
}