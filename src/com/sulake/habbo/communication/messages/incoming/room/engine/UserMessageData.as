package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1283:String = "M";
      
      public static const const_1565:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_165:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_419:int = 0;
      
      private var _name:String = "";
      
      private var var_1640:int = 0;
      
      private var var_1084:String = "";
      
      private var var_616:String = "";
      
      private var var_2410:String = "";
      
      private var var_2405:int;
      
      private var var_2409:int = 0;
      
      private var var_2406:String = "";
      
      private var var_2407:int = 0;
      
      private var var_2411:int = 0;
      
      private var var_2408:String = "";
      
      private var var_179:Boolean = false;
      
      public function UserMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_179 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_179)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_165;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_179)
         {
            this.var_165 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_166;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_179)
         {
            this.var_166 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_419;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_179)
         {
            this.var_419 = param1;
         }
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_179)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1640;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_179)
         {
            this.var_1640 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_1084;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_179)
         {
            this.var_1084 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_616;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_179)
         {
            this.var_616 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2410;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_179)
         {
            this.var_2410 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2405;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_179)
         {
            this.var_2405 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2409;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_179)
         {
            this.var_2409 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2406;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_179)
         {
            this.var_2406 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2407;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_179)
         {
            this.var_2407 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2411;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_179)
         {
            this.var_2411 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2408;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_179)
         {
            this.var_2408 = param1;
         }
      }
   }
}
