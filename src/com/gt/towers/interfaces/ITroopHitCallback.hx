package com.gt.towers.interfaces;
import com.gt.towers.battle.Troop;

/**
 * @author Mansour Djawadi
 */
interface ITroopHitCallback 
{
	#if java
  	function hit(defenderId:Int, troops:java.util.List<Troop>) : Void ;
	#end
}