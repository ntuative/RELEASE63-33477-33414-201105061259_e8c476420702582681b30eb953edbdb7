package com.sulake.habbo.toolbar.events
{
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class HabboToolbarSetIconEvent extends Event
   {
      
      public static const const_127:String = "HTIE_SET_TOOLBAR_ICON";
      
      public static const const_1254:String = "HTIE_SET_TOOLBAR_ICON_BITMAP";
      
      public static const const_102:String = "HTIE_SET_TOOLBAR_ICON_STATE";
      
      public static const const_187:String = "HTIE_REMOVE_TOOLBAR_ICON";
       
      
      private var var_743:String;
      
      private var var_2082:String;
      
      private var _bitmapData:BitmapData;
      
      private var var_2886:String;
      
      public function HabboToolbarSetIconEvent(param1:String, param2:String, param3:String = null, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param4,param5);
         this.var_743 = param2;
         this.var_2082 = param3;
      }
      
      public function get iconId() : String
      {
         return this.var_743;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this._bitmapData;
      }
      
      public function get assetName() : String
      {
         return this.var_2082;
      }
      
      public function get iconState() : String
      {
         return this.var_2886;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         this._bitmapData = param1;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2082 = param1;
      }
      
      public function set iconState(param1:String) : void
      {
         this.var_2886 = param1;
      }
   }
}
