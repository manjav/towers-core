package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class ElixirSizeCalculator 
{
	public var BASE_VALUE:Int = 5;
	public function new () {}
	public function get(type:Int):Float 
	{
		if ( CardTypes.get_category( type ) == CardTypes.C200 )
			return BASE_VALUE;
			
		if ( CardTypes.get_category( type ) == CardTypes.C300 )
			return BASE_VALUE + 1 + CardTypes.get_rarity(type);
			
		if ( CardTypes.get_category( type ) == CardTypes.C400 )
			return BASE_VALUE - 3 + CardTypes.get_rarity(type);
			
		if ( CardTypes.get_category( type ) == CardTypes.C500 )
			return BASE_VALUE + 2 + CardTypes.get_rarity(type);
			
		return  BASE_VALUE ;
	}
}