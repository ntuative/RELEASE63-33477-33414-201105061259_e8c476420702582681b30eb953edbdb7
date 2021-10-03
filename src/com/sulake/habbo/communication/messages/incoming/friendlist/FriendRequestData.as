package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendRequestData
   {
       
      
      private var var_1212:int;
      
      private var var_2515:String;
      
      private var var_2516:int;
      
      public function FriendRequestData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1212 = param1.readInteger();
         this.var_2515 = param1.readString();
         this.var_2516 = int(param1.readString());
      }
      
      public function get requestId() : int
      {
         return this.var_1212;
      }
      
      public function get requesterName() : String
      {
         return this.var_2515;
      }
      
      public function get requesterUserId() : int
      {
         return this.var_2516;
      }
   }
}
