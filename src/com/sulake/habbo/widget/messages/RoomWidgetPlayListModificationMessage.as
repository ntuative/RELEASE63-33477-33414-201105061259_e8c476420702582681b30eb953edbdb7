package com.sulake.habbo.widget.messages
{
   public class RoomWidgetPlayListModificationMessage extends RoomWidgetMessage
   {
      
      public static const const_760:String = "RWPLAM_ADD_TO_PLAYLIST";
      
      public static const const_735:String = "RWPLAM_REMOVE_FROM_PLAYLIST";
       
      
      private var var_2864:int;
      
      private var var_2865:int;
      
      public function RoomWidgetPlayListModificationMessage(param1:String, param2:int = -1, param3:int = -1)
      {
         super(param1);
         this.var_2865 = param2;
         this.var_2864 = param3;
      }
      
      public function get diskId() : int
      {
         return this.var_2864;
      }
      
      public function get slotNumber() : int
      {
         return this.var_2865;
      }
   }
}
