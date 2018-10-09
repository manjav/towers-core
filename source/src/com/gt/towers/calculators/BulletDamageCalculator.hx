package com.gt.towers.calculators;
/**
 * ...
 * @author Mansour Djawadi
 */
class BulletDamageCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 1.3; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		//return BASE_VALUE ;
		var ret = switch( type )
		{
			case	101	:	2 ;
			case	102	:	1.67	;
			case	103	:	0.41	;
			case	104	:	0.48	;
			case	105	:	1.1	;
			case	106	:	0.7	;
			case	107	:	2.65	;
			case	108	:	0.15	;
			case 109 : 2.6;
			case 110 : 1.75;
			case 111 : 5;
			case 112 : 2;
			case 113 : 3;
			case 114 : 4;
			case 115 : 2;
			
			case 151 : 3;
			case 152 : 4;
			case 153 : 5;
			case 154 : 2;
			case 155 : 6;
			case 156 : 4;
			case 157 : 2;
			case 158 : 4;
			case 159 : 5;
			
			case 201 : 1 ;
			
			default : BASE_VALUE;
		}
		return ret * 0.6;
	}	
}