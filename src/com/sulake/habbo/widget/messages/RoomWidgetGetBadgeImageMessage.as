package com.sulake.habbo.widget.messages
{
   public class RoomWidgetGetBadgeImageMessage extends RoomWidgetMessage
   {
      
      public static const const_898:String = "RWGOI_MESSAGE_GET_BADGE_IMAGE";
       
      
      private var var_294:String = "";
      
      public function RoomWidgetGetBadgeImageMessage(param1:String)
      {
         super(const_898);
         this.var_294 = param1;
      }
      
      public function get badgeId() : String
      {
         return this.var_294;
      }
   }
}
