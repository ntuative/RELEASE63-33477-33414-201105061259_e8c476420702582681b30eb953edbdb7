package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1418:Number = 12;
       
      
      private var var_2530:int = -1;
      
      private var var_2534:int = -2;
      
      private var var_204:Vector3d = null;
      
      private var var_1209:Number = 0;
      
      private var var_1487:Number = 0;
      
      private var var_1881:Boolean = false;
      
      private var var_185:Vector3d = null;
      
      private var var_1882:Vector3d;
      
      private var var_2535:Boolean = false;
      
      private var var_2532:Boolean = false;
      
      private var var_2533:Boolean = false;
      
      private var var_2536:Boolean = false;
      
      private var var_2529:int = 0;
      
      private var var_2527:int = 0;
      
      private var _scale:int = 0;
      
      private var var_2531:int = 0;
      
      private var var_2528:int = 0;
      
      private var var_1648:int = -1;
      
      private var var_1879:int = 0;
      
      private var var_1880:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_1882 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_185;
      }
      
      public function get targetId() : int
      {
         return this.var_2530;
      }
      
      public function get targetCategory() : int
      {
         return this.var_2534;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_1882;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_2535;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_2532;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_2533;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_2536;
      }
      
      public function get screenWd() : int
      {
         return this.var_2529;
      }
      
      public function get screenHt() : int
      {
         return this.var_2527;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_2531;
      }
      
      public function get roomHt() : int
      {
         return this.var_2528;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1648;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_204 != null && this.var_185 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_2530 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_1882.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_2534 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_2535 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_2532 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_2533 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_2536 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_2529 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_2527 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_1880 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_2531 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_2528 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1648 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_204 == null)
         {
            this.var_204 = new Vector3d();
         }
         if(this.var_204.x != param1.x || this.var_204.y != param1.y || this.var_204.z != param1.z)
         {
            this.var_204.assign(param1);
            this.var_1879 = 0;
            _loc2_ = Vector3d.dif(this.var_204,this.var_185);
            this.var_1209 = _loc2_.length;
            this.var_1881 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_204 = null;
         this.var_185 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_185 != null)
         {
            return;
         }
         this.var_185 = new Vector3d();
         this.var_185.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_185 == null)
         {
            this.var_185 = new Vector3d();
         }
         this.var_185.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_204 != null && this.var_185 != null)
         {
            ++this.var_1879;
            if(this.var_1880)
            {
               this.var_1880 = false;
               this.var_185 = this.var_204;
               this.var_204 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_204,this.var_185);
            if(_loc3_.length > this.var_1209)
            {
               this.var_1209 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_185 = this.var_204;
               this.var_204 = null;
               this.var_1487 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1209);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1209 / const_1418;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_1881)
               {
                  if(_loc7_ < this.var_1487)
                  {
                     _loc7_ = this.var_1487;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_1881 = false;
                  }
               }
               this.var_1487 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_185 = Vector3d.sum(this.var_185,_loc3_);
            }
         }
      }
   }
}
