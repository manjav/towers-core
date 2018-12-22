package com.gt.towers.utils;
import com.gt.towers.battle.BattleField;
import com.gt.towers.constants.CardTypes;
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
			
			case	201 :	new Point3(18, -50, 0);
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
			
			case	201 :	new Point3(18, -50, 0);
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
			
			case	201 :	new Point3(18, -50, 0);
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
			
			case	201 :	new Point3(18, -50, 0);
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
			
			case	201 :	new Point3(18, -50, 0);
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
			
			case	201 :	new Point3(18, -50, 0);
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
			
			case	201 :	new Point3(18, -50, 0);
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
		
			case	201 :	new Point3(18, -50, 0);
			default : 		new Point3(0, 0, 0);
		}
		return null;
	}
#end
	
	static public function getPoint( type:Int, rotation:Float ) : Point3 
	{
		//var rad = CoreUtils.getRadString(rotation);
		var weaponLen:Float = switch( type )
		{
			case	101	:	50;
			case	102	:	50;
			case	103	:	50;
			case	104	:	50;
			case	105	:	50;
			case	106	:	50;
			case	107	:	50;
			case	108	:	50;
			case	109	:	50;
			case	110	:	50;
			case	111	:	50;
			case	112	:	50;
			case	113	:	50;
			
			case	201 :	50;
			default : 		0;
		}
		
		var x:Float = switch( type )
		{
			default : 		0;
		}
		
		var y:Float = switch( type )
		{
			case	101	:	-30;
			case	102	:	-30;
			case	103	:	-30;
			case	104	:	-30;
			case	105	:	-30;
			case	106	:	-30;
			case	107	:	-30;
			case	108	:	-30;
			case	109	:	-30;
			case	110	:	-30;
			case	111	:	-30;
			
			case	152	:	 1000;
			
			case	201 :	-30;
			default : 		 0;
		}
		
		var z:Float = switch( type )
		{
			case	151	:	-1000;
			default : 		 0;
		}
		var ret =  new Point3(x + Math.sin(rotation) * weaponLen, y - (Math.cos(rotation) * weaponLen * BattleField.CAMERA_ANGLE), z);
		//trace("type:" + type + " rotation:" + rotation + " ret:" + ret);
		return ret;
	}
	
	static public function hasHitEffect( type:Int ) : Bool
	{
		if( type == 112 || type == 113 )
			return false;
		return true;
	}
	
	static public function hasFireEffect( type:Int ) : Bool
	{
		if( CardTypes.isSpell(type) || type == 105 || type == 106 || type == 108 || type == 112 || type == 113 )
			return false;
		return true;
	}
	
	static public function hasBulletEffect( type:Int ) : Bool
	{
		if( type == 112 || type == 113 || type == 105 )
			return false;
		return true;
	}
	
	static public function hasDieEffect( type:Int ) : Bool
	{
		if( type == 107 )
			return false;
		return true;
	}
}