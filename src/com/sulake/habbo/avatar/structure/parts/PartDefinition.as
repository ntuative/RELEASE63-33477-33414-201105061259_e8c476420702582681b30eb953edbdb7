package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var var_2720:String;
      
      private var var_1984:String;
      
      private var var_2721:String;
      
      private var var_1986:Boolean;
      
      private var var_1985:int = -1;
      
      public function PartDefinition(param1:XML)
      {
         super();
         this.var_2720 = String(param1["set-type"]);
         this.var_1984 = String(param1["flipped-set-type"]);
         this.var_2721 = String(param1["remove-set-type"]);
         this.var_1986 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return this.var_1985 >= 0;
      }
      
      public function get staticId() : int
      {
         return this.var_1985;
      }
      
      public function set staticId(param1:int) : void
      {
         this.var_1985 = param1;
      }
      
      public function get setType() : String
      {
         return this.var_2720;
      }
      
      public function get method_6() : String
      {
         return this.var_1984;
      }
      
      public function get removeSetType() : String
      {
         return this.var_2721;
      }
      
      public function get appendToFigure() : Boolean
      {
         return this.var_1986;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         this.var_1986 = param1;
      }
      
      public function set method_6(param1:String) : void
      {
         this.var_1984 = param1;
      }
   }
}
