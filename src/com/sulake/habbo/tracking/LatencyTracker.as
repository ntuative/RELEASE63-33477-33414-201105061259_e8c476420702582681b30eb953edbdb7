package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.tracking.LatencyPingResponseMessageEvent;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingReportMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LatencyPingRequestMessageComposer;
   import com.sulake.habbo.communication.messages.parser.tracking.LatencyPingResponseMessageParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LatencyTracker
   {
       
      
      private var _state:Boolean = false;
      
      private var var_183:IHabboConfigurationManager;
      
      private var _communication:IHabboCommunicationManager;
      
      private var _connection:IConnection;
      
      private var var_1387:int = 0;
      
      private var var_1674:int = 0;
      
      private var var_1672:int = 0;
      
      private var var_2225:int = 0;
      
      private var var_1673:int = 0;
      
      private var var_1671:int = 0;
      
      private var var_219:Array;
      
      private var var_588:Map;
      
      public function LatencyTracker()
      {
         super();
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         this.var_183 = param1;
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         this._communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      public function dispose() : void
      {
         this._state = false;
         this.var_183 = null;
         this._communication = null;
         this._connection = null;
         if(this.var_588 != null)
         {
            this.var_588.dispose();
            this.var_588 = null;
         }
         this.var_219 = null;
      }
      
      public function init() : void
      {
         if(this.var_183 == null || this._communication == null || this._connection == null)
         {
            return;
         }
         this.var_1674 = int(this.var_183.getKey("latencytest.interval"));
         this.var_1672 = int(this.var_183.getKey("latencytest.report.index"));
         this.var_2225 = int(this.var_183.getKey("latencytest.report.delta"));
         this._communication.addHabboConnectionMessageEvent(new LatencyPingResponseMessageEvent(this.onPingResponse));
         if(this.var_1674 < 1)
         {
            return;
         }
         this.var_588 = new Map();
         this.var_219 = new Array();
         this._state = true;
      }
      
      public function update(param1:uint, param2:int) : void
      {
         if(!this._state)
         {
            return;
         }
         if(param2 - this.var_1673 > this.var_1674)
         {
            this.testLatency();
         }
      }
      
      private function testLatency() : void
      {
         this.var_1673 = getTimer();
         this.var_588.add(this.var_1387,this.var_1673);
         this._connection.send(new LatencyPingRequestMessageComposer(this.var_1387));
         ++this.var_1387;
      }
      
      private function onPingResponse(param1:IMessageEvent) : void
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:* = null;
         if(this.var_588 == null || this.var_219 == null)
         {
            return;
         }
         var _loc2_:LatencyPingResponseMessageParser = (param1 as LatencyPingResponseMessageEvent).getParser();
         var _loc3_:int = this.var_588.getValue(_loc2_.requestId);
         this.var_588.remove(_loc2_.requestId);
         var _loc4_:int = getTimer() - _loc3_;
         this.var_219.push(_loc4_);
         if(this.var_219.length == this.var_1672 && this.var_1672 > 0)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = 0;
            _loc8_ = 0;
            while(_loc8_ < this.var_219.length)
            {
               _loc5_ += this.var_219[_loc8_];
               _loc8_++;
            }
            _loc9_ = _loc5_ / this.var_219.length;
            _loc8_ = 0;
            while(_loc8_ < this.var_219.length)
            {
               if(this.var_219[_loc8_] < _loc9_ * 2)
               {
                  _loc6_ += this.var_219[_loc8_];
                  _loc7_++;
               }
               _loc8_++;
            }
            if(_loc7_ == 0)
            {
               this.var_219 = [];
               return;
            }
            _loc10_ = _loc6_ / _loc7_;
            if(Math.abs(_loc9_ - this.var_1671) > this.var_2225 || this.var_1671 == 0)
            {
               this.var_1671 = _loc9_;
               _loc11_ = new LatencyPingReportMessageComposer(_loc9_,_loc10_,this.var_219.length);
               this._connection.send(_loc11_);
            }
            this.var_219 = [];
         }
      }
   }
}
