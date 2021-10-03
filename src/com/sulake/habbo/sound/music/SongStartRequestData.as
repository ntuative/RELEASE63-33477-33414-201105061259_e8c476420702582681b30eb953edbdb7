package com.sulake.habbo.sound.music
{
   import flash.utils.getTimer;
   
   public class SongStartRequestData
   {
       
      
      private var var_1766:int;
      
      private var var_1660:Number;
      
      private var var_2212:Number;
      
      private var var_2210:int;
      
      private var var_2209:Number;
      
      private var var_2211:Number;
      
      public function SongStartRequestData(param1:int, param2:Number, param3:Number, param4:Number = 2.0, param5:Number = 1.0)
      {
         super();
         this.var_1766 = param1;
         this.var_1660 = param2;
         this.var_2212 = param3;
         this.var_2209 = param4;
         this.var_2211 = param5;
         this.var_2210 = getTimer();
      }
      
      public function get songId() : int
      {
         return this.var_1766;
      }
      
      public function get startPos() : Number
      {
         if(this.var_1660 < 0)
         {
            return 0;
         }
         return this.var_1660 + (getTimer() - this.var_2210) / 1000;
      }
      
      public function get playLength() : Number
      {
         return this.var_2212;
      }
      
      public function get fadeInSeconds() : Number
      {
         return this.var_2209;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return this.var_2211;
      }
   }
}
