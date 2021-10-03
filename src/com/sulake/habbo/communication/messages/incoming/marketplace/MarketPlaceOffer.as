package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var _offerId:int;
      
      private var _furniId:int;
      
      private var var_2295:int;
      
      private var var_2154:String;
      
      private var var_1726:int;
      
      private var var_408:int;
      
      private var var_2294:int = -1;
      
      private var var_2293:int;
      
      private var var_1725:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:String, param5:int, param6:int, param7:int, param8:int, param9:int = -1)
      {
         super();
         this._offerId = param1;
         this._furniId = param2;
         this.var_2295 = param3;
         this.var_2154 = param4;
         this.var_1726 = param5;
         this.var_408 = param6;
         this.var_2294 = param7;
         this.var_2293 = param8;
         this.var_1725 = param9;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get furniId() : int
      {
         return this._furniId;
      }
      
      public function get furniType() : int
      {
         return this.var_2295;
      }
      
      public function get stuffData() : String
      {
         return this.var_2154;
      }
      
      public function get price() : int
      {
         return this.var_1726;
      }
      
      public function get status() : int
      {
         return this.var_408;
      }
      
      public function get timeLeftMinutes() : int
      {
         return this.var_2294;
      }
      
      public function get averagePrice() : int
      {
         return this.var_2293;
      }
      
      public function get offerCount() : int
      {
         return this.var_1725;
      }
   }
}
