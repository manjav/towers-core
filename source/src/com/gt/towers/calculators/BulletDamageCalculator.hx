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
			case	101	:	1.20	;
			case	102	:	1.00	;
			case	103	:	0.10	;
			case	104	:	0.30	;
			case	105	:	0.70	;
			case	106	:	0.42	;
			case	107	:	1.60	;
			case	108	:	0.10	;
			case	109	:  -0.15	;
			
			case	151	:	1.90	;
			case	152	:	0.90	;
			
			case	201	:	1.00	;
			
			default : BASE_VALUE;
		}
		return ret + (Math.log(level) * 0.585) * (ret/Math.abs(ret));
	}	
}