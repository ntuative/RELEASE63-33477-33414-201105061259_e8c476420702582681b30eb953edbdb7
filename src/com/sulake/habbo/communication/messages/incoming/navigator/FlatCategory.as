package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FlatCategory
   {
       
      
      private var var_2081:int;
      
      private var var_2595:String;
      
      private var var_318:Boolean;
      
      public function FlatCategory(param1:IMessageDataWrapper)
      {
         super();
         this.var_2081 = param1.readInteger();
         this.var_2595 = param1.readString();
         this.var_318 = param1.readBoolean();
      }
      
      public function get nodeId() : int
      {
         return this.var_2081;
      }
      
      public function get nodeName() : String
      {
         return this.var_2595;
      }
      
      public function get visible() : Boolean
      {
         return this.var_318;
      }
   }
}
