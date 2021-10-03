package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var _type:String = "";
      
      private var var_1782:String = "";
      
      private var var_1861:String = "";
      
      private var var_2772:String = "";
      
      private var var_2771:Number = 0;
      
      private var var_2773:Number = 0;
      
      private var var_2257:Number = 0;
      
      private var var_2258:Number = 0;
      
      private var var_2737:Boolean = false;
      
      private var var_2739:Boolean = false;
      
      private var var_2738:Boolean = false;
      
      private var var_2740:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:String, param5:Number, param6:Number, param7:Number = 0, param8:Number = 0, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false, param12:Boolean = false)
      {
         super();
         this._type = param1;
         this.var_1782 = param2;
         this.var_1861 = param3;
         this.var_2772 = param4;
         this.var_2771 = param5;
         this.var_2773 = param6;
         this.var_2257 = param7;
         this.var_2258 = param8;
         this.var_2737 = param9;
         this.var_2739 = param10;
         this.var_2738 = param11;
         this.var_2740 = param12;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get eventId() : String
      {
         return this.var_1782;
      }
      
      public function get canvasId() : String
      {
         return this.var_1861;
      }
      
      public function get spriteTag() : String
      {
         return this.var_2772;
      }
      
      public function get screenX() : Number
      {
         return this.var_2771;
      }
      
      public function get screenY() : Number
      {
         return this.var_2773;
      }
      
      public function get localX() : Number
      {
         return this.var_2257;
      }
      
      public function get localY() : Number
      {
         return this.var_2258;
      }
      
      public function get ctrlKey() : Boolean
      {
         return this.var_2737;
      }
      
      public function get altKey() : Boolean
      {
         return this.var_2739;
      }
      
      public function get shiftKey() : Boolean
      {
         return this.var_2738;
      }
      
      public function get buttonDown() : Boolean
      {
         return this.var_2740;
      }
   }
}
