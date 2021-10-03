package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1443:Boolean;
      
      private var var_2570:int;
      
      private var var_1892:int;
      
      private var var_1893:int;
      
      private var var_2571:int;
      
      private var var_2572:int;
      
      private var var_2569:int;
      
      private var var_2567:int;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get isEnabled() : Boolean
      {
         return this.var_1443;
      }
      
      public function get commission() : int
      {
         return this.var_2570;
      }
      
      public function get tokenBatchPrice() : int
      {
         return this.var_1892;
      }
      
      public function get tokenBatchSize() : int
      {
         return this.var_1893;
      }
      
      public function get offerMinPrice() : int
      {
         return this.var_2572;
      }
      
      public function get offerMaxPrice() : int
      {
         return this.var_2571;
      }
      
      public function get expirationHours() : int
      {
         return this.var_2569;
      }
      
      public function get averagePricePeriod() : int
      {
         return this.var_2567;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1443 = param1.readBoolean();
         this.var_2570 = param1.readInteger();
         this.var_1892 = param1.readInteger();
         this.var_1893 = param1.readInteger();
         this.var_2572 = param1.readInteger();
         this.var_2571 = param1.readInteger();
         this.var_2569 = param1.readInteger();
         this.var_2567 = param1.readInteger();
         return true;
      }
   }
}
