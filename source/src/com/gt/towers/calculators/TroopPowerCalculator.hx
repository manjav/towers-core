package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopPowerCalculator 
{
	public var BASE_VALUE:Float = 1.7;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		var factor:Float = switch( type )
		{
			case	201	:	0.8	;
			case	202	:	1	;
			case	203	:	1	;
			case	204	:	1.2	;
			case	205	:	1.8	;
			case	206	:	1.3	;
			case	207	:	1.2	;
			case	208	:	1.3	;
			case	209	:	1	;

			case	301	:	1.6	;
			case	302	:	2.3	;
			case	303	:	2.1	;
			case	304	:	1.4	;
			case	305	:	3.3	;
			case	306	:	3.8	;
			case	307	:	2.5	;
			case	308	:	4.5	;
			case	309	:	1.3	;

			case	401	:	1.1	;
			case	402	:	1.1	;
			case	403	:	0.85;
			case	404	:	1.1	;
			case	405	:	2.1	;
			case	406	:	1.3	;
			case	407	:	1.1	;
			case	408	:	2.8	;
			case	409	:	1.3	;

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