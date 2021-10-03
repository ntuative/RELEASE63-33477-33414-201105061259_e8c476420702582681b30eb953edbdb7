package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDanceMessage extends RoomWidgetMessage
   {
      
      public static const const_754:String = "RWCM_MESSAGE_DANCE";
      
      public static const const_1161:int = 0;
      
      public static const const_1762:Array = [2,3,4];
       
      
      private var var_76:int = 0;
      
      public function RoomWidgetDanceMessage(param1:int)
      {
         super(const_754);
         this.var_76 = param1;
      }
      
      public function get style() : int
      {
         return this.var_76;
      }
   }
}
