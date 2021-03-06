package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_2585:int;
      
      private var var_2584:int;
      
      private var var_2586:int;
      
      private var var_2587:String;
      
      private var var_1841:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2585 = param1.readInteger();
         this.var_2584 = param1.readInteger();
         this.var_2586 = param1.readInteger();
         this.var_2587 = param1.readString();
         this.var_1841 = param1.readString();
      }
      
      public function get hour() : int
      {
         return this.var_2585;
      }
      
      public function get minute() : int
      {
         return this.var_2584;
      }
      
      public function get chatterId() : int
      {
         return this.var_2586;
      }
      
      public function get chatterName() : String
      {
         return this.var_2587;
      }
      
      public function get msg() : String
      {
         return this.var_1841;
      }
   }
}
