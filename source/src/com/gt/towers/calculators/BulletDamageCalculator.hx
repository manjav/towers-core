package com.gt.towers.calculators;
/**
 * ...
 * @author Mansour Djawadi
 */
class BulletDamageCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1.00; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float
	{
		var ret = switch( type )
		{
			case	101	:	1.00	;
			case	102	:	1.00	;
			case	103	:	0.10	;
			case	104	:	0.27	;
			case	105	:	0.80	;
			case	106	:	0.25	;
			case	107	:	3.05	;
			case	108	:	0.10	;
			case	109	:  -0.15	;
			case	110	:  	0.10	;
			case	111	:  	0.30	;
			case	112	:	0.4		;
			case	113	:	0.1		;
			
			case	151	:	3.50	;
			case	152	:	2.00	;
			
			case	201	:	1.00	;
			
			default : BASE_VALUE;
		}
		return ret + (Math.log(level) * 0.585) * (ret/Math.abs(ret));
	}	
}