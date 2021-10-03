package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_159:String = "ROE_MOUSE_CLICK";
      
      public static const const_181:String = "ROE_MOUSE_ENTER";
      
      public static const const_614:String = "ROE_MOUSE_MOVE";
      
      public static const const_179:String = "ROE_MOUSE_LEAVE";
      
      public static const const_2103:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_643:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1782:String = "";
      
      private var var_2739:Boolean;
      
      private var var_2737:Boolean;
      
      private var var_2738:Boolean;
      
      private var var_2740:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:String, param3:int, param4:String, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param3,param4,param9,param10);
         this.var_1782 = param2;
         this.var_2739 = param5;
         this.var_2737 = param6;
         this.var_2738 = param7;
         this.var_2740 = param8;
      }
      
      public function get eventId() : String
      {
         return this.var_1782;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2739;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2737;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2738;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2740;
      }
   }
}
