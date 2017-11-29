package com.gt.towers.constants;
import com.gt.towers.buildings.Barracks;
import com.gt.towers.buildings.Building;
import com.gt.towers.buildings.Camp;
import com.gt.towers.buildings.Heavy;
import com.gt.towers.buildings.Place;
import com.gt.towers.buildings.Rapid;
import com.gt.towers.buildings.Crystal;
import com.gt.towers.utils.lists.IntList;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */

class BuildingType
{
	public static var IMPROVE:Int = -2;
	public static var NONE:Int = -1;
	
	public static var B00_CAMP:Int = 0;
	public static var B01_CAMP:Int = 1;
	
	public static var B10_BARRACKS:Int = 10;
	public static var B11_BARRACKS:Int = 11;
	public static var B12_BARRACKS:Int = 12;
	public static var B13_BARRACKS:Int = 13;
	public static var B14_BARRACKS:Int = 14;
	
	public static var B20_RAPID:Int = 20;
	public static var B21_RAPID:Int = 21;
	public static var B22_RAPID:Int = 22;
	public static var B23_RAPID:Int = 23;
	public static var B24_RAPID:Int = 24;
	
	public static var B30_HEAVY:Int = 30;
	public static var B31_HEAVY:Int = 31;
	public static var B32_HEAVY:Int = 32;
	public static var B33_HEAVY:Int = 33;
	public static var B34_HEAVY:Int = 34;
	
	public static var B40_CRYSTAL:Int = 40;
	public static var B41_CRYSTAL:Int = 41;
	public static var B42_CRYSTAL:Int = 42;
	public static var B43_CRYSTAL:Int = 43;
	public static var B44_CRYSTAL:Int = 44;
	
	public function new(){}
	
	public static function get_category(type:Int):Int
	{
		return Math.floor(type / 10) * 10;
	}

	public static function instantiate(game:Game, type:Int, place:Place, index:Int, level:Int = 0):Building
	{
		var category = get_category( type );
		
		if (category == BuildingType.B00_CAMP)
			return new Camp(game, place, index, type, level);
		else if (category == BuildingType.B10_BARRACKS)
			return new Barracks(game, place, index, type, level);
		else if (category == BuildingType.B20_RAPID)
			return new Rapid(game, place, index, type, level);
		else if (category == BuildingType.B30_HEAVY)
			return new Heavy(game, place, index, type, level);
		else if (category == BuildingType.B40_CRYSTAL)
			return new Crystal(game, place, index, type, level);
		else 
			return null;
	}
	
	
	private static var _all:IntIntMap;
	public static function getAll():IntIntMap
	{
		if ( _all == null )
		{
			_all = new IntIntMap();
		
			_all.set( B11_BARRACKS, 0 );
			_all.set( B12_BARRACKS, 0 );
			_all.set( B13_BARRACKS, 0 );
			_all.set( B14_BARRACKS, 0 );
			
			_all.set( B21_RAPID, 0 );
			_all.set( B22_RAPID, 0 );
			_all.set( B23_RAPID, 0 );
			_all.set( B24_RAPID, 0 );
			
			_all.set( B31_HEAVY, 0 );
			_all.set( B32_HEAVY, 0 );
			_all.set( B33_HEAVY, 0 );
			_all.set( B34_HEAVY, 0 );
			
			_all.set( B41_CRYSTAL, 0 );
			_all.set( B42_CRYSTAL, 0 );
			_all.set( B43_CRYSTAL, 0 );
			_all.set( B44_CRYSTAL, 0 );
		}
	
		return _all;
	}
	
		public static function isDefensive(type:Int):Bool
		{
			return get_category(type) == B40_CRYSTAL;
		}


}