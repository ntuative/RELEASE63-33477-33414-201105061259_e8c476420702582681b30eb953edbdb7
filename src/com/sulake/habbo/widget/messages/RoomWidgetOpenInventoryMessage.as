package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_733:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_1140:String = "inventory_effects";
      
      public static const const_1285:String = "inventory_badges";
      
      public static const const_1730:String = "inventory_clothes";
      
      public static const const_1837:String = "inventory_furniture";
       
      
      private var var_2814:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_733);
         this.var_2814 = param1;
      }
      
      public function get inventoryType() : String
      {
         return this.var_2814;
      }
   }
}
