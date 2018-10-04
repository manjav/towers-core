package com.gt.towers.interfaces;
/**
 * @author Mansour Djawadi
 */
interface IUnitHitCallback 
{
	#if java
  	function hit(bulletId:Int, damage:Float, hitUnits:java.util.List<java.lang.Integer>):Void ;
	#end
}