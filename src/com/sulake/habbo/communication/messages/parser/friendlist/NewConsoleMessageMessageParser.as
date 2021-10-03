package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NewConsoleMessageMessageParser implements IMessageParser
   {
       
      
      private var var_1112:int;
      
      private var var_2373:String;
      
      public function NewConsoleMessageMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1112 = param1.readInteger();
         this.var_2373 = param1.readString();
         return true;
      }
      
      public function get senderId() : int
      {
         return this.var_1112;
      }
      
      public function get messageText() : String
      {
         return this.var_2373;
      }
   }
}
