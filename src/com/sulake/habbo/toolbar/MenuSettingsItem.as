package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_2353:String;
      
      private var var_2471:Array;
      
      private var var_2472:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         this.var_2353 = param1;
         this.var_2471 = param2;
         this.var_2472 = param3;
      }
      
      public function get menuId() : String
      {
         return this.var_2353;
      }
      
      public function get yieldList() : Array
      {
         return this.var_2471;
      }
      
      public function get lockToIcon() : Boolean
      {
         return this.var_2472;
      }
   }
}
