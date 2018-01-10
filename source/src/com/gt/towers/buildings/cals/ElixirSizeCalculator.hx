package com.gt.towers.buildings.cals;
import com.gt.towers.constants.CardTypes;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class ElixirSizeCalculator 
{
	public var BASE_VALUE:Int = 4;
	public function new () {}
	public function get(type:Int):Float 
	{
		return switch( type )
		{
			case 201 : 3;
			case 202 : 4;
			case 203 : 5;
			case 204 : 2;
			case 205 : 6;
			case 206 : 4;
			case 207 : 2;
			case 208 : 4;
			case 209 : 5;

			case 301 : 5;
			case 302 : 4;
			case 303 : 7;
			case 304 : 4;
			case 305 : 4;
			case 306 : 5;
			case 307 : 5;
			case 308 : 6;
			case 309 : 6;
	
			case 401 : 2;
			case 402 : 5;
			case 403 : 4;
			case 404 : 4;
			case 405 : 4;
			case 406 : 6;
			case 407 : 5;
			case 408 : 6;
			case 409 : 8;
	
			case 501 : 6;
			case 502 : 3;
			case 503 : 3;
			case 504 : 7;
			case 505 : 4;
			case 506 : 4;
			case 507 : 5;
			case 508 : 2;
			case 509 : 6;
			
			default : BASE_VALUE;
		}
	}
}