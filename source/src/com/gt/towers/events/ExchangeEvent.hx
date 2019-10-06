package com.gt.towers.events;
import com.gt.towers.exchanges.ExchangeItem;

class ExchangeEvent extends flash.events.Event
{
	public static var COMPLETE:String = "complete";

	public var item:ExchangeItem;

	public function new(type:String, item:ExchangeItem) {
		this.item = item;
		super(type, false, false);
	}
}
