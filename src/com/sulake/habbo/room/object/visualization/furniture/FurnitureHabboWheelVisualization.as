package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1012:int = 10;
      
      private static const const_676:int = 20;
      
      private static const const_1366:int = 31;
      
      private static const const_1367:int = 32;
       
      
      private var var_322:Array;
      
      private var var_765:Boolean = false;
      
      public function FurnitureHabboWheelVisualization()
      {
         this.var_322 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            if(!this.var_765)
            {
               this.var_765 = true;
               this.var_322 = new Array();
               this.var_322.push(const_1366);
               this.var_322.push(const_1367);
               return;
            }
         }
         if(param1 > 0 && param1 <= const_1012)
         {
            if(this.var_765)
            {
               this.var_765 = false;
               this.var_322 = new Array();
               this.var_322.push(const_1012 + param1);
               this.var_322.push(const_676 + param1);
               this.var_322.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : int
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
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
