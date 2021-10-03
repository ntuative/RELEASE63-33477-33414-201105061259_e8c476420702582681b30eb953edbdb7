package com.sulake.habbo.quest
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestController implements IDisposable, IUpdateReceiver
   {
       
      
      private var _questEngine:HabboQuestEngine;
      
      private var var_618:QuestsList;
      
      private var var_519:QuestDetails;
      
      private var _questCompleted:QuestCompleted;
      
      private var var_365:QuestTracker;
      
      private var var_940:CampaignCompleted;
      
      public function QuestController(param1:HabboQuestEngine)
      {
         super();
         this._questEngine = param1;
         this.var_365 = new QuestTracker(this._questEngine);
         this.var_618 = new QuestsList(this._questEngine);
         this.var_519 = new QuestDetails(this._questEngine);
         this._questCompleted = new QuestCompleted(this._questEngine);
         this.var_940 = new CampaignCompleted(this._questEngine);
      }
      
      public function onToolbarClick() : void
      {
         this.var_618.onToolbarClick();
      }
      
      public function onQuests(param1:Array, param2:Boolean) : void
      {
         this.var_618.onQuests(param1,param2);
      }
      
      public function onQuest(param1:QuestMessageData) : void
      {
         this.var_365.onQuest(param1);
         this.var_519.onQuest(param1);
         this._questCompleted.onQuest(param1);
      }
      
      public function onQuestCompleted(param1:QuestMessageData) : void
      {
         this.var_365.onQuestCompleted(param1);
         this.var_519.onQuestCompleted(param1);
         this._questCompleted.onQuestCompleted(param1);
      }
      
      public function onQuestCancelled() : void
      {
         this.var_365.onQuestCancelled();
         this.var_519.onQuestCancelled();
         this._questCompleted.onQuestCancelled();
      }
      
      public function onRoomEnter() : void
      {
         this.var_365.onRoomEnter();
      }
      
      public function onRoomExit() : void
      {
         this.var_618.onRoomExit();
         this.var_365.onRoomExit();
         this.var_519.onRoomExit();
         this.var_940.onRoomExit();
      }
      
      public function update(param1:uint) : void
      {
         this._questCompleted.update(param1);
         this.var_365.update(param1);
      }
      
      public function dispose() : void
      {
         this._questEngine = null;
         if(this.var_618)
         {
            this.var_618.dispose();
            this.var_618 = null;
         }
         if(this.var_365)
         {
            this.var_365.dispose();
            this.var_365 = null;
         }
         if(this.var_519)
         {
            this.var_519.dispose();
            this.var_519 = null;
         }
         if(this._questCompleted)
         {
            this._questCompleted.dispose();
            this._questCompleted = null;
         }
         if(this.var_940)
         {
            this.var_940.dispose();
            this.var_940 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._questEngine == null;
      }
      
      public function get questsList() : QuestsList
      {
         return this.var_618;
      }
      
      public function get questDetails() : QuestDetails
      {
         return this.var_519;
      }
      
      public function get questTracker() : QuestTracker
      {
         return this.var_365;
      }
      
      public function get campaignCompleted() : CampaignCompleted
      {
         return this.var_940;
      }
   }
}
