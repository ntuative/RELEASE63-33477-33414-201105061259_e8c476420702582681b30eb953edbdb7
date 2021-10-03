package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboAchievementNotificationMessageParser implements IMessageParser
   {
       
      
      private var _type:int;
      
      private var var_1377:int;
      
      private var var_2035:int;
      
      private var var_2200:int;
      
      private var var_1659:int;
      
      private var var_1376:int;
      
      private var var_2192:String = "";
      
      private var var_2498:String = "";
      
      private var var_2499:int;
      
      public function HabboAchievementNotificationMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._type = param1.readInteger();
         this.var_1377 = param1.readInteger();
         this.var_2192 = param1.readString();
         this.var_2035 = param1.readInteger();
         this.var_2200 = param1.readInteger();
         this.var_1659 = param1.readInteger();
         this.var_1376 = param1.readInteger();
         this.var_2499 = param1.readInteger();
         this.var_2498 = param1.readString();
         return true;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get level() : int
      {
         return this.var_1377;
      }
      
      public function get points() : int
      {
         return this.var_2035;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2200;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1659;
      }
      
      public function get bonusPoints() : int
      {
         return this.var_1376;
      }
      
      public function get badgeID() : String
      {
         return this.var_2192;
      }
      
      public function get achievementID() : int
      {
         return this.var_2499;
      }
      
      public function get removedBadgeID() : String
      {
         return this.var_2498;
      }
   }
}
