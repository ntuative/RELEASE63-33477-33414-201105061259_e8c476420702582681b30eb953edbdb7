package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2600:int;
      
      private var var_1991:String;
      
      private var var_2689:String;
      
      private var var_2688:Boolean;
      
      private var var_2691:Boolean;
      
      private var var_2692:int;
      
      private var var_2687:String;
      
      private var var_2690:String;
      
      private var var_1769:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2600 = param1.readInteger();
         this.var_1991 = param1.readString();
         this.var_2689 = param1.readString();
         this.var_2688 = param1.readBoolean();
         this.var_2691 = param1.readBoolean();
         param1.readString();
         this.var_2692 = param1.readInteger();
         this.var_2687 = param1.readString();
         this.var_2690 = param1.readString();
         this.var_1769 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2600;
      }
      
      public function get avatarName() : String
      {
         return this.var_1991;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2689;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2688;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2691;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2692;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2687;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2690;
      }
      
      public function get realName() : String
      {
         return this.var_1769;
      }
   }
}
