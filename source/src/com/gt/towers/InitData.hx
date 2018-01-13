package com.gt.towers;
import com.gt.towers.utils.lists.DeckList;
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
	public var market:String;
	public var appVersion:Int;
	public var sessionsCount:Int;
	
	public var resources:IntIntMap;
	public var buildingsLevel:IntIntMap;
	public var quests:IntIntMap;
	public var exchanges:IntExchangeMap;
	public var decks:DeckList;
	
	public function new() 
	{
		resources = new IntIntMap();
		buildingsLevel = new IntIntMap();
		quests = new IntIntMap();
		exchanges = new IntExchangeMap();
		decks = new DeckList();
	}
}