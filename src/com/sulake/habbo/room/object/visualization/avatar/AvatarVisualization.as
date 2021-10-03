package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_1006:String = "avatar";
      
      private static const const_657:Number = -0.01;
      
      private static const const_658:Number = -0.409;
      
      private static const const_1005:int = 2;
      
      private static const const_1356:Array = [0,0,0];
      
      private static const const_1358:int = 3;
       
      
      private var var_597:AvatarVisualizationData = null;
      
      private var var_539:Map;
      
      private var var_501:Map;
      
      private var var_1224:int = 0;
      
      private var var_900:Boolean;
      
      private var var_616:String;
      
      private var var_935:String;
      
      private var var_1225:int = 0;
      
      private var var_598:BitmapDataAsset;
      
      private var var_914:BitmapDataAsset;
      
      private var var_1734:int = -1;
      
      private var var_1731:int = -1;
      
      private var var_1729:int = -1;
      
      private const const_1007:int = 0;
      
      private const const_1889:int = 1;
      
      private const const_1875:int = 2;
      
      private const const_1874:int = 3;
      
      private const const_1357:int = 4;
      
      private var var_1648:int = -1;
      
      private var var_252:String = "";
      
      private var _postureParameter:String = "";
      
      private var var_1735:Boolean = false;
      
      private var var_1736:Boolean = false;
      
      private var var_1733:Boolean = false;
      
      private var var_1420:Boolean = false;
      
      private var var_640:Boolean = false;
      
      private var var_1419:int = 0;
      
      private var var_1422:int = 0;
      
      private var var_2300:int = 0;
      
      private var var_747:int = 0;
      
      private var var_748:int = 0;
      
      private var var_596:int = 0;
      
      private var var_1421:int = 0;
      
      private var var_1150:Boolean = false;
      
      private var var_1732:Boolean = false;
      
      private var var_1149:int = 0;
      
      private var var_746:int = 0;
      
      private var var_1730:Boolean = false;
      
      private var var_1148:int = 0;
      
      private var var_57:IAvatarImage = null;
      
      private var var_1098:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_539 = new Map();
         this.var_501 = new Map();
         this.var_900 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_539 != null)
         {
            this.resetImages();
            this.var_539.dispose();
            this.var_501.dispose();
            this.var_539 = null;
         }
         this.var_597 = null;
         this.var_598 = null;
         this.var_914 = null;
         super.dispose();
         this.var_1098 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1098;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_597 = param1 as AvatarVisualizationData;
         createSprites(this.const_1357);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_174)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_243) > 0 && param3);
            if(_loc5_ != this.var_1735)
            {
               this.var_1735 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_394) > 0;
            if(_loc5_ != this.var_1736)
            {
               this.var_1736 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_385) > 0;
            if(_loc5_ != this.var_1733)
            {
               this.var_1733 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_900) > 0 && param3);
            if(_loc5_ != this.var_1420)
            {
               this.var_1420 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_1211) > 0;
            if(_loc5_ != this.var_640)
            {
               this.var_640 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_167);
            if(_loc6_ != this.var_1419)
            {
               this.var_1419 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_281);
            if(_loc7_ != this.var_252)
            {
               this.var_252 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_845);
            if(_loc7_ != this._postureParameter)
            {
               this._postureParameter = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_1255);
            if(_loc6_ != this.var_1422)
            {
               this.var_1422 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_621);
            if(_loc6_ != this.var_747)
            {
               this.var_747 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_580);
            if(_loc6_ != this.var_748)
            {
               this.var_748 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_391);
            if(_loc6_ != this.var_596)
            {
               this.var_596 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_200);
            if(_loc6_ != this.var_1734)
            {
               this.var_1734 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_748 > 0 && param1.getNumber(RoomObjectVariableEnum.const_391) > 0)
            {
               if(this.var_596 != this.var_748)
               {
                  this.var_596 = this.var_748;
                  _loc4_ = true;
               }
            }
            else if(this.var_596 != 0)
            {
               this.var_596 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_925);
            if(_loc6_ != this.var_1149)
            {
               this.var_1149 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.AVATAR_GENDER);
            if(_loc7_ != this.var_935)
            {
               this.var_935 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_213);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            var_174 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_616 != param1)
         {
            this.var_616 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_539)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_501)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_539.reset();
         this.var_501.reset();
         this.var_57 = null;
         _loc2_ = getSprite(this.const_1007);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1420 = false;
         }
         if(this.var_252 == "sit" || this.var_252 == "lay")
         {
            this.var_1421 = param1 / 2;
         }
         else
         {
            this.var_1421 = 0;
         }
         this.var_1732 = false;
         this.var_1150 = false;
         if(this.var_252 == "lay")
         {
            this.var_1150 = true;
            _loc2_ = int(this._postureParameter);
            if(_loc2_ < 0)
            {
               this.var_1732 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_539.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_501.getValue(_loc4_) as IAvatarImage;
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_597.getAvatar(this.var_616,param1,this.var_935,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_539.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_501.length >= const_1358)
                  {
                     this.var_501.remove(this.var_501.getKeys().shift());
                  }
                  this.var_501.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_480 != param1.getUpdateID() || this.var_1648 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1734;
            if(this.var_252 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_1731 || param4)
            {
               _loc5_ = true;
               this.var_1731 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_57.setDirectionAngle(AvatarSetType.const_35,_loc6_);
            }
            if(_loc7_ != this.var_1729 || param4)
            {
               _loc5_ = true;
               this.var_1729 = _loc7_;
               if(this.var_1729 != this.var_1731)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_57.setDirectionAngle(AvatarSetType.const_51,_loc7_);
               }
            }
            var_480 = param1.getUpdateID();
            this.var_1648 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1889);
         this.var_598 = null;
         if(this.var_252 == "mv" || this.var_252 == "std")
         {
            _loc2_.visible = true;
            if(this.var_598 == null || param1 != var_88)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_598 = this.var_57.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_598 = this.var_57.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_598 != null)
               {
                  _loc2_.asset = this.var_598.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_598 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_914 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1875);
         if(this.var_640)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_914 = this.var_597.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_914 = this.var_597.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_252 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_252 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_914 != null)
            {
               _loc2_.asset = this.var_914.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_1874);
         if(this.var_1149 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_597.getAvatarRendererAsset("number_" + this.var_1149 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_597.getAvatarRendererAsset("number_" + this.var_1149 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_252 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_252 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_746 = 1;
               this.var_1730 = true;
               this.var_1148 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_746 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_1874);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_1730)
         {
            ++this.var_1148;
            if(this.var_1148 < 10)
            {
               return false;
            }
            if(this.var_746 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1148 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_746 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_746 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_746 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_746 = 0;
               this.var_1730 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = null;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:int = 0;
         var _loc31_:* = null;
         var _loc32_:* = null;
         var _loc5_:IRoomObject = object;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_597 == null)
         {
            return;
         }
         var _loc6_:IRoomObjectModel = _loc5_.getModel();
         var _loc7_:Number = param1.scale;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:int = this.var_747;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = this.updateModel(_loc6_,_loc7_,param3);
         if(this.animateNumberBubble(_loc7_))
         {
            increaseUpdateId();
         }
         if(_loc13_ || _loc7_ != var_88 || this.var_57 == null)
         {
            if(_loc7_ != var_88)
            {
               _loc9_ = true;
               this.validateActions(_loc7_);
            }
            if(_loc11_ != this.var_747)
            {
               _loc12_ = true;
            }
            if(_loc9_ || this.var_57 == null || _loc12_)
            {
               this.var_57 = this.getAvatarImage(_loc7_,this.var_747);
               if(this.var_57 == null)
               {
                  return;
               }
               _loc8_ = true;
               _loc16_ = getSprite(this.const_1007);
               if(_loc16_ && this.var_57 && this.var_57.isPlaceholder())
               {
                  _loc16_.alpha = 150;
               }
               else if(_loc16_)
               {
                  _loc16_.alpha = 255;
               }
            }
            if(this.var_57 == null)
            {
               return;
            }
            this.updateShadow(_loc7_);
            if(_loc9_)
            {
               this.updateTypingBubble(_loc7_);
               this.updateNumberBubble(_loc7_);
            }
            _loc10_ = this.updateObject(_loc5_,param1,param3,true);
            this.updateActions(this.var_57);
            var_88 = _loc7_;
         }
         else
         {
            _loc10_ = this.updateObject(_loc5_,param1,param3);
         }
         var _loc14_:Boolean = _loc10_ || _loc13_ || _loc9_;
         var _loc15_:Boolean = (this.var_900 || this.var_1225 > 0) && param3;
         if(_loc14_)
         {
            this.var_1225 = const_1005;
         }
         if(_loc14_ || _loc15_)
         {
            increaseUpdateId();
            --this.var_1225;
            --this.var_1224;
            if(!(this.var_1224 <= 0 || _loc9_ || _loc13_ || _loc8_))
            {
               return;
            }
            this.var_57.updateAnimationByFrames(1);
            this.var_1224 = const_1005;
            _loc18_ = this.var_57.getCanvasOffsets();
            if(_loc18_ == null || _loc18_.length < 3)
            {
               _loc18_ = const_1356;
            }
            _loc17_ = getSprite(this.const_1007);
            if(_loc17_ != null)
            {
               _loc21_ = this.var_57.getImage(AvatarSetType.const_35,false);
               if(_loc21_ != null)
               {
                  _loc17_.asset = _loc21_;
               }
               if(_loc17_.asset)
               {
                  _loc17_.offsetX = -1 * _loc7_ / 2 + _loc18_[0];
                  _loc17_.offsetY = -_loc17_.asset.height + _loc7_ / 4 + _loc18_[1] + this.var_1421;
               }
               if(this.var_1150)
               {
                  if(this.var_1732)
                  {
                     _loc17_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc17_.relativeDepth = const_658 + _loc18_[2];
                  }
               }
               else
               {
                  _loc17_.relativeDepth = const_657 + _loc18_[2];
               }
            }
            _loc17_ = getSprite(this.const_1875);
            if(_loc17_ != null && _loc17_.visible)
            {
               if(!this.var_1150)
               {
                  _loc17_.relativeDepth = const_657 - 0.01 + _loc18_[2];
               }
               else
               {
                  _loc17_.relativeDepth = const_658 - 0.01 + _loc18_[2];
               }
            }
            this.var_900 = this.var_57.isAnimating();
            _loc19_ = this.const_1357;
            for each(_loc20_ in this.var_57.getSprites())
            {
               if(_loc20_.id == const_1006)
               {
                  _loc17_ = getSprite(this.const_1007);
                  _loc22_ = this.var_57.getLayerData(_loc20_);
                  _loc23_ = _loc20_.getDirectionOffsetX(this.var_57.getDirection());
                  _loc24_ = _loc20_.getDirectionOffsetY(this.var_57.getDirection());
                  if(_loc22_ != null)
                  {
                     _loc23_ += _loc22_.dx;
                     _loc24_ += _loc22_.dy;
                  }
                  if(_loc7_ < 48)
                  {
                     _loc23_ /= 2;
                     _loc24_ /= 2;
                  }
                  _loc17_.offsetX += _loc23_;
                  _loc17_.offsetY += _loc24_;
               }
               else
               {
                  _loc17_ = getSprite(_loc19_);
                  if(_loc17_ != null)
                  {
                     _loc17_.capturesMouse = false;
                     _loc17_.visible = true;
                     _loc25_ = this.var_57.getLayerData(_loc20_);
                     _loc26_ = 0;
                     _loc27_ = _loc20_.getDirectionOffsetX(this.var_57.getDirection());
                     _loc28_ = _loc20_.getDirectionOffsetY(this.var_57.getDirection());
                     _loc29_ = _loc20_.getDirectionOffsetZ(this.var_57.getDirection());
                     _loc30_ = 0;
                     if(_loc20_.hasDirections)
                     {
                        _loc30_ = this.var_57.getDirection();
                     }
                     if(_loc25_ != null)
                     {
                        _loc26_ = _loc25_.animationFrame;
                        _loc27_ += _loc25_.dx;
                        _loc28_ += _loc25_.dy;
                        _loc30_ += _loc25_.directionOffset;
                     }
                     if(_loc7_ < 48)
                     {
                        _loc27_ /= 2;
                        _loc28_ /= 2;
                     }
                     if(_loc30_ < 0)
                     {
                        _loc30_ += 8;
                     }
                     else if(_loc30_ > 7)
                     {
                        _loc30_ -= 8;
                     }
                     _loc31_ = this.var_57.getScale() + "_" + _loc20_.member + "_" + _loc30_ + "_" + _loc26_;
                     _loc32_ = this.var_57.getAsset(_loc31_);
                     if(_loc32_ == null)
                     {
                        continue;
                     }
                     _loc17_.asset = _loc32_.content as BitmapData;
                     _loc17_.offsetX = -_loc32_.offset.x - _loc7_ / 2 + _loc27_;
                     _loc17_.offsetY = -_loc32_.offset.y + _loc28_ + this.var_1421;
                     if(this.var_1150)
                     {
                        _loc17_.relativeDepth = const_658 - 0.001 * spriteCount * _loc29_;
                     }
                     else
                     {
                        _loc17_.relativeDepth = const_657 - 0.001 * spriteCount * _loc29_;
                     }
                     if(_loc20_.ink == 33)
                     {
                        _loc17_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc17_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc19_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_430,this.var_252,this._postureParameter);
         if(this.var_1419 > 0)
         {
            param1.appendAction(AvatarAction.const_358,AvatarAction.const_1851[this.var_1419]);
         }
         if(this.var_1422 > 0)
         {
            param1.appendAction(AvatarAction.const_785,this.var_1422);
         }
         if(this.var_2300 > 0)
         {
            param1.appendAction(AvatarAction.const_963,this.var_2300);
         }
         if(this.var_748 > 0)
         {
            param1.appendAction(AvatarAction.const_941,this.var_748);
         }
         if(this.var_596 > 0)
         {
            param1.appendAction(AvatarAction.const_883,this.var_596);
         }
         if(this.var_1735)
         {
            param1.appendAction(AvatarAction.const_307);
         }
         if(this.var_1733 || this.var_1420)
         {
            param1.appendAction(AvatarAction.const_555);
         }
         if(this.var_1736)
         {
            param1.appendAction(AvatarAction.const_245);
         }
         if(this.var_747 > 0)
         {
            param1.appendAction(AvatarAction.const_359,this.var_747);
         }
         param1.endActionAppends();
         this.var_900 = param1.isAnimating();
         var _loc2_:int = this.const_1357;
         for each(_loc3_ in this.var_57.getSprites())
         {
            if(_loc3_.id != const_1006)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
