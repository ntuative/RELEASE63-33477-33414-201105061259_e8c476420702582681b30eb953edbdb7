package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_2271:int = 0;
      
      private var var_1545:String = "";
      
      private var var_2011:String = "";
      
      private var var_2272:String = "";
      
      private var var_2269:String = "";
      
      private var var_1706:int = 0;
      
      private var var_2270:int = 0;
      
      private var var_2268:int = 0;
      
      private var var_1546:int = 0;
      
      private var var_2267:int = 0;
      
      private var var_1548:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         this.var_2271 = param1;
         this.var_1545 = param2;
         this.var_2011 = param3;
         this.var_2272 = param4;
         this.var_2269 = param5;
         if(param6)
         {
            this.var_1706 = 1;
         }
         else
         {
            this.var_1706 = 0;
         }
         this.var_2270 = param7;
         this.var_2268 = param8;
         this.var_1546 = param9;
         this.var_2267 = param10;
         this.var_1548 = param11;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2271,this.var_1545,this.var_2011,this.var_2272,this.var_2269,this.var_1706,this.var_2270,this.var_2268,this.var_1546,this.var_2267,this.var_1548];
      }
   }
}
