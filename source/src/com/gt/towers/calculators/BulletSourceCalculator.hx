package com.gt.towers.calculators;
import com.gt.towers.utils.CoreUtils;
/**
 * ...
 * @author Mansour Djawadi
 */
class BulletSourceCalculator
{
	public function new () {}
	#if flash
	static public function getPoint( type:Int, rotation:Int ) : flash.geom.Point 
	{
		var rad = CoreUtils.getRadString(rotation);
		if( rad == "000" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(27, -206);
			case	102	:	new flash.geom.Point(27, -206);
			case	103	:	new flash.geom.Point(27, -206);
			case	104	:	new flash.geom.Point(27, -206);
			case	105	:	new flash.geom.Point(27, -206);
			case	106	:	new flash.geom.Point(27, -206);
			case	107	:	new flash.geom.Point(27, -206);
			case	108	:	new flash.geom.Point(27, -206);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "045" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(27, -206);
			case	102	:	new flash.geom.Point(27, -206);
			case	103	:	new flash.geom.Point(27, -206);
			case	104	:	new flash.geom.Point(27, -206);
			case	105	:	new flash.geom.Point(27, -206);
			case	106	:	new flash.geom.Point(27, -206);
			case	107	:	new flash.geom.Point(27, -206);
			case	108	:	new flash.geom.Point(27, -206);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "090" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(27, -206);
			case	102	:	new flash.geom.Point(27, -206);
			case	103	:	new flash.geom.Point(27, -206);
			case	104	:	new flash.geom.Point(27, -206);
			case	105	:	new flash.geom.Point(27, -206);
			case	106	:	new flash.geom.Point(27, -206);
			case	107	:	new flash.geom.Point(27, -206);
			case	108	:	new flash.geom.Point(27, -206);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "135" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(27, -206);
			case	102	:	new flash.geom.Point(27, -206);
			case	103	:	new flash.geom.Point(27, -206);
			case	104	:	new flash.geom.Point(27, -206);
			case	105	:	new flash.geom.Point(27, -206);
			case	106	:	new flash.geom.Point(27, -206);
			case	107	:	new flash.geom.Point(27, -206);
			case	108	:	new flash.geom.Point(27, -206);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "180" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(27, -206);
			case	102	:	new flash.geom.Point(27, -206);
			case	103	:	new flash.geom.Point(27, -206);
			case	104	:	new flash.geom.Point(27, -206);
			case	105	:	new flash.geom.Point(27, -206);
			case	106	:	new flash.geom.Point(27, -206);
			case	107	:	new flash.geom.Point(27, -206);
			case	108	:	new flash.geom.Point(27, -206);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "-35" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(27, -206);
			case	102	:	new flash.geom.Point(27, -206);
			case	103	:	new flash.geom.Point(27, -206);
			case	104	:	new flash.geom.Point(27, -206);
			case	105	:	new flash.geom.Point(27, -206);
			case	106	:	new flash.geom.Point(27, -206);
			case	107	:	new flash.geom.Point(27, -206);
			case	108	:	new flash.geom.Point(27, -206);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "-90" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(27, -206);
			case	102	:	new flash.geom.Point(27, -206);
			case	103	:	new flash.geom.Point(27, -206);
			case	104	:	new flash.geom.Point(27, -206);
			case	105	:	new flash.geom.Point(27, -206);
			case	106	:	new flash.geom.Point(27, -206);
			case	107	:	new flash.geom.Point(27, -206);
			case	108	:	new flash.geom.Point(27, -206);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "-45" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(27, -206);
			case	102	:	new flash.geom.Point(27, -206);
			case	103	:	new flash.geom.Point(27, -206);
			case	104	:	new flash.geom.Point(27, -206);
			case	105	:	new flash.geom.Point(27, -206);
			case	106	:	new flash.geom.Point(27, -206);
			case	107	:	new flash.geom.Point(27, -206);
			case	108	:	new flash.geom.Point(27, -206);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		return new flash.geom.Point();
	}
	#end
}