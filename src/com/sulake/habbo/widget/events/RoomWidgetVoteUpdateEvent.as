package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_161:String = "RWPUE_VOTE_QUESTION";
      
      public static const const_148:String = "RWPUE_VOTE_RESULT";
       
      
      private var var_1206:String;
      
      private var var_1511:Array;
      
      private var var_1186:Array;
      
      private var var_2023:int;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_1206 = param2;
         this.var_1511 = param3;
         this.var_1186 = param4;
         if(this.var_1186 == null)
         {
            this.var_1186 = [];
         }
         this.var_2023 = param5;
      }
      
      public function get question() : String
      {
         return this.var_1206;
      }
      
      public function get choices() : Array
      {
         return this.var_1511.slice();
      }
      
      public function get votes() : Array
      {
         return this.var_1186.slice();
      }
      
      public function get totalVotes() : int
      {
         return this.var_2023;
      }
   }
}
