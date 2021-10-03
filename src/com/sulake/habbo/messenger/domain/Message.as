package com.sulake.habbo.messenger.domain
{
   public class Message
   {
      
      public static const const_837:int = 1;
      
      public static const const_767:int = 2;
      
      public static const const_937:int = 3;
      
      public static const const_1138:int = 4;
      
      public static const const_690:int = 5;
      
      public static const const_1258:int = 6;
       
      
      private var _type:int;
      
      private var var_1112:int;
      
      private var var_2373:String;
      
      private var var_2465:String;
      
      public function Message(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         this._type = param1;
         this.var_1112 = param2;
         this.var_2373 = param3;
         this.var_2465 = param4;
      }
      
      public function get messageText() : String
      {
         return this.var_2373;
      }
      
      public function get time() : String
      {
         return this.var_2465;
      }
      
      public function get senderId() : int
      {
         return this.var_1112;
      }
      
      public function get type() : int
      {
         return this._type;
      }
   }
}
