package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionUserFigureUpdateEvent extends RoomSessionEvent
   {
      
      public static const const_178:String = "RSUBE_FIGURE";
       
      
      private var _userId:int = 0;
      
      private var var_616:String = "";
      
      private var var_935:String = "";
      
      private var var_2108:String = "";
      
      private var var_2405:int;
      
      public function RoomSessionUserFigureUpdateEvent(param1:IRoomSession, param2:int, param3:String, param4:String, param5:String, param6:int, param7:Boolean = false, param8:Boolean = false)
      {
         super(const_178,param1,param7,param8);
         this._userId = param2;
         this.var_616 = param3;
         this.var_935 = param4;
         this.var_2108 = param5;
         this.var_2405 = param6;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
      
      public function get figure() : String
      {
         return this.var_616;
      }
      
      public function get gender() : String
      {
         return this.var_935;
      }
      
      public function get customInfo() : String
      {
         return this.var_2108;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2405;
      }
   }
}
