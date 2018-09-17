package com.gt.towers.battle.units;
import com.gt.towers.battle.units.Card;
import com.gt.towers.events.UnitEvent;
import haxe.Int64;

/**
 * ...
 * @author Mansour Djawadi
 */
class Unit 
{
	public var id:Int;
    public var x:Float;
    public var y:Float;
	public var card:Card;
	var deployTime:Int64;
	//var currentTimeMillis:Int64;
#if java
	public var eventCallback:com.gt.towers.events.EventCallback;
	var disposed:Bool;
#end

	public function new(card:Card) 
	{
		this.card = card;
	}
	
#if java
	public function update( currentTimeMillis:Int64 ) : Void
	{
		if( disposed )
			return;
		
		//this.currentTimeMillis = currentTimeMillis;
        
		// waiting for transform
		if( deployTime >= currentTimeMillis )
			finalizeDeployment();
	}
	
	public function deploy(currentTimeMillis:Int64) : Bool
	{
		if( !deployable() )
			return false;
		
		dispatchEvent(id, UnitEvent.DEPLOYMENT_STARTED, null);
		//place.battlefield.elixirBar.set(troopType, place.battlefield.elixirBar.get(card.troopType) - card.elixirSize );
		deployTime = currentTimeMillis + card.deployTime;
		//trace(" type:" + type + " population:" + get_population() + " card.type:" + card.type + " card.index:" + card.index + " card.troopType:" + card.troopType + " transformTime:" + transformTime);
		return true;
	}
	function finalizeDeployment() : Void
	{
		//reset(card.troopType);
		//setFeatures();
		deployTime = 0;
		dispatchEvent(id, UnitEvent.DEPLOYMENT_COMPLETE, null);
	}
	
	private function dispatchEvent (dispatcherId:Int, type:Int, data:Any) :Void
	{
		if( eventCallback != null )
			eventCallback.dispatch( dispatcherId, type, data );
	}
	
	public function dispose() : Void
	{
		disposed = true;
	}
#end
	
	public function deployable() : Bool
	{
		//if( place.battlefield.elixirBar.get(troopType) < card.elixirSize )
		//	return false;
		return true;
	}


}