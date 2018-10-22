package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class BulletShootGapCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1.00; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
			var ret = switch( type )
		{
			case	101	:	2.16;
			case	102	:	2	;
			case	103	:	0.7	;
			case	104	:	2	;
			case	105	:	2.3	;
			case	106	:	1.8 ;
			case	107	:	2.5	;
			case	108	:	0.6	;
			case	109	:	1	;
			case	110	:	0.7	;
			case	111	:	2	;
			
			case 	201 :	0.7 ;
			default : BASE_VALUE;
		}
		return (ret + Math.log(level) * 0.585) * 1500 ;
	}
}