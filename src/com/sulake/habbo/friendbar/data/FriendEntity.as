package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_935:int;
      
      private var var_827:Boolean;
      
      private var var_1767:Boolean;
      
      private var var_616:String;
      
      private var var_1481:int;
      
      private var var_1768:String;
      
      private var var_1770:String;
      
      private var var_1769:String;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1769 = param3;
         this.var_1768 = param4;
         this.var_935 = param5;
         this.var_827 = param6;
         this.var_1767 = param7;
         this.var_616 = param8;
         this.var_1481 = param9;
         this.var_1770 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_935;
      }
      
      public function get online() : Boolean
      {
         return this.var_827;
      }
      
      public function get allowFollow() : Boolean
      {
         return this.var_1767;
      }
      
      public function get figure() : String
      {
         return this.var_616;
      }
      
      public function get categoryId() : int
      {
         return this.var_1481;
      }
      
      public function get motto() : String
      {
         return this.var_1768;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1770;
      }
      
      public function get realName() : String
      {
         return this.var_1769;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_935 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_827 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this.var_1767 = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_616 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1481 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1768 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1770 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1769 = param1;
      }
   }
}
