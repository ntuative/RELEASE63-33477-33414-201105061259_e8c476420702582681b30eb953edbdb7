package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatTypingMessage extends RoomWidgetMessage
   {
      
      public static const const_913:String = "RWCTM_TYPING_STATUS";
       
      
      private var var_640:Boolean;
      
      public function RoomWidgetChatTypingMessage(param1:Boolean)
      {
         super(const_913);
         this.var_640 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_640;
      }
   }
}
