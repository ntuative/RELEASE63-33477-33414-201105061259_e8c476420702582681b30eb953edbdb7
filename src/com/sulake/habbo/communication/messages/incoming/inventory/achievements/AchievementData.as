package com.sulake.habbo.communication.messages.incoming.inventory.achievements
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class AchievementData
   {
       
      
      private var _type:int;
      
      private var var_1377:int;
      
      private var var_294:String;
      
      private var var_2486:int;
      
      private var var_2200:int;
      
      private var var_1659:int;
      
      private var var_2488:int;
      
      private var var_2489:Boolean;
      
      private var _category:String;
      
      private var var_2487:int;
      
      public function AchievementData(param1:IMessageDataWrapper)
      {
         super();
         this._type = param1.readInteger();
         this.var_1377 = param1.readInteger();
         this.var_294 = param1.readString();
         this.var_2486 = param1.readInteger();
         this.var_2200 = param1.readInteger();
         this.var_1659 = param1.readInteger();
         this.var_2488 = param1.readInteger();
         this.var_2489 = param1.readBoolean();
         this._category = param1.readString();
         this.var_2487 = param1.readInteger();
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get badgeId() : String
      {
         return this.var_294;
      }
      
      public function get level() : int
      {
         return this.var_1377;
      }
      
      public function get scoreLimit() : int
      {
         return this.var_2486;
      }
      
      public function get levelRewardPoints() : int
      {
         return this.var_2200;
      }
      
      public function get levelRewardPointType() : int
      {
         return this.var_1659;
      }
      
      public function get currentPoints() : int
      {
         return this.var_2488;
      }
      
      public function get finalLevel() : Boolean
      {
         return this.var_2489;
      }
      
      public function get category() : String
      {
         return this._category;
      }
      
      public function get levelCount() : int
      {
         return this.var_2487;
      }
   }
}
