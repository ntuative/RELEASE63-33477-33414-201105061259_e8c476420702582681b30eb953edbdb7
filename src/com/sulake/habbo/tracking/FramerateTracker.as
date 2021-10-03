package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class FramerateTracker
   {
       
      
      private var var_1744:int;
      
      private var var_2316:int;
      
      private var var_762:int;
      
      private var var_554:Number;
      
      private var var_2317:Boolean;
      
      private var var_2315:int;
      
      private var var_1745:int;
      
      public function FramerateTracker()
      {
         super();
      }
      
      public function get frameRate() : int
      {
         return Math.round(1000 / this.var_554);
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2316 = int(param1.getKey("tracking.framerate.reportInterval.seconds","300")) * 1000;
         this.var_2315 = int(param1.getKey("tracking.framerate.maximumEvents","5"));
         this.var_2317 = true;
      }
      
      public function trackUpdate(param1:uint, param2:IHabboTracking, param3:int) : void
      {
         var _loc4_:Number = NaN;
         ++this.var_762;
         if(this.var_762 == 1)
         {
            this.var_554 = param1;
            this.var_1744 = param3;
         }
         else
         {
            _loc4_ = Number(this.var_762);
            this.var_554 = this.var_554 * (_loc4_ - 1) / _loc4_ + Number(param1) / _loc4_;
         }
         if(this.var_2317 && param3 - this.var_1744 >= this.var_2316)
         {
            this.var_762 = 0;
            if(this.var_1745 < this.var_2315)
            {
               param2.track("performance","averageFramerate",this.frameRate);
               ++this.var_1745;
               this.var_1744 = param3;
            }
         }
      }
      
      public function dispose() : void
      {
      }
   }
}
