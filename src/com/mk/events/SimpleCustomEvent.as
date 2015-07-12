/**
 * Created by margish on 5/29/15.
 */
package com.mk.events {
import flash.events.Event;

public class SimpleCustomEvent extends Event {
    public static const HEADER_DROP_DOWN_INDEX_CHANGED:String = "HEADER_DROP_DOWN_INDEX_CHANGED";
    public var _obj:Object;
    public function SimpleCustomEvent(type:String, obj:Object) {
        _obj = obj;
        super(type, true);
    }

    override public function clone():Event{
        return new SimpleCustomEvent(type, _obj);
    }
}
}
