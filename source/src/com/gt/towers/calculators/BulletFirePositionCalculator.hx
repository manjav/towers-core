package com.gt.towers.calculators;
import com.gt.towers.utils.CoreUtils;
/**
 * ...
 * @author Mansour Djawadi
 */
class BulletFirePositionCalculator extends BaseCalculator
{
	public function new (game:Game) { super(game); BASE_VALUE = 0.0; }
	override public function get( type:Int, level:Int = 1, improveLevel:Int = 1 ) : Float 
	{
		return switch ( type )
		{
			case	151	:	-1000	;
			case	152	:	 1000	;
			
			default: BASE_VALUE;
		}
	}
	
	#if flash
	static public function getPoint( type:Int, rotation:Int ) : flash.geom.Point 
	{
		var rad = CoreUtils.getRadString(rotation);
		if( rad == "000" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(29 , -139);
			case	102	:	new flash.geom.Point(34 , -206);
			case	103	:	new flash.geom.Point(14 , -117);
			case	104	:	new flash.geom.Point(15 , -146);
			case	105	:	new flash.geom.Point(10 , -181);
			case	106	:	new flash.geom.Point(27 , -93);
			case	107	:	new flash.geom.Point(0, 0);
			case	108	:	new flash.geom.Point(0, 0);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "045" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(-33 , -130);
			case	102	:	new flash.geom.Point(-54 , -190);
			case	103	:	new flash.geom.Point(-52 , -105);
			case	104	:	new flash.geom.Point(-61 , -128);
			case	105	:	new flash.geom.Point(-67 , -161);
			case	106	:	new flash.geom.Point(10 , -105);
			case	107	:	new flash.geom.Point(0, 0);
			case	108	:	new flash.geom.Point(0, 0);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "090" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(-93 , -83);
			case	102	:	new flash.geom.Point(-108 , -142);
			case	103	:	new flash.geom.Point(-91 , -60);
			case	104	:	new flash.geom.Point(-102 , -72);
			case	105	:	new flash.geom.Point(-113 , -111);
			case	106	:	new flash.geom.Point(11 , -103);
			case	107	:	new flash.geom.Point(0, 0);
			case	108	:	new flash.geom.Point(0, 0);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "135" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(-88 , -22);
			case	102	:	new flash.geom.Point(-108 , -69);
			case	103	:	new flash.geom.Point(-69 , 8);
			case	104	:	new flash.geom.Point(-84 , -10);
			case	105	:	new flash.geom.Point(-94 , -43);
			case	106	:	new flash.geom.Point(-28 , -92);
			case	107	:	new flash.geom.Point(0, 0);
			case	108	:	new flash.geom.Point(0, 0);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "180" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(-21 , -11);
			case	102	:	new flash.geom.Point(-39 , -26);
			case	103	:	new flash.geom.Point(-22 , 39);
			case	104	:	new flash.geom.Point(-18 , -16);
			case	105	:	new flash.geom.Point(-14 , -6);
			case	106	:	new flash.geom.Point(29 , -72);
			case	107	:	new flash.geom.Point(0, 0);
			case	108	:	new flash.geom.Point(0, 0);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "-35" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(88 , -22);
			case	102	:	new flash.geom.Point(108 , -69);
			case	103	:	new flash.geom.Point(69 , 8);
			case	104	:	new flash.geom.Point(84 , -10);
			case	105	:	new flash.geom.Point(94 , -43);
			case	106	:	new flash.geom.Point(28 , -92);
			case	107	:	new flash.geom.Point(0, 0);
			case	108	:	new flash.geom.Point(0, 0);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "-90" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(93 , -83);
			case	102	:	new flash.geom.Point(108 , -142);
			case	103	:	new flash.geom.Point(91 , -60);
			case	104	:	new flash.geom.Point(102 , -72);
			case	105	:	new flash.geom.Point(113 , -111);
			case	106	:	new flash.geom.Point(-11 , -103);
			case	107	:	new flash.geom.Point(0, 0);
			case	108	:	new flash.geom.Point(0, 0);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		
		if( rad == "-45" )
		{
		return switch( type )
		{
			case	101	:	new flash.geom.Point(33 , -130);
			case	102	:	new flash.geom.Point(54 , -190);
			case	103	:	new flash.geom.Point(52 , -105);
			case	104	:	new flash.geom.Point(61 , -128);
			case	105	:	new flash.geom.Point(67 , -161);
			case	106	:	new flash.geom.Point(-10 , -105);
			case	107	:	new flash.geom.Point(0, 0);
			case	108	:	new flash.geom.Point(0, 0);
			case	201 :	new flash.geom.Point(27, -206);
			default : 		new flash.geom.Point(27, -206);
		}
		}
		return new flash.geom.Point();
	}
	#end
}