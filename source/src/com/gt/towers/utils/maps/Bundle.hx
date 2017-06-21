package com.gt.towers.utils.maps;
import com.gt.towers.Game;
import com.gt.towers.constants.ResourceType;

/**
 * ...
 * @author Mansour Djawadi
 */
class Bundle extends IntIntMap 
{

	public function new() 
	{
		super();
	}
	
	public function enough():Bool
	{
		var i:Int = 0;
		var keis = keys();
		while (i < keis.length)
		{
			if ( get(keis[i]) > Game.get_instance().get_player().get_resources().get(keis[i]) )
				return false;
			i++;
		}
		return true;
	}
}