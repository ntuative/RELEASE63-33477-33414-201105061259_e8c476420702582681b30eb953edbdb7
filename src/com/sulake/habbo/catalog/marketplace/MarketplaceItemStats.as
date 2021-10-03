package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_2293:int;
      
      private var var_2369:int;
      
      private var var_2368:int;
      
      private var _dayOffsets:Array;
      
      private var var_1778:Array;
      
      private var var_1777:Array;
      
      private var var_2370:int;
      
      private var var_2371:int;
      
      public function MarketplaceItemStats()
      {
         super();
      }
      
      public function get averagePrice() : int
      {
         return this.var_2293;
      }
      
      public function get offerCount() : int
      {
         return this.var_2369;
      }
      
      public function get historyLength() : int
      {
         return this.var_2368;
      }
      
      public function get dayOffsets() : Array
      {
         return this._dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return this.var_1778;
      }
      
      public function get soldAmounts() : Array
      {
         return this.var_1777;
      }
      
      public function get furniTypeId() : int
      {
         return this.var_2370;
      }
      
      public function get furniCategoryId() : int
      {
         return this.var_2371;
      }
      
      public function set averagePrice(param1:int) : void
      {
         this.var_2293 = param1;
      }
      
      public function set offerCount(param1:int) : void
      {
         this.var_2369 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         this.var_2368 = param1;
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         this._dayOffsets = param1.slice();
      }
      
      public function set averagePrices(param1:Array) : void
      {
         this.var_1778 = param1.slice();
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         this.var_1777 = param1.slice();
      }
      
      public function set furniTypeId(param1:int) : void
      {
         this.var_2370 = param1;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         this.var_2371 = param1;
      }
   }
}
