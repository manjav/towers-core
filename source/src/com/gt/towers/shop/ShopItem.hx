package com.gt.towers.shop;
import com.gt.towers.utils.maps.Bundle;
import com.gt.towers.utils.maps.IntIntMap;

/**
 * ...
 * @author Mansour Djawadi
 */
class ShopItem 
{
	public var id:Int;
	public var requirements:Bundle;
	public var outcomes:Bundle;

	public function new(id:Int, requirements:Bundle, outcomes:Bundle) 
	{
		this.id = id;
		this.requirements = requirements;
		this.outcomes = outcomes;
	}
	
}