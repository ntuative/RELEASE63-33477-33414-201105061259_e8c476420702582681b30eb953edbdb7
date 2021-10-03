package com.sulake.habbo.communication.messages.parser.poll
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class VoteResultMessageParser implements IMessageParser
   {
       
      
      private var var_1206:String;
      
      private var var_1511:Array;
      
      private var var_1186:Array;
      
      private var var_2023:int;
      
      public function VoteResultMessageParser()
      {
         super();
      }
      
      public function get question() : String
      {
         return this.var_1206;
      }
      
      public function get choices() : Array
      {
         return this.var_1511.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1186.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2023;
      }
      
      public function flush() : Boolean
      {
         this.var_1206 = "";
         this.var_1511 = [];
         this.var_1186 = [];
         this.var_2023 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1206 = param1.readString();
         this.var_1511 = [];
         this.var_1186 = [];
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            param1.readInteger();
            this.var_1511.push(param1.readString());
            this.var_1186.push(param1.readInteger());
            _loc3_++;
         }
         this.var_2023 = param1.readInteger();
         return true;
      }
   }
}
