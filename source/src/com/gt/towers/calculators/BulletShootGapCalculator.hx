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
			case	101	:	2.0 ;
			case	102	:	1.8	;
			case	103	:	0.7	;
			case	104	:	1.6	;
			case	105	:	1.7	;
			case	106	:	1.5 ;
			case	107	:	0.0	;
			case	108	:	0.6	;
			case	109	:	1.0	;
			case	110	:	0.7	;
			case	111	:	1.6	;
			case	112	:	0.7	;
			case	113	:	0.7	;
			
			case 	201 :	0.4 ;
			
			default : BASE_VALUE;
		}
		return (ret + Math.log(level) * 0.585) * 1500 * 0.5 ;
	}
}