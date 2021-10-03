package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_65:String = "i";
      
      public static const const_84:String = "s";
      
      public static const const_220:String = "e";
       
      
      private var var_1522:String;
      
      private var var_2722:int;
      
      private var var_1235:String;
      
      private var _productCount:int;
      
      private var var_1969:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1522 = param1.readString();
         this.var_2722 = param1.readInteger();
         this.var_1235 = param1.readString();
         this._productCount = param1.readInteger();
         this.var_1969 = param1.readInteger();
      }
      
      public function get productType() : String
      {
         return this.var_1522;
      }
      
      public function get furniClassId() : int
      {
         return this.var_2722;
      }
      
      public function get extraParam() : String
      {
         return this.var_1235;
      }
      
      public function get productCount() : int
      {
         return this._productCount;
      }
      
      public function get expiration() : int
      {
         return this.var_1969;
      }
   }
}
