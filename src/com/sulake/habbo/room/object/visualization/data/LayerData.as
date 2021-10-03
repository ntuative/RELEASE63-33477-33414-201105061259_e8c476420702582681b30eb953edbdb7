package com.sulake.habbo.room.object.visualization.data
{
   public class LayerData
   {
      
      public static const const_697:String = "";
      
      public static const const_393:int = 0;
      
      public static const const_474:int = 255;
      
      public static const const_753:Boolean = false;
      
      public static const const_494:int = 0;
      
      public static const const_512:int = 0;
      
      public static const const_426:int = 0;
      
      public static const const_1232:int = 1;
      
      public static const const_1260:int = 2;
      
      public static const INK_DARKEN:int = 3;
       
      
      private var var_2477:String = "";
      
      private var var_2071:int = 0;
      
      private var var_2551:int = 255;
      
      private var var_2548:Boolean = false;
      
      private var var_2552:int = 0;
      
      private var var_2549:int = 0;
      
      private var var_2550:Number = 0;
      
      public function LayerData()
      {
         super();
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2477 = param1;
      }
      
      public function get tag() : String
      {
         return this.var_2477;
      }
      
      public function set ink(param1:int) : void
      {
         this.var_2071 = param1;
      }
      
      public function get ink() : int
      {
         return this.var_2071;
      }
      
      public function set alpha(param1:int) : void
      {
         this.var_2551 = param1;
      }
      
      public function get alpha() : int
      {
         return this.var_2551;
      }
      
      public function set ignoreMouse(param1:Boolean) : void
      {
         this.var_2548 = param1;
      }
      
      public function get ignoreMouse() : Boolean
      {
         return this.var_2548;
      }
      
      public function set xOffset(param1:int) : void
      {
         this.var_2552 = param1;
      }
      
      public function get xOffset() : int
      {
         return this.var_2552;
      }
      
      public function set yOffset(param1:int) : void
      {
         this.var_2549 = param1;
      }
      
      public function get yOffset() : int
      {
         return this.var_2549;
      }
      
      public function set zOffset(param1:Number) : void
      {
         this.var_2550 = param1;
      }
      
      public function get zOffset() : Number
      {
         return this.var_2550;
      }
      
      public function copyValues(param1:LayerData) : void
      {
         if(param1 != null)
         {
            this.tag = param1.tag;
            this.ink = param1.ink;
            this.alpha = param1.alpha;
            this.ignoreMouse = param1.ignoreMouse;
            this.xOffset = param1.xOffset;
            this.yOffset = param1.yOffset;
            this.zOffset = param1.zOffset;
         }
      }
   }
}
