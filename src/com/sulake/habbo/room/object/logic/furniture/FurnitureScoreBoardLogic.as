package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.messages.RoomObjectDataUpdateMessage;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import flash.utils.getTimer;
   
   public class FurnitureScoreBoardLogic extends FurnitureLogic
   {
      
      private static const const_462:int = 50;
      
      private static const const_991:int = 3000;
       
      
      private var var_719:int = 0;
      
      private var var_1373:int = 0;
      
      private var var_1106:int = 50;
      
      public function FurnitureScoreBoardLogic()
      {
         super();
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc2_:RoomObjectDataUpdateMessage = param1 as RoomObjectDataUpdateMessage;
         if(_loc2_ != null)
         {
            this.updateScore(_loc2_.state);
            return;
         }
         super.processUpdateMessage(param1);
      }
      
      private function updateScore(param1:int) : void
      {
         var _loc3_:int = 0;
         this.var_719 = param1;
         var _loc2_:int = object.getState(0);
         if(this.var_719 != _loc2_)
         {
            _loc3_ = this.var_719 - _loc2_;
            if(_loc3_ < 0)
            {
               _loc3_ = -_loc3_;
            }
            if(_loc3_ * const_462 > const_991)
            {
               this.var_1106 = const_991 / _loc3_;
            }
            else
            {
               this.var_1106 = const_462;
            }
            this.var_1373 = getTimer();
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         super.update(param1);
         if(object != null)
         {
            _loc2_ = object.getState(0);
            if(_loc2_ != this.var_719 && param1 >= this.var_1373 + this.var_1106)
            {
               _loc3_ = param1 - this.var_1373;
               _loc4_ = _loc3_ / this.var_1106;
               _loc5_ = 1;
               if(this.var_719 < _loc2_)
               {
                  _loc5_ = -1;
               }
               if(_loc4_ > _loc5_ * (this.var_719 - _loc2_))
               {
                  _loc4_ = _loc5_ * (this.var_719 - _loc2_);
               }
               object.setState(_loc2_ + _loc5_ * _loc4_,0);
               this.var_1373 = param1 - (_loc3_ - _loc4_ * this.var_1106);
            }
         }
      }
   }
}
