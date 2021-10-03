package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetPetPackageUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_586:String = "RWOPPUE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_637:String = "RWOPPUE_OPEN_PET_PACKAGE_RESULT";
      
      public static const const_399:String = "RWOPPUE_OPEN_PET_PACKAGE_UPDATE_PET_IMAGE";
       
      
      private var var_196:int = -1;
      
      private var var_45:BitmapData = null;
      
      private var var_1713:int = 0;
      
      private var var_1658:String = null;
      
      public function RoomWidgetPetPackageUpdateEvent(param1:String, param2:int, param3:BitmapData, param4:int, param5:String, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         this.var_196 = param2;
         this.var_45 = param3;
         this.var_1713 = param4;
         this.var_1658 = param5;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1713;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1658;
      }
      
      public function get image() : BitmapData
      {
         return this.var_45;
      }
      
      public function get objectId() : int
      {
         return this.var_196;
      }
   }
}
