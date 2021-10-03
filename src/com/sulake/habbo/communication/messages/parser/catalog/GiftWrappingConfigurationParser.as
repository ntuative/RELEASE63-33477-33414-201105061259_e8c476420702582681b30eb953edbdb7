package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2930:Boolean;
      
      private var var_2929:int;
      
      private var var_2007:Array;
      
      private var var_833:Array;
      
      private var var_832:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2930;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2929;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_2007;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_833;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_832;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_2007 = [];
         this.var_833 = [];
         this.var_832 = [];
         this.var_2930 = param1.readBoolean();
         this.var_2929 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_2007.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_833.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_832.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
