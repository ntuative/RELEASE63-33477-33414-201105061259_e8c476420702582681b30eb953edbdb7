package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1753:int;
      
      private var _name:String;
      
      private var var_1377:int;
      
      private var var_2337:int;
      
      private var var_2331:int;
      
      private var _energy:int;
      
      private var _nutrition:int;
      
      private var var_616:String;
      
      private var var_2336:int;
      
      private var var_2341:int;
      
      private var var_2338:int;
      
      private var var_2339:int;
      
      private var var_2340:int;
      
      private var _ownerName:String;
      
      private var var_535:int;
      
      public function PetInfoMessageParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return this.var_1753;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get level() : int
      {
         return this.var_1377;
      }
      
      public function get maxLevel() : int
      {
         return this.var_2337;
      }
      
      public function get experience() : int
      {
         return this.var_2331;
      }
      
      public function get energy() : int
      {
         return this._energy;
      }
      
      public function get nutrition() : int
      {
         return this._nutrition;
      }
      
      public function get figure() : String
      {
         return this.var_616;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return this.var_2336;
      }
      
      public function get maxEnergy() : int
      {
         return this.var_2341;
      }
      
      public function get maxNutrition() : int
      {
         return this.var_2338;
      }
      
      public function get respect() : int
      {
         return this.var_2339;
      }
      
      public function get ownerId() : int
      {
         return this.var_2340;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get age() : int
      {
         return this.var_535;
      }
      
      public function flush() : Boolean
      {
         this.var_1753 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         this.var_1753 = param1.readInteger();
         this._name = param1.readString();
         this.var_1377 = param1.readInteger();
         this.var_2337 = param1.readInteger();
         this.var_2331 = param1.readInteger();
         this.var_2336 = param1.readInteger();
         this._energy = param1.readInteger();
         this.var_2341 = param1.readInteger();
         this._nutrition = param1.readInteger();
         this.var_2338 = param1.readInteger();
         this.var_616 = param1.readString();
         this.var_2339 = param1.readInteger();
         this.var_2340 = param1.readInteger();
         this.var_535 = param1.readInteger();
         this._ownerName = param1.readString();
         return true;
      }
   }
}
