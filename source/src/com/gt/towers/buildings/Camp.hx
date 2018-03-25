package com.gt.towers.buildings;

/**
 * ...
 * @author Mansour Djawadi
 */
class Camp extends Building
{
	public override function get_capacity():Int
	{
		return 10;
	}
	public override function get_troopSpeed():Int
	{
		return Math.round(3000 *  (1 / Building.TIME_SCALE));
	}
	#if java
	public override function get_birthRate():Float
	{
		if( !place.battleField.singleMode || place.battleField.games.get(0).player.inTutorial() )
			return super.get_birthRate();
		
		if( game == place.battleField.games.get(0) )
			return super.get_birthRate() * (place.battleField.map.isQuest && game.player.hardMode ? 0.8 : 1.2);
		
		return super.get_birthRate() * (place.battleField.map.isQuest && place.battleField.games.get(0).player.hardMode ? 1.2 : 0.8);
	}
	public override function get_troopPower():Float
	{
		if( !place.battleField.singleMode || place.battleField.games.get(0).player.inTutorial() )
			return 0.9;
		
		if( game == place.battleField.games.get(0) )
			return place.battleField.map.isQuest && game.player.hardMode ? 0.7 : 1.1;
		
		return place.battleField.map.isQuest && place.battleField.games.get(0).player.hardMode ? 1.1 : 0.7;
	}	
	#elseif flash
	public override function get_troopName () : String
	{
		return "0/";
	}
	public override function get_options():com.gt.towers.utils.lists.IntList
	{
		var ret = new com.gt.towers.utils.lists.IntList();
		ret.push(com.gt.towers.constants.BuildingType.B11_BARRACKS);
		ret.push(com.gt.towers.constants.BuildingType.B21_RAPID);
		ret.push(com.gt.towers.constants.BuildingType.B31_HEAVY);
		ret.push(com.gt.towers.constants.BuildingType.B41_CRYSTAL);
		return ret;
	}
	#end
}