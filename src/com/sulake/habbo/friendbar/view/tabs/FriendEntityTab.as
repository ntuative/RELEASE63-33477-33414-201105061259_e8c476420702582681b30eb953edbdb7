package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendbar.data.IFriendEntity;
   import flash.display.BitmapData;
   import flash.utils.getQualifiedClassName;
   
   public class FriendEntityTab extends Tab
   {
      
      private static const const_1437:String = "entity_xml";
      
      private static const const_1436:String = "facebook_piece_xml";
      
      private static const const_1438:String = "controls_piece_xml";
      
      private static const const_467:String = "list";
      
      private static const const_665:String = "header";
      
      private static const const_1039:String = "facebook";
      
      private static const const_1041:String = "controls";
      
      private static const const_666:String = "canvas";
      
      private static const const_461:String = "name";
      
      private static const const_992:String = "btn_message";
      
      private static const const_1040:String = "btn_visit";
      
      private static const const_1077:String = "icon";
      
      private static const POOL:Array = [];
      
      private static const const_460:Array = [];
       
      
      private var var_317:IFriendEntity;
      
      public function FriendEntityTab()
      {
         super();
      }
      
      public static function allocate(param1:IFriendEntity) : FriendEntityTab
      {
         var _loc2_:FriendEntityTab = false ? POOL.pop() : new FriendEntityTab();
         _loc2_.var_479 = false;
         _loc2_.friend = param1;
         return _loc2_;
      }
      
      private static function purgeEntityPieces(param1:IWindowContainer) : void
      {
         var _loc3_:* = null;
         var _loc2_:IItemListWindow = IItemListWindow(param1.getChildByName(const_467));
         _loc3_ = _loc2_.getListItemByName(const_1039) as IWindowContainer;
         if(_loc3_)
         {
            _loc3_.dispose();
         }
         _loc3_ = _loc2_.getListItemByName(const_1041) as IWindowContainer;
         if(_loc3_)
         {
            _loc3_.dispose();
         }
         param1.height = name_1;
         param1.y = 0;
      }
      
      public function set friend(param1:IFriendEntity) : void
      {
         this.var_317 = param1;
         this.refresh();
      }
      
      public function get friend() : IFriendEntity
      {
         return this.var_317;
      }
      
      override public function recycle() : void
      {
         if(!disposed)
         {
            if(!var_479)
            {
               if(_window)
               {
                  this.releaseEntityWindow(_window);
                  _window = null;
               }
               this.var_317 = null;
               var_479 = true;
               POOL.push(this);
            }
         }
      }
      
      override public function select() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         if(!selected)
         {
            _loc1_ = IItemListWindow(window.getChildByName(const_467));
            if(this.friend.realName != null && this.friend.realName != "")
            {
               _loc2_ = var_1347.buildFromXML(var_875.getAssetByName(const_1436).content as XML) as IWindowContainer;
               _loc2_.name = const_1039;
               _loc2_.getChildByName(const_461).caption = this.friend.realName;
               CROPPER.crop(_loc2_.getChildByName(const_461) as ITextWindow);
               _loc3_ = IBitmapWrapperWindow(_loc2_.getChildByName(const_1077));
               _loc3_.bitmap = var_875.getAssetByName(_loc3_.bitmapAssetName).content as BitmapData;
               _loc3_.width = _loc3_.bitmap.width;
               _loc3_.height = _loc3_.bitmap.height;
               _loc1_.addListItem(_loc2_);
            }
            if(this.friend.online)
            {
               _loc2_ = var_1347.buildFromXML(var_875.getAssetByName(const_1438).content as XML) as IWindowContainer;
               _loc2_.name = const_1041;
               _loc4_ = _loc2_.getChildByName(const_992);
               if(_loc4_)
               {
                  _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
                  _loc4_.addEventListener(WindowMouseEvent.const_25,onMouseHover);
               }
               _loc4_ = _loc2_.getChildByName(const_1040);
               if(_loc4_)
               {
                  if(this.friend.allowFollow)
                  {
                     _loc4_.visible = true;
                     _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
                     _loc4_.addEventListener(WindowMouseEvent.const_25,onMouseHover);
                  }
                  else
                  {
                     _loc4_.visible = false;
                  }
               }
               _loc1_.addListItem(_loc2_);
            }
            window.height = _loc1_.height;
            window.y = name_1 - 0;
            super.select();
         }
      }
      
      override public function deselect() : void
      {
         if(selected)
         {
            if(_window)
            {
               purgeEntityPieces(_window);
            }
            super.deselect();
         }
      }
      
      protected function refresh() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(!_window)
         {
            _window = this.allocateEntityWindow();
         }
         if(this.var_317)
         {
            _window.id = this.var_317.id;
            _loc1_ = IItemListWindow(_window.getChildByName(const_467)).getListItemByName(const_665) as IWindowContainer;
            _loc1_.findChildByName(const_461).caption = this.var_317.name;
            CROPPER.crop(_loc1_.getChildByName(const_461) as ITextWindow);
            _loc2_ = IBitmapWrapperWindow(_loc1_.findChildByName(const_666));
            _loc2_.bitmap = var_1636.getAvatarFaceBitmap(this.var_317.figure);
            _loc2_.width = _loc2_.bitmap.width;
            _loc2_.height = _loc2_.bitmap.height;
         }
      }
      
      private function allocateEntityWindow() : IWindowContainer
      {
         var _loc1_:IWindowContainer = false ? const_460.pop() : var_1347.buildFromXML(var_875.getAssetByName(const_1437).content as XML) as IWindowContainer;
         var _loc2_:IBitmapWrapperWindow = IBitmapWrapperWindow(_loc1_.findChildByName(const_666));
         var _loc3_:IRegionWindow = IRegionWindow(_loc1_.findChildByName(const_665));
         _loc1_.x = 0;
         _loc1_.y = 0;
         _loc1_.width = name_5;
         _loc1_.height = name_1;
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
         _loc1_.addEventListener(WindowMouseEvent.const_25,onMouseHover);
         _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc3_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
         _loc2_.disposesBitmap = true;
         return _loc1_;
      }
      
      private function releaseEntityWindow(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 && !param1.disposed)
         {
            param1.procedure = null;
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
            param1.removeEventListener(WindowMouseEvent.const_25,onMouseHover);
            _loc2_ = IRegionWindow(param1.findChildByName(const_665));
            _loc2_.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            _loc2_.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
            param1.width = name_5;
            param1.height = name_1;
            _loc3_ = IBitmapWrapperWindow(param1.findChildByName(const_666));
            _loc3_.bitmap = null;
            purgeEntityPieces(param1);
            if(const_460.indexOf(param1) == -1)
            {
               const_460.push(param1);
            }
         }
      }
      
      private function onButtonClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            switch(param1.window.name)
            {
               case const_992:
                  if(var_1090 && this.var_317)
                  {
                     var_1090.startConversation(this.var_317.id);
                     this.deselect();
                  }
                  break;
               case const_1040:
                  if(var_1090 && this.var_317)
                  {
                     var_1090.followToRoom(this.var_317.id);
                     this.deselect();
                  }
            }
         }
      }
      
      public function toString() : String
      {
         return getQualifiedClassName(this) + " " + this.var_317.name;
      }
   }
}
