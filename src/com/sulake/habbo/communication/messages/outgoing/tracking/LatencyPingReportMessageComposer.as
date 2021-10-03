package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LatencyPingReportMessageComposer implements IMessageComposer
   {
       
      
      private var var_2213:int;
      
      private var var_2214:int;
      
      private var var_2215:int;
      
      public function LatencyPingReportMessageComposer(param1:int, param2:int, param3:int)
      {
         super();
         this.var_2213 = param1;
         this.var_2214 = param2;
         this.var_2215 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [this.var_2213,this.var_2214,this.var_2215];
      }
      
      public function dispose() : void
      {
      }
   }
}
