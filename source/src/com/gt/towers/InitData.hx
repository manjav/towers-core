package com.gt.towers;
import com.gt.towers.utils.maps.Bundle;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class InitData 
{
	public var id:Int;
	public var nickName:String;
	public var resources:Bundle;
	public var buildingsLevel:IntIntMap;
	public var deck:IntIntMap;
	
	public function new() 
	{
		resources = new Bundle();
		buildingsLevel = new IntIntMap();
		deck = new IntIntMap();
	}
}