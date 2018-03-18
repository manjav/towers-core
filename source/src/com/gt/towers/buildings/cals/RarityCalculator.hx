package com.gt.towers.buildings.cals;

/**
 * ...
 * @author Mansour Djawadi
 */
class RarityCalculator 
{
	public var BASE_VALUE:Int = 0;
	public function new() {}
	public function get(type:Int):Int 
	{
		return switch( type )
		{
			case	201	:	0	;
			case	202	:	0	;
			case	203	:	1	;
			case	204	:	0	;
			case	205	:	0	;
			case	206	:	1	;
			case	207	:	2	;
			case	208	:	1	;
			case	209	:	0	;

			case	301	:	0	;
			case	302	:	1	;
			case	303	:	0	;
			case	304	:	2	;
			case	305	:	1	;
			case	306	:	0	;
			case	307	:	0	;
			case	308	:	2	;
			case	309	:	0	;

			case	401	:	0	;
			case	402	:	0	;
			case	403	:	1	;
			case	404	:	1	;
			case	405	:	2	;
			case	406	:	0	;
			case	407	:	1	;
			case	408	:	2	;
			case	409	:	0	;
	
			case	501	:	2	;
			case	502	:	0	;
			case	503	:	0	;
			case	504	:	1	;
			case	505	:	0	;
			case	506	:	2	;
			case	507	:	0	;
			case	508	:	0	;
			case	509	:	2	;

			default: 0;
		}
	}
}