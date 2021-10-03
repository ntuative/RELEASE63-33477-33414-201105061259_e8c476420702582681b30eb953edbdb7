package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_616:String;
      
      private var var_1084:String;
      
      private var var_2794:String;
      
      private var var_1769:String;
      
      private var var_2790:int;
      
      private var var_2789:String;
      
      private var var_2791:int;
      
      private var var_2792:int;
      
      private var var_2307:int;
      
      private var _respectLeft:int;
      
      private var var_861:int;
      
      private var var_2793:int;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_616 = param1.readString();
         this.var_1084 = param1.readString();
         this.var_2794 = param1.readString();
         this.var_1769 = param1.readString();
         this.var_2790 = param1.readInteger();
         this.var_2789 = param1.readString();
         this.var_2791 = param1.readInteger();
         this.var_2792 = param1.readInteger();
         this.var_2307 = param1.readInteger();
         this._respectLeft = param1.readInteger();
         this.var_861 = param1.readInteger();
         this.var_2793 = param1.readInteger();
         return true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get figure() : String
      {
         return this.var_616;
      }
      
      public function get sex() : String
      {
         return this.var_1084;
      }
      
      public function get customData() : String
      {
         return this.var_2794;
      }
      
      public function get realName() : String
      {
         return this.var_1769;
      }
      
      public function get tickets() : int
      {
         return this.var_2790;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2789;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2791;
      }
      
      public function get directMail() : int
      {
         return this.var_2792;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2307;
      }
      
      public function get respectLeft() : int
      {
         return this._respectLeft;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_861;
      }
      
      public function get identityId() : int
      {
         return this.var_2793;
      }
   }
}
