package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarTypingUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_640:Boolean;
      
      public function RoomObjectAvatarTypingUpdateMessage(param1:Boolean = false)
      {
         super();
         this.var_640 = param1;
      }
      
      public function get isTyping() : Boolean
      {
         return this.var_640;
      }
   }
}
