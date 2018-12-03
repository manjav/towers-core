package com.gt.towers.calculators;
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
		return new Point3(x + Math.sin(rotation) * weaponLen, y - (Math.cos(rotation) * weaponLen * BattleField.CAMERA_ANGLE), z);
	}
	
	static public function hasHitEffect( type:Int ) : Bool
	{
		if( type == 112 || type == 113 )
			return false;
		return true;
	}
	
	static public function hasFireEffect( type:Int ) : Bool
	{
		if( CardTypes.isSpell(type) || type == 106 || type == 108 || type == 112 || type == 113 || type == 201 )
			return false;
		return true;
	}
	
	static public function hasBulletEffect( type:Int ) : Bool
	{
		if( type == 112 || type == 113 )
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