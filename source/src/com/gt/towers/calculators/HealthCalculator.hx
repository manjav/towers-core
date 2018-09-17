package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class HealthCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 10; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{	
		var factor:Float = switch( type )
		{
			case	201	:	0.9	;
			case	202	:	1.1	;
			case	203	:	0.65;
			case	204	:	0.5	;
			case	205	:	1.4	;
			case	206	:	1.3	;
			case	207	:	0.75;
			case	208	:	1.3	;
			case	209	:	0.9	;

			case	301	:	1.3	;
			case	302	:	1.1	;
			case	303	:	1.2	;
			case	304	:	1	;
			case	305	:	2	;
			case	306	:	1.1	;
			case	307	:	0.9	;
			case	308	:	1.5	;
			case	309	:	1.2	;

			case	401	:	2	;
			case	402	:	2.1	;
			case	403	:	1.7	;
			case	404	:	1.5	;
			case	405	:	1.1	;
			case	406	:	3.1	;
			case	407	:	2.5	;
			case	408	:	3.1	;
			case	409	:	3.4	;

			case	501	:	1	;
			case	502	:	1	;
			case	503	:	1	;
			case	504	:	1	;
			case	505	:	1	;
			case	506	:	1	;
			case	507	:	1	;
			case	508	:	1	;
			case	509	:	1	;
		
			default : BASE_VALUE;
		}
		return BASE_VALUE * factor + Math.log(level) * 0.25;
	}
}