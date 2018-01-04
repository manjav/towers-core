package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class TroopSpeedCalculator 
{
	public var BASE_VALUE:Int = 4000;
	public function new () {}
	public function get(type:Int, level:Int):Float 
	{
		/*
		if( CardTypes.get_category( type ) == CardTypes.C200 )// rapids
			return BASE_VALUE - 2000 - Math.log(level) * 100 - Math.log(type-200) * 200;
			
		if ( type % 100 == 1 )
			return BASE_VALUE;
			
		if( type > 300 && type < 500 )// powered and shielded
			return BASE_VALUE + 500 - Math.log(level) * 100;

		return BASE_VALUE - Math.log(level) * 200 ;
		*/
		
		return switch( type )
		{
		case 202 : BASE_VALUE - 2100 - Math.log(level) * 100;// 5
		
		case 201 : BASE_VALUE - 2000 - Math.log(level) * 100;// 4
		case 203 : BASE_VALUE - 2000 - Math.log(level) * 125;
		case 204 : BASE_VALUE - 2000 - Math.log(level) * 100;
		case 205 : BASE_VALUE - 2000 - Math.log(level) * 100;
		case 206 : BASE_VALUE - 2040 - Math.log(level) * 125;
		case 207 : BASE_VALUE - 2000 - Math.log(level) * 150;
		case 209 : BASE_VALUE - 2000 - Math.log(level) * 100;
		
		case 208 : BASE_VALUE - 1800 - Math.log(level) * 125;// 3
		case 304 : BASE_VALUE - 1800 - Math.log(level) * 150;
		case 307 : BASE_VALUE - 1800 - Math.log(level) * 100;
		case 309 : BASE_VALUE - 1800 - Math.log(level) * 150;
		case 404 : BASE_VALUE - 1800 - Math.log(level) * 125;
		
		case 301 : BASE_VALUE - 1700 - Math.log(level) * 100;// 2
		case 302 : BASE_VALUE - 1700 - Math.log(level) * 125;
		case 303 : BASE_VALUE - 1700 - Math.log(level) * 100;
		case 305 : BASE_VALUE - 1700 - Math.log(level) * 125;
		case 401 : BASE_VALUE - 1700 - Math.log(level) * 100;
		case 405 : BASE_VALUE - 1700 - Math.log(level) * 150;
		case 406 : BASE_VALUE - 1700 - Math.log(level) * 100;
		case 407 : BASE_VALUE - 1700 - Math.log(level) * 125;
		
		case 306 : BASE_VALUE - 1400 - Math.log(level) * 100;// 1
		case 402 : BASE_VALUE - 1400 - Math.log(level) * 100;
		case 408 : BASE_VALUE - 1400 - Math.log(level) * 150;
		case 409 : BASE_VALUE - 1400 - Math.log(level) * 100;
		
		default : BASE_VALUE - 1800 - Math.log(level) * 100;
		}
	}
}