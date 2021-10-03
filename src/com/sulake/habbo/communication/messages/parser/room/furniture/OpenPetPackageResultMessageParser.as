package com.sulake.habbo.communication.messages.parser.room.furniture
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class OpenPetPackageResultMessageParser implements IMessageParser
   {
       
      
      private var var_196:int = 0;
      
      private var var_1713:int = 0;
      
      private var var_1658:String = null;
      
      public function OpenPetPackageResultMessageParser()
      {
         super();
      }
      
      public function get objectId() : int
      {
         return this.var_196;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1713;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1658;
      }
      
      public function flush() : Boolean
      {
         this.var_196 = 0;
         this.var_1713 = 0;
         this.var_1658 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_196 = param1.readInteger();
         this.var_1713 = param1.readInteger();
         this.var_1658 = param1.readString();
         return true;
      }
   }
}
