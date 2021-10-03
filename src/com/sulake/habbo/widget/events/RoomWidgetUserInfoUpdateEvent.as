package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_126:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_115:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_775:int = 2;
      
      public static const const_824:int = 3;
      
      public static const const_1566:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1768:String = "";
      
      private var var_2405:int;
      
      private var var_2409:int = 0;
      
      private var var_2411:int = 0;
      
      private var var_616:String = "";
      
      private var var_45:BitmapData = null;
      
      private var var_254:Array;
      
      private var var_1596:int = 0;
      
      private var var_2582:String = "";
      
      private var var_2580:int = 0;
      
      private var var_2581:int = 0;
      
      private var var_2098:Boolean = false;
      
      private var var_1769:String = "";
      
      private var var_2635:Boolean = false;
      
      private var var_2642:Boolean = true;
      
      private var _respectLeft:int = 0;
      
      private var var_2641:Boolean = false;
      
      private var var_2639:Boolean = false;
      
      private var var_2637:Boolean = false;
      
      private var var_2640:Boolean = false;
      
      private var var_2643:Boolean = false;
      
      private var var_2638:Boolean = false;
      
      private var var_2636:int = 0;
      
      private var var_2099:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_254 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1768 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1768;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2405 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2405;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2409 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2409;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2411 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2411;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_616 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_616;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_45 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_254 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_254;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1596 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1596;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2582 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2582;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2635 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2635;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this._respectLeft = param1;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2641 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2641;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2639 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2639;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2637 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2637;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2640 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2640;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2643 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2643;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2638 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2638;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2636 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2636;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2642 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2642;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_2099 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_2099;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2580 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2580;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2581 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2581;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_2098 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_2098;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1769 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1769;
      }
   }
}
