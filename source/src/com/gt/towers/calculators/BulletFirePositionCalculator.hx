package com.gt.towers.calculators;
import com.gt.towers.utils.Point3;
/**
 * ...
 * @author Mansour Djawadi
 */
class BulletFirePositionCalculator
{
	public function new () { }
	static public function getPoint( type:Int, rotation:Int ) : Point3 
	{
		//var rad = CoreUtils.getRadString(rotation);
		var weaponLen:Float = switch( type )
		{
			case	101	:	20;
			case	102	:	20;
			case	103	:	20;
			case	104	:	20;
			case	105	:	20;
			case	106	:	20;
			case	107	:	20;
			case	108	:	20;
			
			case	201 :	20;
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
			
			case	152	:	 1000;
			
			case	201 :	-30;
			default : 		 0;
		}
		
		var z:Float = switch( type )
		{
			case	151	:	-1000;
			default : 		 0;
		}
		
		return new Point3(x + Math.cos(rotation) * weaponLen, y + Math.sin(rotation) * weaponLen, z);
	}
}