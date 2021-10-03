package com.sulake.habbo.catalog.club
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.catalog.purse.Purse;
   import com.sulake.habbo.catalog.viewer.ICatalogPage;
   import com.sulake.habbo.catalog.viewer.IProductContainer;
   import com.sulake.habbo.catalog.viewer.Offer;
   
   public class ClubBuyOfferData implements IPurchasableOffer
   {
       
      
      private var _offerId:int;
      
      private var var_1940:String;
      
      private var var_1726:int;
      
      private var var_2669:Boolean;
      
      private var var_2666:Boolean;
      
      private var var_2670:int;
      
      private var var_2668:int;
      
      private var var_353:ICatalogPage;
      
      private var var_2665:int;
      
      private var var_2667:int;
      
      private var var_2672:int;
      
      private var var_1541:String;
      
      private var var_2671:Boolean = false;
      
      public function ClubBuyOfferData(param1:int, param2:String, param3:int, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:int, param9:int, param10:int)
      {
         super();
         this._offerId = param1;
         this.var_1940 = param2;
         this.var_1726 = param3;
         this.var_2669 = param4;
         this.var_2666 = param5;
         this.var_2670 = param6;
         this.var_2668 = param7;
         this.var_2665 = param8;
         this.var_2667 = param9;
         this.var_2672 = param10;
      }
      
      public function dispose() : void
      {
      }
      
      public function get extraParameter() : String
      {
         return this.var_1541;
      }
      
      public function set extraParameter(param1:String) : void
      {
         this.var_1541 = param1;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get productCode() : String
      {
         return this.var_1940;
      }
      
      public function get price() : int
      {
         return this.var_1726;
      }
      
      public function get upgrade() : Boolean
      {
         return this.var_2669;
      }
      
      public function get vip() : Boolean
      {
         return this.var_2666;
      }
      
      public function get periods() : int
      {
         return this.var_2670;
      }
      
      public function get daysLeftAfterPurchase() : int
      {
         return this.var_2668;
      }
      
      public function get year() : int
      {
         return this.var_2665;
      }
      
      public function get month() : int
      {
         return this.var_2667;
      }
      
      public function get day() : int
      {
         return this.var_2672;
      }
      
      public function get priceInActivityPoints() : int
      {
         return 0;
      }
      
      public function get activityPointType() : int
      {
         return Purse.const_209;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1726;
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_353;
      }
      
      public function get priceType() : String
      {
         return Offer.const_899;
      }
      
      public function get productContainer() : IProductContainer
      {
         return null;
      }
      
      public function get localizationId() : String
      {
         return this.var_1940;
      }
      
      public function set page(param1:ICatalogPage) : void
      {
         this.var_353 = param1;
      }
      
      public function get upgradeHcPeriodToVip() : Boolean
      {
         return this.var_2671;
      }
      
      public function set upgradeHcPeriodToVip(param1:Boolean) : void
      {
         this.var_2671 = param1;
      }
   }
}
