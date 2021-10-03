package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.room.events.RoomObjectFurnitureActionEvent;
   import com.sulake.habbo.room.events.RoomObjectMoveEvent;
   import com.sulake.habbo.room.messages.RoomObjectAvatarCarryObjectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarChatUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarDanceUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarEffectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFigureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarFlatControlUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarGestureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPlayerValueUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarPostureUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSelectedMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSignUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarSleepUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarTypingUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarUseObjectUpdateMessage;
   import com.sulake.habbo.room.messages.RoomObjectAvatarWaveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.events.RoomObjectEvent;
   import com.sulake.room.events.RoomObjectMouseEvent;
   import com.sulake.room.events.RoomSpriteMouseEvent;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.utils.IRoomGeometry;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   import flash.events.MouseEvent;
   import flash.utils.getTimer;
   
   public class AvatarLogic extends MovingObjectLogic
   {
      
      private static const const_1001:Number = 1.5;
      
      private static const const_999:int = 28;
      
      private static const const_998:int = 29;
      
      private static const const_1000:int = 500;
      
      private static const const_1348:int = 999999999;
       
      
      private var _selected:Boolean = false;
      
      private var var_493:Vector3d = null;
      
      private var var_730:int = 0;
      
      private var var_1397:int = 0;
      
      private var var_1396:int = 0;
      
      private var var_902:int = 0;
      
      private var var_729:int = 0;
      
      private var var_1124:int = 0;
      
      private var var_1398:int = 0;
      
      private var var_1395:int = 0;
      
      private var var_901:int = 0;
      
      private var var_1694:Boolean = false;
      
      private var var_1399:int = 0;
      
      private var var_1695:int = 0;
      
      private var var_1400:int = 0;
      
      public function AvatarLogic()
      {
         super();
         this.var_1695 = getTimer() + this.getBlinkInterval();
      }
      
      override public function getEventTypes() : Array
      {
         var _loc1_:Array = [RoomObjectMouseEvent.const_159,RoomObjectMoveEvent.const_413,RoomObjectMouseEvent.const_181,RoomObjectMouseEvent.const_179,RoomObjectFurnitureActionEvent.const_262,RoomObjectFurnitureActionEvent.const_323];
         return getAllEventTypes(super.getEventTypes(),_loc1_);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(this._selected && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc1_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_770,object.getId(),object.getType());
               eventDispatcher.dispatchEvent(_loc1_);
            }
         }
         super.dispose();
         this.var_493 = null;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         var _loc10_:* = null;
         var _loc11_:* = null;
         var _loc12_:* = null;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:* = null;
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:* = null;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:* = null;
         if(param1 == null || object == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         var _loc2_:IRoomObjectModelController = object.getModelController();
         if(param1 is RoomObjectAvatarPostureUpdateMessage)
         {
            _loc3_ = param1 as RoomObjectAvatarPostureUpdateMessage;
            _loc2_.setString(RoomObjectVariableEnum.const_281,_loc3_.postureType);
            _loc2_.setString(RoomObjectVariableEnum.const_845,_loc3_.parameter);
            return;
         }
         if(param1 is RoomObjectAvatarChatUpdateMessage)
         {
            _loc4_ = param1 as RoomObjectAvatarChatUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_243,1);
            this.var_1396 = getTimer() + _loc4_.numberOfWords * 1000;
            return;
         }
         if(param1 is RoomObjectAvatarTypingUpdateMessage)
         {
            _loc5_ = param1 as RoomObjectAvatarTypingUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_1211,Number(_loc5_.isTyping));
            return;
         }
         if(param1 is RoomObjectAvatarUpdateMessage)
         {
            _loc6_ = param1 as RoomObjectAvatarUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_200,_loc6_.dirHead);
            return;
         }
         if(param1 is RoomObjectAvatarGestureUpdateMessage)
         {
            _loc7_ = param1 as RoomObjectAvatarGestureUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_167,_loc7_.gesture);
            this.var_1398 = getTimer() + 3000;
            return;
         }
         if(param1 is RoomObjectAvatarWaveUpdateMessage)
         {
            _loc8_ = param1 as RoomObjectAvatarWaveUpdateMessage;
            if(_loc8_.isWaving)
            {
               _loc2_.setNumber(RoomObjectVariableEnum.const_394,1);
               this.var_1124 = getTimer() + 0;
            }
            else
            {
               _loc2_.setNumber(RoomObjectVariableEnum.const_394,0);
               this.var_1124 = 0;
            }
            return;
         }
         if(param1 is RoomObjectAvatarDanceUpdateMessage)
         {
            _loc9_ = param1 as RoomObjectAvatarDanceUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_1255,_loc9_.danceStyle);
            return;
         }
         if(param1 is RoomObjectAvatarSleepUpdateMessage)
         {
            _loc10_ = param1 as RoomObjectAvatarSleepUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_385,Number(_loc10_.isSleeping));
            return;
         }
         if(param1 is RoomObjectAvatarPlayerValueUpdateMessage)
         {
            _loc11_ = param1 as RoomObjectAvatarPlayerValueUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_925,_loc11_.value);
            this.var_1400 = getTimer() + 3000;
            return;
         }
         if(param1 is RoomObjectAvatarEffectUpdateMessage)
         {
            _loc12_ = param1 as RoomObjectAvatarEffectUpdateMessage;
            _loc13_ = _loc12_.effect;
            _loc14_ = _loc12_.delayMilliSeconds;
            this.updateEffect(_loc13_,_loc14_,_loc2_);
            return;
         }
         if(param1 is RoomObjectAvatarCarryObjectUpdateMessage)
         {
            _loc15_ = param1 as RoomObjectAvatarCarryObjectUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_580,_loc15_.itemType);
            if(_loc15_.itemType < const_1348)
            {
               this.var_901 = getTimer() + 100000;
               this.var_1694 = true;
            }
            else
            {
               this.var_901 = getTimer() + 1500;
               this.var_1694 = false;
            }
            return;
         }
         if(param1 is RoomObjectAvatarUseObjectUpdateMessage)
         {
            _loc16_ = param1 as RoomObjectAvatarUseObjectUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_391,_loc16_.itemType);
            return;
         }
         if(param1 is RoomObjectAvatarSignUpdateMessage)
         {
            _loc17_ = param1 as RoomObjectAvatarSignUpdateMessage;
            _loc2_.setNumber(RoomObjectVariableEnum.const_1130,_loc17_.signType);
            this.var_1395 = getTimer() + 5000;
            return;
         }
         if(param1 is RoomObjectAvatarFlatControlUpdateMessage)
         {
            _loc18_ = param1 as RoomObjectAvatarFlatControlUpdateMessage;
            _loc2_.setString(RoomObjectVariableEnum.const_761,_loc18_.rawData);
            _loc2_.setNumber(RoomObjectVariableEnum.const_1658,Number(_loc18_.isAdmin));
            return;
         }
         if(param1 is RoomObjectAvatarFigureUpdateMessage)
         {
            _loc19_ = param1 as RoomObjectAvatarFigureUpdateMessage;
            _loc20_ = _loc2_.getString(RoomObjectVariableEnum.const_213);
            _loc21_ = _loc19_.figure;
            _loc22_ = _loc19_.gender;
            if(_loc20_ != null && _loc20_.indexOf(".bds-") != -1)
            {
               _loc21_ += _loc20_.substr(_loc20_.indexOf(".bds-"));
            }
            _loc2_.setString(RoomObjectVariableEnum.const_213,_loc21_);
            _loc2_.setString(RoomObjectVariableEnum.AVATAR_GENDER,_loc22_);
            return;
         }
         if(param1 is RoomObjectAvatarSelectedMessage)
         {
            _loc23_ = param1 as RoomObjectAvatarSelectedMessage;
            this._selected = _loc23_.selected;
            this.var_493 = null;
            return;
         }
      }
      
      private function updateEffect(param1:int, param2:int, param3:IRoomObjectModelController) : void
      {
         if(param1 == const_999)
         {
            this.var_730 = getTimer() + const_1000;
            this.var_1397 = const_998;
         }
         else if(param3.getNumber(RoomObjectVariableEnum.const_621) == const_998)
         {
            this.var_730 = getTimer() + const_1000;
            this.var_1397 = param1;
            param1 = const_999;
         }
         else
         {
            if(param2 != 0)
            {
               this.var_730 = getTimer() + param2;
               this.var_1397 = param1;
               return;
            }
            this.var_730 = 0;
         }
         param3.setNumber(RoomObjectVariableEnum.const_621,param1);
      }
      
      override public function mouseEvent(param1:RoomSpriteMouseEvent, param2:IRoomGeometry) : void
      {
         var _loc4_:int = 0;
         var _loc5_:* = null;
         var _loc6_:* = null;
         if(object == null || param1 == null)
         {
            return;
         }
         var _loc3_:* = null;
         switch(param1.type)
         {
            case MouseEvent.CLICK:
               _loc3_ = "null";
               break;
            case MouseEvent.ROLL_OVER:
               _loc3_ = "null";
               eventDispatcher.dispatchEvent(new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_262,object.getId(),object.getType()));
               break;
            case MouseEvent.ROLL_OUT:
               _loc3_ = "null";
               eventDispatcher.dispatchEvent(new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_323,object.getId(),object.getType()));
         }
         if(_loc3_ != null)
         {
            _loc4_ = object.getId();
            _loc5_ = object.getType();
            if(eventDispatcher != null)
            {
               _loc6_ = new RoomObjectMouseEvent(_loc3_,param1.eventId,_loc4_,_loc5_,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown);
               eventDispatcher.dispatchEvent(_loc6_);
            }
         }
      }
      
      override public function update(param1:int) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         super.update(param1);
         if(this._selected && object != null)
         {
            if(eventDispatcher != null)
            {
               _loc2_ = object.getLocation();
               if(this.var_493 == null || this.var_493.x != _loc2_.x || this.var_493.y != _loc2_.y || this.var_493.z != _loc2_.z)
               {
                  if(this.var_493 == null)
                  {
                     this.var_493 = new Vector3d();
                  }
                  this.var_493.assign(_loc2_);
                  _loc3_ = new RoomObjectMoveEvent(RoomObjectMoveEvent.const_413,object.getId(),object.getType());
                  eventDispatcher.dispatchEvent(_loc3_);
               }
            }
         }
         if(object != null && object.getModelController() != null)
         {
            this.updateActions(param1,object.getModelController());
         }
      }
      
      private function updateActions(param1:int, param2:IRoomObjectModelController) : void
      {
         if(this.var_1396 > 0)
         {
            if(param1 > this.var_1396)
            {
               param2.setNumber(RoomObjectVariableEnum.const_243,0);
               this.var_1396 = 0;
               this.var_729 = 0;
               this.var_902 = 0;
            }
            else if(this.var_902 == 0 && this.var_729 == 0)
            {
               this.var_729 = param1 + this.getTalkingPauseInterval();
               this.var_902 = this.var_729 + this.getTalkingPauseLength();
            }
            else if(this.var_729 > 0 && param1 > this.var_729)
            {
               param2.setNumber(RoomObjectVariableEnum.const_243,0);
               this.var_729 = 0;
            }
            else if(this.var_902 > 0 && param1 > this.var_902)
            {
               param2.setNumber(RoomObjectVariableEnum.const_243,1);
               this.var_902 = 0;
            }
         }
         if(this.var_1124 > 0 && param1 > this.var_1124)
         {
            param2.setNumber(RoomObjectVariableEnum.const_394,0);
            this.var_1124 = 0;
         }
         if(this.var_1398 > 0 && param1 > this.var_1398)
         {
            param2.setNumber(RoomObjectVariableEnum.const_167,0);
            this.var_1398 = 0;
         }
         if(this.var_1395 > 0 && param1 > this.var_1395)
         {
            param2.setNumber(RoomObjectVariableEnum.const_1130,0);
            this.var_1395 = 0;
         }
         if(this.var_901 > 0)
         {
            if(param1 > this.var_901)
            {
               param2.setNumber(RoomObjectVariableEnum.const_580,0);
               this.var_901 = 0;
            }
            else if((this.var_901 - param1) % 10000 < 1000 && this.var_1694)
            {
               param2.setNumber(RoomObjectVariableEnum.const_391,1);
            }
            else
            {
               param2.setNumber(RoomObjectVariableEnum.const_391,0);
            }
         }
         if(param1 > this.var_1695)
         {
            param2.setNumber(RoomObjectVariableEnum.const_900,1);
            this.var_1695 = param1 + this.getBlinkInterval();
            this.var_1399 = param1 + this.getBlinkLength();
         }
         if(this.var_1399 > 0 && param1 > this.var_1399)
         {
            param2.setNumber(RoomObjectVariableEnum.const_900,0);
            this.var_1399 = 0;
         }
         if(this.var_730 > 0 && param1 > this.var_730)
         {
            param2.setNumber(RoomObjectVariableEnum.const_621,this.var_1397);
            this.var_730 = 0;
         }
         if(this.var_1400 > 0 && param1 > this.var_1400)
         {
            param2.setNumber(RoomObjectVariableEnum.const_925,0);
            this.var_1400 = 0;
         }
      }
      
      private function getTalkingPauseInterval() : int
      {
         return 100 + Math.random() * 200;
      }
      
      private function getTalkingPauseLength() : int
      {
         return 75 + Math.random() * 75;
      }
      
      private function getBlinkInterval() : int
      {
         return 4500 + Math.random() * 1000;
      }
      
      private function getBlinkLength() : int
      {
         return 50 + Math.random() * 200;
      }
      
      private function targetIsWarping(param1:IVector3d) : Boolean
      {
         var _loc2_:IVector3d = object.getLocation();
         if(param1 == null)
         {
            return false;
         }
         if(_loc2_.x == 0 && _loc2_.y == 0)
         {
            return false;
         }
         if(Math.abs(_loc2_.x - param1.x) > const_1001 || Math.abs(_loc2_.y - param1.y) > const_1001)
         {
            return true;
         }
         return false;
      }
   }
}
