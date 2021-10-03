package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ViralFurniStatusMessageParser implements IMessageParser
   {
       
      
      private var var_191:String;
      
      private var var_196:int;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1588:int = 0;
      
      private var var_408:int;
      
      private var _shareId:String;
      
      private var var_2334:String;
      
      public function ViralFurniStatusMessageParser()
      {
         super();
      }
      
      public function get campaignID() : String
      {
         return this.var_191;
      }
      
      public function get objectId() : int
      {
         return this.var_196;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get itemCategory() : int
      {
         return this.var_1588;
      }
      
      public function get shareId() : String
      {
         return this._shareId;
      }
      
      public function get status() : int
      {
         return this.var_408;
      }
      
      public function get firstClickUserName() : String
      {
         return this.var_2334;
      }
      
      public function flush() : Boolean
      {
         this._roomId = 0;
         this._roomCategory = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_191 = param1.readString();
         this.var_196 = param1.readInteger();
         this.var_408 = param1.readInteger();
         this._shareId = param1.readString();
         this.var_2334 = param1.readString();
         this.var_1588 = param1.readInteger();
         return true;
      }
   }
}
