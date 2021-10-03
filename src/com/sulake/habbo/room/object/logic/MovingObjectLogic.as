package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_869:int = 500;
      
      private static var var_628:Vector3d = new Vector3d();
       
      
      private var var_437:Vector3d;
      
      private var var_90:Vector3d;
      
      private var var_959:Number = 0.0;
      
      private var var_1831:int = 0;
      
      private var var_2485:int;
      
      private var var_1106:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_437 = new Vector3d();
         this.var_90 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this.var_1831;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_90 = null;
         this.var_437 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null)
         {
            this.var_90.assign(param1.getLocation());
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_1106 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         if(param1.loc != null)
         {
            this.var_90.assign(param1.loc);
         }
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               _loc3_ = _loc2_.targetLoc;
               this.var_2485 = this.var_1831;
               this.var_437.assign(_loc3_);
               this.var_437.sub(this.var_90);
            }
         }
      }
      
      protected function getLocationOffset() : IVector3d
      {
         return null;
      }
      
      override public function update(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IVector3d = this.getLocationOffset();
         var _loc3_:IRoomObjectModelController = object.getModelController();
         if(_loc3_ != null)
         {
            if(_loc2_ != null)
            {
               if(this.var_959 != _loc2_.z)
               {
                  this.var_959 = _loc2_.z;
                  _loc3_.setNumber(RoomObjectVariableEnum.const_796,this.var_959);
               }
            }
            else if(this.var_959 != 0)
            {
               this.var_959 = 0;
               _loc3_.setNumber(RoomObjectVariableEnum.const_796,this.var_959);
            }
         }
         if(this.var_437.length > 0 || _loc2_ != null)
         {
            _loc4_ = param1 - this.var_2485;
            if(_loc4_ > this.var_1106)
            {
               _loc4_ = this.var_1106;
            }
            if(this.var_437.length > 0)
            {
               var_628.assign(this.var_437);
               var_628.mul(_loc4_ / Number(this.var_1106));
               var_628.add(this.var_90);
            }
            else
            {
               var_628.assign(this.var_90);
            }
            if(_loc2_ != null)
            {
               var_628.add(_loc2_);
            }
            if(object != null)
            {
               object.setLocation(var_628);
            }
            if(_loc4_ == this.var_1106)
            {
               this.var_437.x = 0;
               this.var_437.y = 0;
               this.var_437.z = 0;
            }
         }
         this.var_1831 = param1;
      }
   }
}
