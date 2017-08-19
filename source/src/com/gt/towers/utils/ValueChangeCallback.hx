package com.gt.towers.utils;

/**
 * @author Mansour Djawadi
 */
interface ValueChangeCallback 
{
  	function insert(key:Int, oldValue:Int, newValue:Int) : Void ;
  	function update(key:Int, oldValue:Int, newValue:Int) : Void ;
}