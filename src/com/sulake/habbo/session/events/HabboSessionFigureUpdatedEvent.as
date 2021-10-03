package com.sulake.habbo.session.events
{
   import flash.events.Event;
   
   public class HabboSessionFigureUpdatedEvent extends Event
   {
      
      public static const const_319:String = "HABBO_SESSION_FIGURE_UPDATE";
       
      
      private var _userId:int;
      
      private var var_616:String;
      
      private var var_935:String;
      
      public function HabboSessionFigureUpdatedEvent(param1:int, param2:String, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(const_319,param4,param5);
         this._userId = param1;
         this.var_616 = param2;
         this.var_935 = param3;
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
   }
}
