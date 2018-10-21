package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class ElixirSizeCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 3; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch( type )
		{
			case 101 : 3;
			case 102 : 5;
			case 103 : 4;
			case 104 : 4;
			case 105 : 4;
			case 106 : 3;
			case 107 : 4;
			case 108 : 2;
			case 109 : 2;
			case 110 : 2;
			case 111 : 6;
			
			case 151 : 3;
			case 152 : 3;

			default : BASE_VALUE;
		}
	}
}