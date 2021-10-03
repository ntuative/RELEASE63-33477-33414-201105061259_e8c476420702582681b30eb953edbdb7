package com.sulake.habbo.catalog.purse
{
   import flash.utils.Dictionary;
   
   public class Purse implements IPurse
   {
      
      public static const const_209:int = 0;
       
      
      private var var_1871:int = 0;
      
      private var var_1539:Dictionary;
      
      private var var_2004:int = 0;
      
      private var var_2005:int = 0;
      
      private var var_2546:Boolean = false;
      
      private var var_2632:int = 0;
      
      private var var_2633:int = 0;
      
      public function Purse()
      {
         this.var_1539 = new Dictionary();
         super();
      }
      
      public function get credits() : int
      {
         return this.var_1871;
      }
      
      public function set credits(param1:int) : void
      {
         this.var_1871 = param1;
      }
      
      public function get clubDays() : int
      {
         return this.var_2004;
      }
      
      public function set clubDays(param1:int) : void
      {
         this.var_2004 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return this.var_2005;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         this.var_2005 = param1;
      }
      
      public function get hasClubLeft() : Boolean
      {
         return this.var_2004 > 0 || this.var_2005 > 0;
      }
      
      public function get isVIP() : Boolean
      {
         return this.var_2546;
      }
      
      public function set isVIP(param1:Boolean) : void
      {
         this.var_2546 = param1;
      }
      
      public function get pastClubDays() : int
      {
         return this.var_2632;
      }
      
      public function set pastClubDays(param1:int) : void
      {
         this.var_2632 = param1;
      }
      
      public function get pastVipDays() : int
      {
         return this.var_2633;
      }
      
      public function set pastVipDays(param1:int) : void
      {
         this.var_2633 = param1;
      }
      
      public function get activityPoints() : Dictionary
      {
         return this.var_1539;
      }
      
      public function set activityPoints(param1:Dictionary) : void
      {
         this.var_1539 = param1;
      }
      
      public function getActivityPointsForType(param1:int) : int
      {
         return this.var_1539[param1];
      }
   }
}
