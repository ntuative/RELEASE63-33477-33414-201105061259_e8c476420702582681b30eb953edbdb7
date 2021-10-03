package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPlayerValueUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_193:int;
      
      public function RoomObjectAvatarPlayerValueUpdateMessage(param1:int)
      {
         super();
         this.var_193 = param1;
      }
      
      public function get value() : int
      {
         return this.var_193;
      }
   }
}
