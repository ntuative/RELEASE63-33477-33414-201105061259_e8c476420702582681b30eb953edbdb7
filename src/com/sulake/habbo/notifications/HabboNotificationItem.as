package com.sulake.habbo.notifications
{
   public class HabboNotificationItem
   {
       
      
      private var var_76:HabboNotificationItemStyle;
      
      private var var_184:String;
      
      private var var_21:HabboNotifications;
      
      public function HabboNotificationItem(param1:String, param2:HabboNotificationItemStyle, param3:HabboNotifications)
      {
         super();
         this.var_184 = param1;
         this.var_76 = param2;
         this.var_21 = param3;
      }
      
      public function get style() : HabboNotificationItemStyle
      {
         return this.var_76;
      }
      
      public function get content() : String
      {
         return this.var_184;
      }
      
      public function dispose() : void
      {
         this.var_184 = null;
         if(this.var_76 != null)
         {
            this.var_76.dispose();
            this.var_76 = null;
         }
         this.var_21 = null;
      }
      
      public function ExecuteUiLinks() : void
      {
         var _loc2_:* = null;
         var _loc1_:Array = this.var_76.componentLinks;
         for each(_loc2_ in _loc1_)
         {
            if(this.var_21 != null)
            {
               this.var_21.onExecuteLink(_loc2_);
            }
         }
      }
   }
}
