package com.gt.towers;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntExchangeMap;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class InitData 
{
	public var id:Int;
	public var nickName:String;
	
	public var resources:IntIntMap;
	public var buildingsLevel:IntIntMap;
	public var quests:IntIntMap;
	public var exchanges:IntExchangeMap;
	
	public function new() 
	{
		resources = new IntIntMap();
		buildingsLevel = new IntIntMap();
		quests = new IntIntMap();
		exchanges = new IntExchangeMap();
	}
}