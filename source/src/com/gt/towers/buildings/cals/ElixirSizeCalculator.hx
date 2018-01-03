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
		switch( type )
		{
			case 201:
			case 207:
			case 508:
				return 2;
			case 204:
			case 401:
			case 409:
				return 3;
			case 202:
			case 206:
			case 208:
			case 302:
			case 304:
			case 305:
			case 404:
			case 406:
				return 4;
			case 203:
			case 209:
			case 301:
			case 306:
			case 307:
			case 403:
			case 407:
			case 503:
			case 507:
				return 5;
			case 205:
			case 308:
			case 309:
				return 6;
			case 303:
			case 402:
			case 405:
			case 504:
			case 505:
				return 7;
			case 408:
			case 506:
				return 8;
			default:
				return 4;
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