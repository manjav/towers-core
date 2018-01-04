package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopPowerCalculator 
{
	public var BASE_VALUE:Float = 1;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		/*
		if( CardTypes.get_category( type ) == CardTypes.C300 )
			return BASE_VALUE + 0.3 + Math.log(level) * 0.25;
		if ( type % 100 == 1 )
			return BASE_VALUE;
		if( CardTypes.get_category( type ) == CardTypes.C200 )
			return BASE_VALUE + 0.1 + Math.log(level) * 0.15;

		return BASE_VALUE + Math.log(level) * 0.10; */
		
		return switch( type )
		{
		case 301 : BASE_VALUE + 0.6 + Math.log(level) * 0.25;// 5
		case 307 : BASE_VALUE + 0.6 + Math.log(level) * 0.25;
		
		case 201 : BASE_VALUE + 0.4 + Math.log(level) * 0.25;// 4
		case 201 : BASE_VALUE + 0.4 + Math.log(level) * 0.25;
		
		case 205 : BASE_VALUE + 0.2 + Math.log(level) * 0.25;// 3
		case 206 : BASE_VALUE + 0.2 + Math.log(level) * 0.30;
		case 208 : BASE_VALUE + 0.2 + Math.log(level) * 0.30;
		case 209 : BASE_VALUE + 0.2 + Math.log(level) * 0.25;
		case 301 : BASE_VALUE + 0.2 + Math.log(level) * 0.25;
		case 302 : BASE_VALUE + 0.2 + Math.log(level) * 0.30;
		case 305 : BASE_VALUE + 0.2 + Math.log(level) * 0.30;
		
		case 201 : BASE_VALUE + 0.1 + Math.log(level) * 0.25;// 2
		case 204 : BASE_VALUE + 0.1 + Math.log(level) * 0.25;
		case 207 : BASE_VALUE + 0.1 + Math.log(level) * 0.35;
		case 406 : BASE_VALUE + 0.1 + Math.log(level) * 0.25;
		case 407 : BASE_VALUE + 0.1 + Math.log(level) * 0.30;
		case 409 : BASE_VALUE + 0.1 + Math.log(level) * 0.25;
		
		case 202 : BASE_VALUE + 0.0 + Math.log(level) * 0.25;// 1
		case 401 : BASE_VALUE + 0.0 + Math.log(level) * 0.25;
		case 403 : BASE_VALUE + 0.0 + Math.log(level) * 0.30;
		case 404 : BASE_VALUE + 0.0 + Math.log(level) * 0.30;
		
		default : BASE_VALUE;
		}
	}
}