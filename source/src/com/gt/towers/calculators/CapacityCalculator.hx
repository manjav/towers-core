package com.gt.towers.calculators;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Mansour Djawadi
 */
class CapacityCalculator 
{
	public var BASE_VALUE:Float = 4;
	public function new () {}
	public function get(type:Int):Float 
	{
		return switch( type )
		{
			case 201 : 3;
			case 202 : 3;
			case 203 : 6;
			case 204 : 3;
			case 205 : 2;
			case 206 : 2;
			case 207 : 2;
			case 208 : 2;
			case 209 : 5;
	
			case 301 : 3;
			case 302 : 2;
			case 303 : 2;
			case 304 : 4;
			case 305 : 1;
			case 306 : 1;
			case 307 : 2;
			case 308 : 1;
			case 309 : 3;
	
			case 401 : 1;
			case 402 : 2;
			case 403 : 3;
			case 404 : 2;
			case 405 : 2;
			case 406 : 1;
			case 407 : 2;
			case 408 : 1;
			case 409 : 2;
	
			case 501 : 5;
			case 502 : 2;
			case 503 : 2;
			case 504 : 6;
			case 505 : 3;
			case 506 : 3;
			case 507 : 4;
			case 508 : 2;
			case 509 : 5;
			
			default : 4;
		}
	}
}