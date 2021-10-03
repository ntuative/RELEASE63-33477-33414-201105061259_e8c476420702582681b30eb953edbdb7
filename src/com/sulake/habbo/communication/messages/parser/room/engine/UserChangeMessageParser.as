package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserChangeMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var _id:int;
      
      private var var_616:String;
      
      private var var_1084:String;
      
      private var var_2108:String;
      
      private var var_2405:int;
      
      public function UserChangeMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get figure() : String
      {
         return this.var_616;
      }
      
      public function get sex() : String
      {
         return this.var_1084;
      }
      
      public function get customInfo() : String
      {
         return this.var_2108;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2405;
      }
      
      public function flush() : Boolean
      {
         this._id = 0;
         this.var_616 = "";
         this.var_1084 = "";
         this.var_2108 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = param1.readInteger();
         this.var_616 = param1.readString();
         this.var_1084 = param1.readString();
         this.var_2108 = param1.readString();
         this.var_2405 = param1.readInteger();
         if(this.var_1084)
         {
            this.var_1084 = this.var_1084.toUpperCase();
         }
         return true;
      }
   }
}
