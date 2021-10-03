package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2877:int;
      
      private var var_2878:int;
      
      private var var_2876:int;
      
      private var var_2875:int;
      
      private var var_100:Array;
      
      private var var_225:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_100 = new Array();
         this.var_225 = new Array();
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2877 = param1.readInteger();
         this.var_2878 = param1.readInteger();
         this.var_2876 = param1.readInteger();
         this.var_2875 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_100.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_225.push(new FriendData(param1));
            _loc4_++;
         }
         return true;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2877;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2878;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2876;
      }
      
      public function get categories() : Array
      {
         return this.var_100;
      }
      
      public function get friends() : Array
      {
         return this.var_225;
      }
      
      public function get evenMoreExtendedFriendLimit() : int
      {
         return this.var_2875;
      }
   }
}
