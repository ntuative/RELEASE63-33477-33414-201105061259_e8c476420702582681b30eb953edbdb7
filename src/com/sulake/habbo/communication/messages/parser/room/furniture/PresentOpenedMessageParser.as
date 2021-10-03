package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PresentOpenedMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1465:String;
      
      private var var_2083:int;
      
      private var var_1940:String;
      
      public function PresentOpenedMessageParser()
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
      
      public function get itemType() : String
      {
         return this.var_1465;
      }
      
      public function get classId() : int
      {
         return this.var_2083;
      }
      
      public function get productCode() : String
      {
         return this.var_1940;
      }
      
      public function flush() : Boolean
      {
         this.var_1465 = "";
         this.var_2083 = 0;
         this.var_1940 = "";
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1465 = param1.readString();
         this.var_2083 = param1.readInteger();
         this.var_1940 = param1.readString();
         return true;
      }
   }
}
