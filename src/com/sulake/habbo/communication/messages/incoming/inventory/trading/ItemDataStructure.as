package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2261:int;
      
      private var var_1465:String;
      
      private var var_2430:int;
      
      private var var_2432:int;
      
      private var _category:int;
      
      private var var_2154:String;
      
      private var var_1571:int;
      
      private var var_2434:int;
      
      private var var_2431:int;
      
      private var var_2433:int;
      
      private var var_2429:int;
      
      private var var_2428:Boolean;
      
      private var var_3025:int;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         this.var_2261 = param1;
         this.var_1465 = param2;
         this.var_2430 = param3;
         this.var_2432 = param4;
         this._category = param5;
         this.var_2154 = param6;
         this.var_1571 = param7;
         this.var_2434 = param8;
         this.var_2431 = param9;
         this.var_2433 = param10;
         this.var_2429 = param11;
         this.var_2428 = param12;
      }
      
      public function get itemID() : int
      {
         return this.var_2261;
      }
      
      public function get itemType() : String
      {
         return this.var_1465;
      }
      
      public function get roomItemID() : int
      {
         return this.var_2430;
      }
      
      public function get itemTypeID() : int
      {
         return this.var_2432;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2154;
      }
      
      public function get extra() : int
      {
         return this.var_1571;
      }
      
      public function get timeToExpiration() : int
      {
         return this.var_2434;
      }
      
      public function get creationDay() : int
      {
         return this.var_2431;
      }
      
      public function get creationMonth() : int
      {
         return this.var_2433;
      }
      
      public function get creationYear() : int
      {
         return this.var_2429;
      }
      
      public function get groupable() : Boolean
      {
         return this.var_2428;
      }
      
      public function get songID() : int
      {
         return this.var_1571;
      }
   }
}
