package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_616:String;
      
      private var var_2476:String;
      
      private var var_935:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_616 = param1;
         this.var_935 = param2;
         this.var_2476 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_616;
      }
      
      public function get race() : String
      {
         return this.var_2476;
      }
      
      public function get gender() : String
      {
         return this.var_935;
      }
   }
}
