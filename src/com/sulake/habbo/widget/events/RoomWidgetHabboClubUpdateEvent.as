package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_285:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_2357:int = 0;
      
      private var var_2356:int = 0;
      
      private var var_2358:int = 0;
      
      private var var_2355:Boolean = false;
      
      private var var_2240:int;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:int, param6:Boolean = false, param7:Boolean = false)
      {
         super(const_285,param6,param7);
         this.var_2357 = param1;
         this.var_2356 = param2;
         this.var_2358 = param3;
         this.var_2355 = param4;
         this.var_2240 = param5;
      }
      
      public function get daysLeft() : int
      {
         return this.var_2357;
      }
      
      public function get periodsLeft() : int
      {
         return this.var_2356;
      }
      
      public function get pastPeriods() : int
      {
         return this.var_2358;
      }
      
      public function get allowClubDances() : Boolean
      {
         return this.var_2355;
      }
      
      public function get clubLevel() : int
      {
         return this.var_2240;
      }
   }
}
