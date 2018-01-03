package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;
import com.gt.towers.utils.maps.IntIntMap;

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
		return switch( type )
		{
			case 201 : 2;
			case 207 : 2;
			case 508 : 2;
			
			case 204 : 3;
			case 401 : 3;
			case 409 : 3;
			
			case 202 : 4;
			case 206 : 4;
			case 208 : 4;
			case 302 : 4;
			case 304 : 4;
			case 305 : 4;
			case 404 : 4;
			case 406 : 4;
			
			case 203 : 5;
			case 209 : 5;
			case 301 : 5;
			case 306 : 5;
			case 307 : 5;
			case 403 : 5;
			case 407 : 5;
			case 503 : 5;
			case 507 : 5;
			
			case 205 : 6;
			case 308 : 6;
			case 309 : 6;
			
			case 303 : 7;
			case 402 : 7;
			case 405 : 7;
			case 504 : 7;
			case 505 : 7;
			
			case 408 : 8;
			case 506 : 8;
			
			default : 4;
		}
		/*
		if ( CardTypes.get_category( type ) == CardTypes.C200 )
			return BASE_VALUE;
			
		if ( CardTypes.get_category( type ) == CardTypes.C300 )
			return BASE_VALUE + 1 + CardTypes.get_rarity(type);
			
		if ( CardTypes.get_category( type ) == CardTypes.C400 )
			return BASE_VALUE - 3 + CardTypes.get_rarity(type);
			
		if ( CardTypes.get_category( type ) == CardTypes.C500 )
			return BASE_VALUE + 2 + CardTypes.get_rarity(type);
			
		return  BASE_VALUE ;
		*/
	}
}