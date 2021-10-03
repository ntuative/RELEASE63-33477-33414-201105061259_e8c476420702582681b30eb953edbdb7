package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1367:int = 3;
      
      private static const const_1338:int = 2;
      
      private static const const_1336:int = 1;
      
      private static const const_1337:int = 15;
       
      
      private var var_322:Array;
      
      private var var_1108:int;
      
      public function FurnitureQueueTileVisualization()
      {
         this.var_322 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1338)
         {
            this.var_322 = new Array();
            this.var_322.push(const_1336);
            this.var_1108 = const_1337;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(this.var_1108 > 0)
         {
            --this.var_1108;
         }
         if(this.var_1108 == 0)
         {
            if(this.var_322.length > 0)
            {
               super.setAnimation(this.var_322.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
