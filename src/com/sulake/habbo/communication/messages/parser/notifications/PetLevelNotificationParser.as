package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_1753:int;
      
      private var var_2219:String;
      
      private var var_1377:int;
      
      private var var_1162:int;
      
      private var var_1760:int;
      
      private var _color:String;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1753 = param1.readInteger();
         this.var_2219 = param1.readString();
         this.var_1377 = param1.readInteger();
         this.var_1162 = param1.readInteger();
         this.var_1760 = param1.readInteger();
         this._color = param1.readString();
         return true;
      }
      
      public function get petId() : int
      {
         return this.var_1753;
      }
      
      public function get petName() : String
      {
         return this.var_2219;
      }
      
      public function get level() : int
      {
         return this.var_1377;
      }
      
      public function get petType() : int
      {
         return this.var_1162;
      }
      
      public function get breed() : int
      {
         return this.var_1760;
      }
      
      public function get color() : String
      {
         return this._color;
      }
   }
}
