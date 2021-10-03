package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2492:String;
      
      private var var_2491:Class;
      
      private var var_2493:Class;
      
      private var var_1836:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2492 = param1;
         this.var_2491 = param2;
         this.var_2493 = param3;
         if(rest == null)
         {
            this.var_1836 = new Array();
         }
         else
         {
            this.var_1836 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2492;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2491;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2493;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1836;
      }
   }
}
