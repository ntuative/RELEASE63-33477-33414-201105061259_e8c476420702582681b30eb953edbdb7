package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetMultiColoursEvent extends Event
   {
       
      
      private var var_1052:Array;
      
      private var var_2524:String;
      
      private var var_2523:String;
      
      private var var_2525:String;
      
      public function CatalogWidgetMultiColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_MULTI_COLOUR_ARRAY,param5,param6);
         this.var_1052 = param1;
         this.var_2524 = param2;
         this.var_2523 = param3;
         this.var_2525 = param4;
      }
      
      public function get colours() : Array
      {
         return this.var_1052;
      }
      
      public function get backgroundAssetName() : String
      {
         return this.var_2524;
      }
      
      public function get colourAssetName() : String
      {
         return this.var_2523;
      }
      
      public function get chosenColourAssetName() : String
      {
         return this.var_2525;
      }
   }
}
