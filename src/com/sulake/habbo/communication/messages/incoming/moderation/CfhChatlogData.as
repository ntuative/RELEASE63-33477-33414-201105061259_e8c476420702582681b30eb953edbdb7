package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_1967:int;
      
      private var var_2698:int;
      
      private var var_1613:int;
      
      private var var_2383:int;
      
      private var var_117:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1967 = param1.readInteger();
         this.var_2698 = param1.readInteger();
         this.var_1613 = param1.readInteger();
         this.var_2383 = param1.readInteger();
         this.var_117 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + this.var_1967);
      }
      
      public function get callId() : int
      {
         return this.var_1967;
      }
      
      public function get callerUserId() : int
      {
         return this.var_2698;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1613;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2383;
      }
      
      public function get room() : RoomChatlogData
      {
         return this.var_117;
      }
   }
}
