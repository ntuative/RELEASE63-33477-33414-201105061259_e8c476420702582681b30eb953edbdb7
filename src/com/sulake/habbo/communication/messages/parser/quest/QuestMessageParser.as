package com.sulake.habbo.communication.messages.parser.quest
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.quest.QuestMessageData;
   
   public class QuestMessageParser implements IMessageParser
   {
       
      
      private var var_352:QuestMessageData;
      
      public function QuestMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         if(this.var_352)
         {
            this.var_352.dispose();
         }
         this.var_352 = null;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_352 = new QuestMessageData(param1);
         return true;
      }
      
      public function get quest() : QuestMessageData
      {
         return this.var_352;
      }
   }
}
