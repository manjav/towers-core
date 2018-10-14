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
			case 103 : 3;
			case 104 : 4;
			case 105 : 4;
			case 106 : 3;
			case 107 : 4;
			case 108 : 2;
			case 109 : 2;
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
	}
}