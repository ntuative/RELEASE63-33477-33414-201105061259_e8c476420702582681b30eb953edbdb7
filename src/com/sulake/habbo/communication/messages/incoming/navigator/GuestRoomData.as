package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_400:int;
      
      private var var_811:Boolean;
      
      private var var_960:String;
      
      private var _ownerName:String;
      
      private var var_2348:int;
      
      private var var_2440:int;
      
      private var var_2444:int;
      
      private var var_1650:String;
      
      private var var_2442:int;
      
      private var var_2443:Boolean;
      
      private var var_719:int;
      
      private var var_1481:int;
      
      private var var_2441:String;
      
      private var var_889:Array;
      
      private var var_2446:RoomThumbnailData;
      
      private var var_2347:Boolean;
      
      private var var_2445:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_889 = new Array();
         super();
         this.var_400 = param1.readInteger();
         this.var_811 = param1.readBoolean();
         this.var_960 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2348 = param1.readInteger();
         this.var_2440 = param1.readInteger();
         this.var_2444 = param1.readInteger();
         this.var_1650 = param1.readString();
         this.var_2442 = param1.readInteger();
         this.var_2443 = param1.readBoolean();
         this.var_719 = param1.readInteger();
         this.var_1481 = param1.readInteger();
         this.var_2441 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_889.push(_loc4_);
            _loc3_++;
         }
         this.var_2446 = new RoomThumbnailData(param1);
         this.var_2347 = param1.readBoolean();
         this.var_2445 = param1.readBoolean();
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
      
      public function get flatId() : int
      {
         return this.var_400;
      }
      
      public function get event() : Boolean
      {
         return this.var_811;
      }
      
      public function get roomName() : String
      {
         return this.var_960;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2348;
      }
      
      public function get userCount() : int
      {
         return this.var_2440;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2444;
      }
      
      public function get description() : String
      {
         return this.var_1650;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2442;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2443;
      }
      
      public function get score() : int
      {
         return this.var_719;
      }
      
      public function get categoryId() : int
      {
         return this.var_1481;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2441;
      }
      
      public function get tags() : Array
      {
         return this.var_889;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2446;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2347;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2445;
      }
   }
}
