package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopSpeedCalculator 
{
	public var BASE_VALUE:Int = 4000;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		var factor:Float = switch( type )
		{
		
			case	201	:	1.4	;
			case	202	:	1.2	;
			case	203	:	1.3	;
			case	204	:	1.2	;
			case	205	:	1.2	;
			case	206	:	1.2	;
			case	207	:	1.1	;
			case	208	:	1.2	;
			case	209	:	1.1	;

			case	301	:	0.8	;
			case	302	:	0.8	;
			case	303	:	0.8	;
			case	304	:	0.7	;
			case	305	:	0.6	;
			case	306	:	1.2	;
			case	307	:	1.1	;
			case	308	:	0.9	;
			case	309	:	1.3	;

			case	401	:	0.9	;
			case	402	:	1.1	;
			case	403	:	0.9	;
			case	404	:	1.2	;
			case	405	:	0.85;
			case	406	:	1.5	;
			case	407	:	0.9	;
			case	408	:	0.7	;
			case	409	:	0.9	;

			case	501	:	1	;
			case	502	:	1	;
			case	503	:	1	;
			case	504	:	1	;
			case	505	:	1	;
			case	506	:	1	;
			case	507	:	1	;
			case	508	:	1	;
			case	509	:	1	;
			
			default : 1;
		}
		return BASE_VALUE / factor - Math.log(level) * 100;
	}
}