package com.gt.towers.utils.maps;
import com.gt.towers.Game;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.exchanges.Exchanger;

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
	
	public function deductions() : Bundle
	{
		var ret = new Bundle();
		var keis = keys();
		var i = 0;
		while ( i < keis.length )
		{
			var remain = get(keis[i]) - Game.get_instance().get_player().get_resources().get(keis[i]);
			if(remain > 0)
				ret.set(keis[i], remain);
			i ++;
		}
		return ret;
	}
		
	public function toHard():Int
	{
		return Exchanger.toHard(this);
	}
}