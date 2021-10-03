package com.sulake.habbo.widget.messages
{
   public class RoomWidgetUserActionMessage extends RoomWidgetMessage
   {
      
      public static const const_611:String = "RWUAM_WHISPER_USER";
      
      public static const const_613:String = "RWUAM_IGNORE_USER";
      
      public static const const_483:String = "RWUAM_UNIGNORE_USER";
      
      public static const const_417:String = "RWUAM_KICK_USER";
      
      public static const const_597:String = "RWUAM_BAN_USER";
      
      public static const const_515:String = "RWUAM_SEND_FRIEND_REQUEST";
      
      public static const const_504:String = "RWUAM_RESPECT_USER";
      
      public static const const_579:String = "RWUAM_GIVE_RIGHTS";
      
      public static const const_609:String = "RWUAM_TAKE_RIGHTS";
      
      public static const const_602:String = "RWUAM_START_TRADING";
      
      public static const const_759:String = "RWUAM_OPEN_HOME_PAGE";
      
      public static const const_546:String = "RWUAM_KICK_BOT";
      
      public static const const_605:String = "RWUAM_REPORT";
      
      public static const const_640:String = "RWUAM_PICKUP_PET";
      
      public static const const_1568:String = "RWUAM_TRAIN_PET";
      
      public static const const_582:String = " RWUAM_RESPECT_PET";
      
      public static const const_388:String = "RWUAM_REQUEST_PET_UPDATE";
      
      public static const const_842:String = "RWUAM_START_NAME_CHANGE";
       
      
      private var _userId:int = 0;
      
      public function RoomWidgetUserActionMessage(param1:String, param2:int = 0)
      {
         super(param1);
         this._userId = param2;
      }
      
      public function get userId() : int
      {
         return this._userId;
      }
   }
}
