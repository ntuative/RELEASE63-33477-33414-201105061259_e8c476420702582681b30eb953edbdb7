package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetCommandsMessageParser implements IMessageParser
   {
       
      
      private var var_1753:int;
      
      private var var_1504:Array;
      
      private var var_1253:Array;
      
      public function PetCommandsMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1753;
      }
      
      public function get allCommands() : Array
      {
         return this.var_1504;
      }
      
      public function get enabledCommands() : Array
      {
         return this.var_1253;
      }
      
      public function flush() : Boolean
      {
         this.var_1753 = -1;
         this.var_1504 = null;
         this.var_1253 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1753 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         this.var_1504 = new Array();
         while(_loc2_-- > 0)
         {
            this.var_1504.push(param1.readInteger());
         }
         var _loc3_:int = param1.readInteger();
         this.var_1253 = new Array();
         while(_loc3_-- > 0)
         {
            this.var_1253.push(param1.readInteger());
         }
         return true;
      }
   }
}
