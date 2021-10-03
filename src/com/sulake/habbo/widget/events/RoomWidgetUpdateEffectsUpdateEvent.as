package com.sulake.habbo.widget.events
{
   public class RoomWidgetUpdateEffectsUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_967:String = "RWUEUE_UPDATE_EFFECTS";
       
      
      private var var_273:Array;
      
      public function RoomWidgetUpdateEffectsUpdateEvent(param1:Array = null, param2:Boolean = false, param3:Boolean = false)
      {
         super(const_967,param2,param3);
         this.var_273 = param1;
      }
      
      public function get effects() : Array
      {
         return this.var_273;
      }
   }
}
