package com.gt.towers.utils.maps;
import com.gt.towers.buildings.Building;
import com.gt.towers.utils.maps.Bundle;
import com.gt.towers.Game;

/**
 * ...
 * @author Mansour Djawadi
 */
class PlayerResources extends IntIntMap
{

	public function new()
	{
		super();
	}

	override public function increaseMap(bundle:Bundle):Void
	{
		super.increaseMap(bundle);

		if (bundle.containWeapon())
		{
			var i:Int = 0;
			var keis = bundle.keys();
			while (i < keis.length)
			{
				// if resource is weapon
				/*if ( Game.get_instance().get_player().get_buildings().exists( keis[i] ) )
				{
					var b:Building = Game.get_instance().get_player().get_buildings().get(keis[i]);

					// if player gives locked weapon card, that weapon must be unlocked
					if (b.get_level() == 0)
						b.upgrade();
				}*/
				i++;
			}
		}
	}

}