package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var _userId:int;
      
      private var _userName:String;
      
      private var var_2895:int;
      
      private var var_2897:int;
      
      private var var_827:Boolean;
      
      private var var_2896:int;
      
      private var var_2893:int;
      
      private var var_2894:int;
      
      private var var_2898:int;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         this._userId = param1.readInteger();
         this._userName = param1.readString();
         this.var_2895 = param1.readInteger();
         this.var_2897 = param1.readInteger();
         this.var_827 = param1.readBoolean();
         this.var_2896 = param1.readInteger();
         this.var_2893 = param1.readInteger();
         this.var_2894 = param1.readInteger();
         this.var_2898 = param1.readInteger();
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get userName() : String
      {
         return this._userName;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return this.var_2895;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return this.var_2897;
      }
      
      public function get online() : Boolean
      {
         return this.var_827;
      }
      
      public function get cfhCount() : int
      {
         return this.var_2896;
      }
      
      public function get abusiveCfhCount() : int
      {
         return this.var_2893;
      }
      
      public function get cautionCount() : int
      {
         return this.var_2894;
      }
      
      public function get banCount() : int
      {
         return this.var_2898;
      }
   }
}
