package com.sulake.habbo.ui
{
   import com.sulake.habbo.session.events.RoomSessionDoorbellEvent;
   import com.sulake.habbo.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.widget.events.RoomWidgetDoorbellEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetLetUserInMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import flash.events.Event;
   
   public class DoorbellWidgetHandler implements IRoomWidgetHandler
   {
       
      
      private var var_1098:Boolean = false;
      
      private var _container:IRoomWidgetHandlerContainer = null;
      
      public function DoorbellWidgetHandler()
      {
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1098;
      }
      
      public function get type() : String
      {
         return RoomWidgetEnum.const_130;
      }
      
      public function set container(param1:IRoomWidgetHandlerContainer) : void
      {
         this._container = param1;
      }
      
      public function dispose() : void
      {
         this.var_1098 = true;
         this._container = null;
      }
      
      public function getWidgetMessages() : Array
      {
         return [RoomWidgetLetUserInMessage.const_800];
      }
      
      public function processWidgetMessage(param1:RoomWidgetMessage) : RoomWidgetUpdateEvent
      {
         var _loc2_:* = null;
         switch(param1.type)
         {
            case RoomWidgetLetUserInMessage.const_800:
               _loc2_ = param1 as RoomWidgetLetUserInMessage;
               this._container.roomSession.letUserIn(_loc2_.userName,_loc2_.canEnter);
         }
         return null;
      }
      
      public function getProcessedEvents() : Array
      {
         return [RoomSessionDoorbellEvent.const_130,RoomSessionDoorbellEvent.const_157,RoomSessionDoorbellEvent.const_63];
      }
      
      public function processEvent(param1:Event) : void
      {
         var _loc2_:* = null;
         switch(param1.type)
         {
            case RoomSessionDoorbellEvent.const_130:
               _loc2_ = param1 as RoomSessionDoorbellEvent;
               if(_loc2_ == null)
               {
                  return;
               }
               this._container.events.dispatchEvent(new RoomWidgetDoorbellEvent(RoomWidgetDoorbellEvent.const_811,_loc2_.userName));
               break;
            case RoomSessionDoorbellEvent.const_157:
               _loc2_ = param1 as RoomSessionDoorbellEvent;
               if(_loc2_ == null)
               {
                  return;
               }
               this._container.events.dispatchEvent(new RoomWidgetDoorbellEvent(RoomWidgetDoorbellEvent.const_157,_loc2_.userName));
               break;
            case RoomSessionDoorbellEvent.const_63:
               _loc2_ = param1 as RoomSessionDoorbellEvent;
               if(_loc2_ == null)
               {
                  return;
               }
               this._container.events.dispatchEvent(new RoomWidgetDoorbellEvent(RoomWidgetDoorbellEvent.const_63,_loc2_.userName));
               break;
         }
      }
      
      public function update() : void
      {
      }
   }
}
