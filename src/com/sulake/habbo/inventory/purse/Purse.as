package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2004:int = 0;
      
      private var var_2005:int = 0;
      
      private var var_2547:int = 0;
      
      private var var_2545:Boolean = false;
      
      private var var_2546:Boolean = false;
      
      public function Purse()
      {
         super();
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2004 = Math.max(0,param1);
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2005 = Math.max(0,param1);
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         this.var_2547 = Math.max(0,param1);
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         this.var_2545 = param1;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2546 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2004;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2005;
      }
      
      public function get clubPastPeriods() : int
      {
         return this.var_2547;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return this.var_2545;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2546;
      }
   }
}
