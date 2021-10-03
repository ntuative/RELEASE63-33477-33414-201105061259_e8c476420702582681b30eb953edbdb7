package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var _id:int = 0;
      
      private var var_2259:Boolean = false;
      
      private var var_2256:int = 0;
      
      private var var_2260:int = 0;
      
      private var var_2257:int = 0;
      
      private var var_2258:int = 0;
      
      private var var_165:Number = 0;
      
      private var var_166:Number = 0;
      
      private var var_419:String = "";
      
      private var _type:int = 0;
      
      private var var_3016:String = "";
      
      private var var_1571:int = 0;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_179:Boolean = false;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         this._id = param1;
         this._type = param2;
         this.var_2259 = param3;
      }
      
      public function setReadOnly() : void
      {
         this.var_179 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get isOldFormat() : Boolean
      {
         return this.var_2259;
      }
      
      public function get wallX() : Number
      {
         return this.var_2256;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!this.var_179)
         {
            this.var_2256 = param1;
         }
      }
      
      public function get wallY() : Number
      {
         return this.var_2260;
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!this.var_179)
         {
            this.var_2260 = param1;
         }
      }
      
      public function get localX() : Number
      {
         return this.var_2257;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!this.var_179)
         {
            this.var_2257 = param1;
         }
      }
      
      public function get localY() : Number
      {
         return this.var_2258;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!this.var_179)
         {
            this.var_2258 = param1;
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
      
      public function get dir() : String
      {
         return this.var_419;
      }
      
      public function set dir(param1:String) : void
      {
         if(!this.var_179)
         {
            this.var_419 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_179)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_179)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_179)
         {
            this._data = param1;
         }
      }
   }
}
