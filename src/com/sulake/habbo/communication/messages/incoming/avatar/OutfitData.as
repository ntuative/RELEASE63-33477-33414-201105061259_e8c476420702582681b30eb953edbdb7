package com.sulake.habbo.communication.messages.incoming.avatar
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class OutfitData
   {
       
      
      private var var_1787:int;
      
      private var var_2285:String;
      
      private var var_935:String;
      
      public function OutfitData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1787 = param1.readInteger();
         this.var_2285 = param1.readString();
         this.var_935 = param1.readString();
      }
      
      public function get slotId() : int
      {
         return this.var_1787;
      }
      
      public function get figureString() : String
      {
         return this.var_2285;
      }
      
      public function get gender() : String
      {
         return this.var_935;
      }
   }
}
