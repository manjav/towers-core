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
			case	101	:	0.50	;
			case	102	:	0.40	;
			case	103	:	0.10	;
			case	104	:	0.30	;
			case	105	:	0.60	;
			case	106	:	0.25	;
			case	107	:	0.60	;
			case	108	:	0.07	;
			case	109	:  -0.10	;
			case	110	:  	0.10	;
			case	111	:  	0.30	;
			case	112	:	0.10	;
			case	113	:	0.40	;
			
			case	151	:	3.50	;
			case	152	:	2.00	;
			
			case	201	:	0.20	;
			
			default : BASE_VALUE;
		}
		return ret + (Math.log(level) * 0.585) * (ret/Math.abs(ret));
	}	
}