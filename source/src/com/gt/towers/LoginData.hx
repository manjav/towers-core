//MAJOR_VERSION=102
package com.gt.towers;
import com.gt.towers.constants.BuildingType;
import com.gt.towers.constants.ResourceType;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntIntMap;
/**
 * ...
 * @author Mansour Djawadi
 */
class LoginData
{
	public var coreVersion:Float = 999999 ;
	public var noticeVersion:Int = 102;
	public var forceVersion:Int = 100;
	public var resources:IntIntMap;
	public var buildingsLevel:IntIntMap;
	public function new()
	{
		resources = new IntIntMap();
		buildingsLevel = new IntIntMap();
		
		resources.set(ResourceType.XP, 0);
		resources.set(ResourceType.POINT, 0);
		resources.set(ResourceType.CURRENCY_0, 100);
		resources.set(ResourceType.CURRENCY_1, 30);
		
		resources.set(BuildingType.B00_COMMON, 1);
		buildingsLevel.set(BuildingType.B00_COMMON, 1);
		
		resources.set(BuildingType.B01_HEAVY, 1);
		buildingsLevel.set(BuildingType.B01_HEAVY, 1);
		
		resources.set(BuildingType.B02_SUPER_HEAVY, 1);
		buildingsLevel.set(BuildingType.B02_SUPER_HEAVY, 1);
	}
}