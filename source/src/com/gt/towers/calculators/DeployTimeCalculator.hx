package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class DeployTimeCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 800; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		var ret = switch( type )
		{
			case	101	:	0.8	;
			case	102	:	1	;
			case	103	:	0.8	;
			case	104	:	0.8	;
			case	105	:	1.2	;
			case	106	:	0.8	;
			case	107	:	1	;
			case	108	:	1	;
			case 109 : 5;
			case 110 : 4;
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
			default : BASE_VALUE;
		}
		return ret * 850;
	}
}