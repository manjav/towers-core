package com.gt.towers.interfaces;
import com.gt.towers.battle.units.Unit;

/**
 * @author Mansour Djawadi
 */
interface IUnitHitCallback 
{
	#if java
  	function hit(defenderId:Int, troops:java.util.List<Unit>) : Void ;
	#end
}