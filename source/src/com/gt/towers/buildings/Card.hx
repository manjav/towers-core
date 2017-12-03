package com.gt.towers.buildings;
import com.gt.towers.constants.CardTypes;

/**
 * ...
 * @author Babak Sheikh Salimi
 */
class Card extends Building
{
	public var troopPower:Float;
	public var troopSpeed:Float;
	//public var troopHealth:Float;
	public var troopGeneration:Float;
	public var rerity = 0;

	public function new(game:Game, place:Place, index:Int, type:Int, level:Int = 0) 
	{
		super(game, place, index, type, level);
		rerity = CardTypes.get_rarity(type);
		setFeatures();
	}
	
	function setFeatures():Void
	{
		troopSpeed = get_troopSpeed();
		troopPower = get_troopPower();
		troopGeneration = get_birthRate();
	}
	
	override public function get_troopSpeed():Int
	{
		return super.get_troopSpeed();
	}
	
	override public function get_troopPower():Float
	{
		return super.get_troopPower();
	}
	
	override public function get_birthRate():Float
	{
		return super.get_birthRate();
	}
	
	override public function upgrade(confirmedHards:Int=0):Bool
	{
		var ret = super.upgrade(confirmedHards);
		if ( !ret )
			return false;
		setFeatures();
		return ret;
	}
}