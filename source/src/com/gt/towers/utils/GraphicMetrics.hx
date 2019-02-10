package com.gt.towers.utils;
import com.gt.towers.utils.Point3;
/**
 * ...
 * @author Mansour Djawadi
 */
class GraphicMetrics
{
	public function new () { }
	#if flash
	static public function getFirePoint( type:Int, rad:Float ) : Point3 
	{
		var radStr = CoreUtils.getRadString(rad);
		if( radStr == "000" )
		return switch( type )
		{
			case	101	:	new Point3(18, -141, 0);
			case	102	:	new Point3(32, -204, 0);
			case	103	:	new Point3(14, -117, 0);
			case	104	:	new Point3(15,-140, 0);
			case	105	:	new Point3(28,-101, 0);
			case	106	:	new Point3(18, -141, 0);
			case	107	:	new Point3(18, -141, 0);
			case	108	:	new Point3(14,-152, 0);
			case	109	:	new Point3(0,-134, 0);
			case	110	:	new Point3(14, -117, 0);
			case	111	:	new Point3(15,-140, 0);
			case	112	:	new Point3(18, -141, 0);
			case	113	:	new Point3(18, -141, 0);
			
			case	201 :	new Point3(-27, -166, 0);
			case	222 :	new Point3(-24, -170, 0);
			default : 		new Point3(0, 0, 0);
		}

		if( radStr == "045" )
		return switch( type )
		{
			case	101	:	new Point3(-52, -130, 0);
			case	102	:	new Point3(-46,-200, 0);
			case	103	:	new Point3(-52,-104, 0);
			case	104	:	new Point3(-52,-129, 0);
			case	105	:	new Point3(-10,-106, 0);
			case	106	:	new Point3(18, -141, 0);
			case	107	:	new Point3(18, -141, 0);
			case	108	:	new Point3(-52,-139, 0);
			case	109	:	new Point3(-66,-111, 0);
			case	110	:	new Point3(-52,-104, 0);
			case	111	:	new Point3(-52,-129, 0);
			case	112	:	new Point3(18, -141, 0);
			case	113	:	new Point3(18, -141, 0);
			
			case	201 :	new Point3(-116, -130, 0);
			case	222 :	new Point3(-96, -142, 0);
			default : 		new Point3(0, 0, 0);
		}

		if( radStr == "090" )
		return switch( type )
		{
			case	101	:	new Point3(-96, -83, 0);
			case	102	:	new Point3(-99,-156, 0);
			case	103	:	new Point3(-89,-59, 0);
			case	104	:	new Point3(-95,-82, 0);
			case	105	:	new Point3(-40,-90, 0);
			case	106	:	new Point3(18, -141, 0);
			case	107	:	new Point3(18, -141, 0);
			case	108	:	new Point3(-95,-95, 0);
			case	109	:	new Point3(-100,-60, 0);
			case	110	:	new Point3(-89,-59, 0);
			case	111	:	new Point3(-95,-82, 0);
			case	112	:	new Point3(18, -141, 0);
			case	113	:	new Point3(18, -141, 0);
			
			case	201 :	new Point3(-148, -55, 0);
			case	222 :	new Point3(-130, -62, 0);
			default : 		new Point3(0, 0, 0);
		}

		if( radStr == "135" )
		return switch( type )
		{
			case	101	:	new Point3(-90, -21, 0);
			case	102	:	new Point3(-100,-95, 0);
			case	103	:	new Point3(-76,-5, 0);
			case	104	:	new Point3(-83,-25, 0);
			case	105	:	new Point3(-52,-61, 0);
			case	106	:	new Point3(18, -141, 0);
			case	107	:	new Point3(18, -141, 0);
			case	108	:	new Point3(-82,-38, 0);
			case	109	:	new Point3(-76,-0, 0);
			case	110	:	new Point3(-76,-5, 0);
			case	111	:	new Point3(-83,-25, 0);
			case	112	:	new Point3(18, -141, 0);
			case	113	:	new Point3(18, -141, 0);
			
			case	201 :	new Point3(-83, 33, 0);
			case	222 :	new Point3(-80, 4, 0);
			default : 		new Point3(0, 0, 0);
		}

		if( radStr == "180" )
		return switch( type )
		{
			case	101	:	new Point3(-21, 14, 0);
			case	102	:	new Point3(-38,-52, 0);
			case	103	:	new Point3(-16,26, 0);
			case	104	:	new Point3(-18,9, 0);
			case	105	:	new Point3(-30,35, 0);
			case	106	:	new Point3(18, -141, 0);
			case	107	:	new Point3(18, -141, 0);
			case	108	:	new Point3(-17,-7, 0);
			case	109	:	new Point3(0,22, 0);
			case	110	:	new Point3(-16,26, 0);
			case	111	:	new Point3(-18,9, 0);
			case	112	:	new Point3(18, -141, 0);
			case	113	:	new Point3(18, -141, 0);
			
			case	201 :	new Point3(32, 44, 0);
			case	222 :	new Point3(25, 11, 0);
			default : 		new Point3(0, 0, 0);
		}

		if( radStr == "-45" )
		return switch( type )
		{
			case	101	:	new Point3(52, -130, 0);
			case	102	:	new Point3(46,-200, 0);
			case	103	:	new Point3(52,-104, 0);
			case	104	:	new Point3(52,-129, 0);
			case	105	:	new Point3(10,-106, 0);
			case	106	:	new Point3(18, -141, 0);
			case	107	:	new Point3(18, -141, 0);
			case	108	:	new Point3(52,-139, 0);
			case	109	:	new Point3(52,-139, 0);
			case	110	:	new Point3(52,-104, 0);
			case	111	:	new Point3(52,-129, 0);
			case	112	:	new Point3(18, -141, 0);
			case	113	:	new Point3(18, -141, 0);
			
			case	201 :	new Point3(116, -130, 0);
			case	222 :	new Point3(96, -142, 0);
			default : 		new Point3(0, 0, 0);
		}

		if( radStr == "-90" )
		return switch( type )
		{
			case	101	:	new Point3(96, -83, 0);
			case	102	:	new Point3(99,-156, 0);
			case	103	:	new Point3(89,-59, 0);
			case	104	:	new Point3(95,-82, 0);
			case	105	:	new Point3(40,-90, 0);
			case	106	:	new Point3(18, -141, 0);
			case	107	:	new Point3(18, -141, 0);
			case	108	:	new Point3(95,-95, 0);
			case	109	:	new Point3(95,-95, 0);
			case	110	:	new Point3(89,-59, 0);
			case	111	:	new Point3(95,-82, 0);
			case	112	:	new Point3(18, -141, 0);
			case	113	:	new Point3(18, -141, 0);
			
			case	201 :	new Point3(148, -55, 0);
			case	222 :	new Point3(130, -62, 0);
			default : 		new Point3(0, 0, 0);
		}

		if( radStr == "-35" )
		return switch( type )
		{
			case	101	:	new Point3(90, -21, 0);
			case	102	:	new Point3(100,-95, 0);
			case	103	:	new Point3(76,-5, 0);
			case	104	:	new Point3(83,-25, 0);
			case	105	:	new Point3(52,-61, 0);
			case	106	:	new Point3(18, -141, 0);
			case	107	:	new Point3(18, -141, 0);
			case	108	:	new Point3(82,-38, 0);
			case	109	:	new Point3(82,-38, 0);
			case	110	:	new Point3(76,-5, 0);
			case	111	:	new Point3(83,-25, 0);
			case	112	:	new Point3(18, -141, 0);
			case	113	:	new Point3(18, -141, 0);
		
			case	201 :	new Point3(83, 33, 0);
			case	222 :	new Point3(80, 4, 0);
			default : 		new Point3(0, 0, 0);
		}
		return new Point3(0, 0, 0);
	}
	
	static public function getShadowSize(type:Int): Float
	{
		return switch( type )
		{
			case	101	:	80;
			case	102	:	100;
			case	103	:	50;
			case	104	:	85;
			case	105	:	90;
			case	106	:	90;
			case	107	:	70;
			case	108	:	80;
			case	109	:	80;
			case	110	:	50;
			case	111	:	80;
			case	112	:	85;
			case	113	:	85;
			
			case	201 :	80;
			case	222 :	95;
			default : 		1.0;
		}
	}
	
	
#end
	
	static public function getSpellStartPoint(type:Int) : Point3 
	{
		var x:Float = switch( type )
		{
			default : 		0;
		}
		
		var y:Float = switch( type )
		{
			case	152	:	 1000;
			default : 		 0;
		}
		
		var z:Float = switch( type )
		{
			case	151	:	-1000;
			default : 		 0;
		}
		var ret =  new Point3(x, y, z);
		//trace("type:" + type + " rotation:" + rotation + " ret:" + ret);
		return ret;
	}
}