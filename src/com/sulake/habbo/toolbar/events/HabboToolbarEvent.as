package com.sulake.habbo.toolbar.events
{
   import flash.events.Event;
   
   public class HabboToolbarEvent extends Event
   {
      
      public static const const_67:String = "HTE_INITIALIZED";
      
      public static const const_37:String = "HTE_TOOLBAR_CLICK";
      
      public static const const_516:String = "HTE_TOOLBAR_ORIENTATION";
      
      public static const const_901:String = "HTE_TOOLBAR_RESIZED";
      
      public static const const_346:String = "HTE_TOOLBAR_STATE_HOTEL_VIEW";
      
      public static const const_330:String = "HTE_TOOLBAR_STATE_ROOM_VIEW";
       
      
      private var var_743:String;
      
      private var var_498:String;
      
      private var var_1140:String;
      
      public function HabboToolbarEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
      
      public function set iconId(param1:String) : void
      {
         this.var_743 = param1;
      }
      
      public function get iconId() : String
      {
         return this.var_743;
      }
      
      public function set orientation(param1:String) : void
      {
         this.var_498 = param1;
      }
      
      public function get orientation() : String
      {
         return this.var_498;
      }
      
      public function set iconName(param1:String) : void
      {
         this.var_1140 = param1;
      }
      
      public function get iconName() : String
      {
         return this.var_1140;
      }
   }
}
