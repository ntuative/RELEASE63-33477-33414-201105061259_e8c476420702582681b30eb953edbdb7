package com.sulake.habbo.communication.messages.incoming.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class QuestMessageData
   {
       
      
      private var var_2053:String;
      
      private var var_2837:int;
      
      private var var_2840:int;
      
      private var var_2079:int;
      
      private var _id:int;
      
      private var var_2051:Boolean;
      
      private var _type:String;
      
      private var var_2052:String;
      
      private var _rewardCurrencyAmount:int;
      
      private var var_2054:String;
      
      private var var_2839:int;
      
      private var var_2838:int;
      
      public function QuestMessageData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2053 = param1.readString();
         this.var_2837 = param1.readInteger();
         this.var_2840 = param1.readInteger();
         this.var_2079 = param1.readInteger();
         this._id = param1.readInteger();
         this.var_2051 = param1.readBoolean();
         this._type = param1.readString();
         this.var_2052 = param1.readString();
         this._rewardCurrencyAmount = param1.readInteger();
         this.var_2054 = param1.readString();
         this.var_2839 = param1.readInteger();
         this.var_2838 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         this._id = 0;
         this._type = "";
         this.var_2052 = "";
         this._rewardCurrencyAmount = 0;
      }
      
      public function get campaignCode() : String
      {
         return this.var_2053;
      }
      
      public function get localizationCode() : String
      {
         return this.var_2054;
      }
      
      public function get completedQuestsInCampaign() : int
      {
         return this.var_2837;
      }
      
      public function get questCountInCampaign() : int
      {
         return this.var_2840;
      }
      
      public function get activityPointType() : int
      {
         return this.var_2079;
      }
      
      public function get accepted() : Boolean
      {
         return this.var_2051;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get imageVersion() : String
      {
         return this.var_2052;
      }
      
      public function get rewardCurrencyAmount() : int
      {
         return this._rewardCurrencyAmount;
      }
      
      public function get completedSteps() : int
      {
         return this.var_2839;
      }
      
      public function get totalSteps() : int
      {
         return this.var_2838;
      }
      
      public function getCampaignLocalizationKey() : String
      {
         return "quests." + this.var_2053;
      }
      
      public function getQuestLocalizationKey() : String
      {
         return this.getCampaignLocalizationKey() + "." + this.var_2054;
      }
      
      public function get completedCampaign() : Boolean
      {
         return this._id < 1;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function set accepted(param1:Boolean) : void
      {
         this.var_2051 = param1;
      }
   }
}
