package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_805:String = "RWSDPM_SAVE_PRESET";
       
      
      private var var_2686:int;
      
      private var var_2685:int;
      
      private var _color:uint;
      
      private var var_1270:int;
      
      private var var_2703:Boolean;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_805);
         this.var_2686 = param1;
         this.var_2685 = param2;
         this._color = param3;
         this.var_1270 = param4;
         this.var_2703 = param5;
      }
      
      public function get presetNumber() : int
      {
         return this.var_2686;
      }
      
      public function get effectTypeId() : int
      {
         return this.var_2685;
      }
      
      public function get color() : uint
      {
         return this._color;
      }
      
      public function get brightness() : int
      {
         return this.var_1270;
      }
      
      public function get apply() : Boolean
      {
         return this.var_2703;
      }
   }
}
