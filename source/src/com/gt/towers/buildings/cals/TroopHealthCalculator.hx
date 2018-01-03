package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopHealthCalculator 
{
	public var BASE_VALUE:Float = 1;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{	
		return switch( type )
		{
		case 401 : BASE_VALUE + 0.3 + Math.log(level) * 0.25;// 5
		case 408 : BASE_VALUE + 0.3 + Math.log(level) * 0.35;
		
		case 402 : BASE_VALUE + 0.2 + Math.log(level) * 0.25;// 4
		case 403 : BASE_VALUE + 0.2 + Math.log(level) * 0.30;
		case 404 : BASE_VALUE + 0.2 + Math.log(level) * 0.30;
		case 405 : BASE_VALUE + 0.2 + Math.log(level) * 0.35;
		case 406 : BASE_VALUE + 0.2 + Math.log(level) * 0.25;
		case 407 : BASE_VALUE + 0.2 + Math.log(level) * 0.30;
		case 409 : BASE_VALUE + 0.2 + Math.log(level) * 0.25;
		
		case 204 : BASE_VALUE + 0.0 + Math.log(level) * 0.25;// 3
		case 207 : BASE_VALUE + 0.0 + Math.log(level) * 0.35;
		case 209 : BASE_VALUE + 0.0 + Math.log(level) * 0.25;
		case 302 : BASE_VALUE + 0.0 + Math.log(level) * 0.30;
		case 303 : BASE_VALUE + 0.0 + Math.log(level) * 0.25;
		case 304 : BASE_VALUE + 0.0 + Math.log(level) * 0.35;
		case 309 : BASE_VALUE + 0.0 + Math.log(level) * 0.25;
		
		case 201 : BASE_VALUE - 0.2 + Math.log(level) * 0.25;// 2
		case 203 : BASE_VALUE - 0.2 + Math.log(level) * 0.30;
		case 205 : BASE_VALUE - 0.2 + Math.log(level) * 0.25;
		case 206 : BASE_VALUE - 0.2 + Math.log(level) * 0.30;
		case 208 : BASE_VALUE - 0.2 + Math.log(level) * 0.30;
		case 301 : BASE_VALUE - 0.2 + Math.log(level) * 0.25;
		case 305 : BASE_VALUE - 0.2 + Math.log(level) * 0.30;
		case 306 : BASE_VALUE - 0.2 + Math.log(level) * 0.25;
		case 307 : BASE_VALUE - 0.2 + Math.log(level) * 0.25;
		case 308 : BASE_VALUE - 0.2 + Math.log(level) * 0.35;
		
		case 202 : BASE_VALUE - 0.4 + Math.log(level) * 0.25;// 1
		
		default : BASE_VALUE;
		}
		/*
		if( CardTypes.get_category( type ) == CardTypes.C400 )
			return BASE_VALUE + 0.1 + Math.log(level) * 0.25;
			
		if ( type % 100 == 1 )
			return BASE_VALUE;
		
		if ( CardTypes.get_category( type ) == CardTypes.C200 )// rapids
			return BASE_VALUE - Math.log(type-200 + 1) * 0.5;

		return BASE_VALUE + Math.log(level) * 0.10;	
		*/
	}
}