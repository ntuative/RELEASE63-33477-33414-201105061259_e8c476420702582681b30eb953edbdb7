package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomMessageNotificationMessageParser implements IMessageParser
   {
       
      
      private var _roomId:int;
      
      private var var_960:String;
      
      private var var_1334:int;
      
      public function RoomMessageNotificationMessageParser()
      {
         super();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomName() : String
      {
         return this.var_960;
      }
      
      public function get messageCount() : int
      {
         return this.var_1334;
      }
      
      public function flush() : Boolean
      {
         this._roomId = -1;
         this.var_960 = "";
         this.var_1334 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._roomId = param1.readInteger();
         this.var_960 = param1.readString();
         this.var_1334 = param1.readInteger();
         return true;
      }
   }
}
