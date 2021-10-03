package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_2778:Number;
      
      private var var_1890:Number;
      
      private var var_1031:Number;
      
      private var var_415:Number = 0;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         this.var_2778 = param1;
         this.var_1890 = param2;
      }
      
      public function reset(param1:int) : void
      {
         this.var_1031 = param1;
         this.var_415 = 0;
      }
      
      public function update() : void
      {
         this.var_1031 += this.var_1890;
         this.var_415 += this.var_1031;
         if(this.var_415 > 0)
         {
            this.var_415 = 0;
            this.var_1031 = this.var_2778 * -1 * this.var_1031;
         }
      }
      
      public function get location() : Number
      {
         return this.var_415;
      }
   }
}
