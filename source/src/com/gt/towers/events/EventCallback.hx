package com.gt.towers.events;

/**
 * @author Mansour Djawadi
 */
interface EventCallback 
{
  	function dispatch(dispatcherId:Int, type:Int, data:Any) : Void ;
}
