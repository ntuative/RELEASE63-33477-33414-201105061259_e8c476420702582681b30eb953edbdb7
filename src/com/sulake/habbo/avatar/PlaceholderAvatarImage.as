package com.sulake.habbo.avatar
{
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.alias.AssetAliasCollection;
   import com.sulake.habbo.avatar.cache.AvatarImageCache;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import flash.display.BitmapData;
   
   public class PlaceholderAvatarImage extends AvatarImage
   {
      
      static var var_806:Map = new Map();
       
      
      public function PlaceholderAvatarImage(param1:AvatarStructure, param2:AssetAliasCollection, param3:AvatarFigureContainer, param4:String)
      {
         super(param1,param2,param3,param4);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         if(!var_1098)
         {
            _structure = null;
            _assets = null;
            var_257 = null;
            var_287 = null;
            var_616 = null;
            var_579 = null;
            var_339 = null;
            if(!var_1357 && var_45)
            {
               var_45.dispose();
            }
            var_45 = null;
            _loc1_ = getCache();
            if(_loc1_)
            {
               _loc1_.dispose();
               _loc1_ = null;
            }
            var_849 = null;
            var_1098 = true;
         }
      }
      
      override protected function getFullImage(param1:String) : BitmapData
      {
         return var_806[param1];
      }
      
      override protected function cacheFullImage(param1:String, param2:BitmapData) : void
      {
         var_806[param1] = param2;
      }
      
      override public function appendAction(param1:String, ... rest) : Boolean
      {
         var _loc3_:* = null;
         if(rest != null && rest.length > 0)
         {
            _loc3_ = rest[0];
         }
         switch(param1)
         {
            case AvatarAction.const_430:
               switch(_loc3_)
               {
                  case AvatarAction.const_932:
                  case AvatarAction.const_495:
                  case AvatarAction.const_405:
                  case AvatarAction.const_714:
                  case AvatarAction.const_404:
                  case AvatarAction.const_816:
                     super.appendAction.apply(null,[param1].concat(rest));
               }
               break;
            case AvatarAction.const_359:
            case AvatarAction.const_785:
            case AvatarAction.const_245:
            case AvatarAction.const_963:
            case AvatarAction.const_941:
            case AvatarAction.const_883:
               super.addActionData.apply(null,[param1].concat(rest));
         }
         return true;
      }
      
      override public function isPlaceholder() : Boolean
      {
         return true;
      }
   }
}
