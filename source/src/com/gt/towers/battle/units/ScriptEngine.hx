package com.gt.towers.battle.units;

/**
 * ...
 * @author Mansour Djawadi
 */
class ScriptEngine
{
	static var script:String;
	static var program:Dynamic;
	static var interp:hscript.Interp;

	public static function initialize(_script:String) 
	{
		script = _script;
		program = new hscript.Parser().parseString(script);
		interp = new hscript.Interp();
		interp.variables.set("Math",Math); // share the Math class
	}
	
	public static function get(featureType:Int, cardType:Int, cardLevel:Int = 1) : Float
	{
	//	interp.variables.set("haxe.Log", haxe.Log);
		interp.variables.set("featureType", featureType);
		interp.variables.set("cardType", cardType);
		interp.variables.set("cardLevel", cardLevel);
		return interp.execute(program); 
	}
	
	public static function getInt(featureType:Int, cardType:Int, cardLevel:Int = 1) : Int
	{
		return Math.round( get(featureType, cardType, cardLevel) );
	}
	
	public static function getBool(featureType:Int, cardType:Int, cardLevel:Int) : Bool
	{
		return get(featureType, cardType, cardLevel) > 0;
	}
}