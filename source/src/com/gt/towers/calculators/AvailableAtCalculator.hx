package com.gt.towers.calculators;
/**
 * ...
 * @author Mansour Djawadi
 */
class AvailableAtCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 0; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch( type )
		{
			case	201	:	0	;
			case	202	:	0	;
			case	203	:	1	;
			case	204	:	2	;
			case	205	:	3	;
			case	206	:	4	;
			//case	207	:	5	;
			//case	208	:	6	;
			//case	209	:	7	;
		
			case	301	:	0	;
			case	302	:	0	;
			case	303	:	1	;
			case	304	:	3	;
			case	305	:	5	;
			case	306	:	7	;
			//case	307	:	5	;
			//case	308	:	6	;
			//case	309	:	8	;
			
			case	401	:	0	;
			case	402	:	1	;
			case	403	:	1	;
			case	404	:	4	;
			case	405	:	6	;
			case	406	:	8	;
			//case	407	:	5	;
			//case	408	:	7	;
			//case	409	:	9	;
		
			case	501	:	0	;
			case	502	:	1	;
			case	503	:	4	;
			case	504	:	5	;
			case	505	:	7	;
			case	506	:	9	;
			//case	507	:	6	;
			//case	508	:	7	;
			//case	509	:	8	;
		
			default : 9;
		}
	}
	
	public static function getChance( type:Int ) : Int
	{
		return switch ( type )
		{
			case	11	:	0	;
			case	21	:	1	;
			case	12	:	3	;
			case	31	:	6	;
			case	41	:	10	;
			case	13	:	14	;
			case	22	:	18	;
			case	32	:	23	;
			case	23	:	28	;
			case	33	:	34	;
			case	14	:	41	;
			case	42	:	48	;
			case	24	:	56	;
			case	43	:	70	;
			case	34	:	95	;
			case	44	:	130	;
			
			default: 1000;
		}
	}
}