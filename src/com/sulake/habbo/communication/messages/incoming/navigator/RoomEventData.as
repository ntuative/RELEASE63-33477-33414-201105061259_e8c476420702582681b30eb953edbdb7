package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var var_1144:Boolean;
      
      private var var_2398:int;
      
      private var var_2394:String;
      
      private var var_400:int;
      
      private var var_2393:int;
      
      private var var_2395:String;
      
      private var var_2396:String;
      
      private var var_2397:String;
      
      private var var_889:Array;
      
      private var _disposed:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         this.var_889 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1144 = false;
            return;
         }
         this.var_1144 = true;
         this.var_2398 = int(_loc2_);
         this.var_2394 = param1.readString();
         this.var_400 = int(param1.readString());
         this.var_2393 = param1.readInteger();
         this.var_2395 = param1.readString();
         this.var_2396 = param1.readString();
         this.var_2397 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            this.var_889.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_889 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get ownerAvatarId() : int
      {
         return this.var_2398;
      }
      
      public function get ownerAvatarName() : String
      {
         return this.var_2394;
      }
      
      public function get flatId() : int
      {
         return this.var_400;
      }
      
      public function get eventType() : int
      {
         return this.var_2393;
      }
      
      public function get eventName() : String
      {
         return this.var_2395;
      }
      
      public function get eventDescription() : String
      {
         return this.var_2396;
      }
      
      public function get creationTime() : String
      {
         return this.var_2397;
      }
      
      public function get tags() : Array
      {
         return this.var_889;
      }
      
      public function get exists() : Boolean
      {
         return this.var_1144;
      }
   }
}
