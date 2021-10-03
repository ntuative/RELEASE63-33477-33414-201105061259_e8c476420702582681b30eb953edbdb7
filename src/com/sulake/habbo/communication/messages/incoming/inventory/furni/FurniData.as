package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2699:int;
      
      private var var_1465:String;
      
      private var _objId:int;
      
      private var var_2083:int;
      
      private var _category:int;
      
      private var var_2154:String;
      
      private var var_2870:Boolean;
      
      private var var_2871:Boolean;
      
      private var var_2869:Boolean;
      
      private var var_2422:Boolean;
      
      private var var_2490:int;
      
      private var var_1571:int;
      
      private var var_1787:String = "";
      
      private var var_1766:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2699 = param1;
         this.var_1465 = param2;
         this._objId = param3;
         this.var_2083 = param4;
         this._category = param5;
         this.var_2154 = param6;
         this.var_2870 = param7;
         this.var_2871 = param8;
         this.var_2869 = param9;
         this.var_2422 = param10;
         this.var_2490 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_1787 = param1;
         this.var_1571 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2699;
      }
      
      public function get itemType() : String
      {
         return this.var_1465;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2083;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2154;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2870;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2871;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2869;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2422;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2490;
      }
      
      public function get slotId() : String
      {
         return this.var_1787;
      }
      
      public function get songId() : int
      {
         return this.var_1766;
      }
      
      public function get extra() : int
      {
         return this.var_1571;
      }
   }
}
