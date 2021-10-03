package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.catalog.IPurchasableOffer;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer implements IPurchasableOffer
   {
      
      public static const const_1623:String = "pricing_model_unknown";
      
      public static const const_412:String = "pricing_model_single";
      
      public static const const_419:String = "pricing_model_multi";
      
      public static const const_591:String = "pricing_model_bundle";
      
      public static const const_1841:String = "price_type_none";
      
      public static const const_899:String = "price_type_credits";
      
      public static const const_1111:String = "price_type_activitypoints";
      
      public static const const_1205:String = "price_type_credits_and_activitypoints";
       
      
      private var var_851:String;
      
      private var var_1317:String;
      
      private var _offerId:int;
      
      private var var_2080:String;
      
      private var var_1319:int;
      
      private var var_1318:int;
      
      private var var_2079:int;
      
      private var var_353:ICatalogPage;
      
      private var var_691:IProductContainer;
      
      private var var_2880:int;
      
      public function Offer(param1:int, param2:String, param3:int, param4:int, param5:int, param6:Array, param7:ICatalogPage)
      {
         super();
         this._offerId = param1;
         this.var_2080 = param2;
         this.var_1319 = param3;
         this.var_1318 = param4;
         this.var_2079 = param5;
         this.var_353 = param7;
         this.analyzePricingModel(param6);
         this.analyzePriceType();
         this.createProductContainer(param6);
      }
      
      public function get page() : ICatalogPage
      {
         return this.var_353;
      }
      
      public function get offerId() : int
      {
         return this._offerId;
      }
      
      public function get localizationId() : String
      {
         return this.var_2080;
      }
      
      public function get priceInCredits() : int
      {
         return this.var_1319;
      }
      
      public function get priceInActivityPoints() : int
      {
         return this.var_1318;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2079;
      }
      
      public function get productContainer() : IProductContainer
      {
         return this.var_691;
      }
      
      public function get pricingModel() : String
      {
         return this.var_851;
      }
      
      public function get priceType() : String
      {
         return this.var_1317;
      }
      
      public function get previewCallbackId() : int
      {
         return this.var_2880;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         this.var_2880 = param1;
      }
      
      public function dispose() : void
      {
         this._offerId = 0;
         this.var_2080 = "";
         this.var_1319 = 0;
         this.var_1318 = 0;
         this.var_2079 = 0;
         this.var_353 = null;
         if(this.var_691 != null)
         {
            this.var_691.dispose();
            this.var_691 = null;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(this.var_851)
         {
            case const_412:
               this.var_691 = new SingleProductContainer(this,param1);
               break;
            case const_419:
               this.var_691 = new MultiProductContainer(this,param1);
               break;
            case const_591:
               this.var_691 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + this.var_851);
         }
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               this.var_851 = const_412;
            }
            else
            {
               this.var_851 = const_419;
            }
         }
         else if(param1.length > 1)
         {
            this.var_851 = const_591;
         }
         else
         {
            this.var_851 = const_1623;
         }
      }
      
      private function analyzePriceType() : void
      {
         if(this.var_1319 > 0 && this.var_1318 > 0)
         {
            this.var_1317 = const_1205;
         }
         else if(this.var_1319 > 0)
         {
            this.var_1317 = const_899;
         }
         else if(this.var_1318 > 0)
         {
            this.var_1317 = const_1111;
         }
         else
         {
            this.var_1317 = const_1841;
         }
      }
      
      public function clone() : Offer
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc1_:Array = new Array();
         var _loc2_:IProductData = this.var_353.viewer.catalog.getProductData(this.localizationId);
         for each(_loc3_ in this.var_691.products)
         {
            _loc4_ = this.var_353.viewer.catalog.getFurnitureData(_loc3_.productClassId,_loc3_.productType);
            _loc5_ = new Product(_loc3_.productType,_loc3_.productClassId,_loc3_.extraParam,_loc3_.productCount,_loc3_.expiration,_loc2_,_loc4_);
            _loc1_.push(_loc5_);
         }
         return new Offer(this.offerId,this.localizationId,this.priceInCredits,this.priceInActivityPoints,this.activityPointType,_loc1_,this.page);
      }
   }
}
