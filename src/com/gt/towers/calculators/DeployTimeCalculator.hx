package com.gt.towers.calculators;

/**
 * ...
 * @author Mansour Djawadi
 */
class DeployTimeCalculator  extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 10; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		if ( CardTypes.get_category( type ) == CardTypes.C200 )
			return  Math.floor(BASE_VALUE * 0.5);
			
		if ( CardTypes.get_category( type ) == CardTypes.C300 )
			return  BASE_VALUE ;
			
		if ( CardTypes.get_category( type ) == CardTypes.C400 )
			return  BASE_VALUE ;
			
		if ( CardTypes.get_category( type ) == CardTypes.C500 )
			return  BASE_VALUE * 2;
			
		return  BASE_VALUE ;
	}
}