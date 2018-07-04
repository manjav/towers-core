package com.gt.towers;
import com.gt.towers.utils.maps.IntIntMap;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class InitData 
{
	public var id:Int;
	public var nickName:String;
	public var market:String;
	public var appVersion:Int;
	public var sessionsCount:Int;
	public var resources:IntIntMap;
	public var buildingsLevel:IntIntMap;
	public var operations:IntIntMap;
	
	public function new() 
	{
		resources = new IntIntMap();
		buildingsLevel = new IntIntMap();
		operations = new IntIntMap();
	}
}