package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_1443:Boolean = false;
      
      private var var_1726:int;
      
      private var var_2007:Array;
      
      private var var_833:Array;
      
      private var var_832:Array;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         this.var_1443 = _loc2_.isWrappingEnabled;
         this.var_1726 = _loc2_.wrappingPrice;
         this.var_2007 = _loc2_.stuffTypes;
         this.var_833 = _loc2_.boxTypes;
         this.var_832 = _loc2_.ribbonTypes;
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1443;
      }
      
      public function get price() : int
      {
         return this.var_1726;
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
   }
}
