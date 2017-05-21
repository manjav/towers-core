import haxe.lang.HaxeException;

import com.gt.tanks.Game;
import com.gt.tanks.InitData;
import com.gt.tanks.battle.Battle;
import com.gt.tanks.constants.WeaponType;
import com.gt.tanks.utils.GameError;
import com.gt.tanks.utils.maps.Bundle;
import com.gt.tanks.weapons.Weapon;


public class MainClass {

	public MainClass() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try
		{
			Game g = new Game(new InitData());
			trace(g.get_player().get_id());
//			if(g.get_shop().purchase(ShopItemType.SHOP_ITEM_1))
//			{
//				IntIntMap res = g.get_player().get_resources();
//				int[] ks = res.keys();
//				for(int k=0; k<ks.length; k++)
//					trace(ks[k]+ " " + res.get(ks[k]));
//			}
			Weapon w = g.get_weapons().get(WeaponType.W00_SHOT_MEDIUM);
			//trace("get_upgradeRequirements "+ w.get_upgradeRequirements().keys().length);
			//trace("get_upgradeRewards "+ w.get_upgradeRewards().keys().length);

			//w.upgrade();
			
			Battle battle = new Battle();
			Bundle bu = battle.get_outcomes(false);
			battle.consume_outcomes(bu);
			int[] ku = bu.keys();
			for(int i=0; i<ku.length; i++)
				trace(ku[i] + " " + bu.get(ku[i]));
			
			int[] rk = g.get_player().get_resources().keys();
			for(int i=0; i<rk.length; i++)
				trace(rk[i] + " =>" + g.get_player().get_resources().get(rk[i]));
		}
		catch (HaxeException e) 
		{
			GameError ge = (GameError)e.getObject();
			if(ge.object != null)
			{
				Bundle b = (Bundle)ge.object;
				trace(b.keys().length+"");
			}
			trace(ge.message);
		}
		catch (Exception e)
		{
			trace(e.getMessage());
		}
	}

	private static void trace(String text) {
		System.out.println(text);
	}

}