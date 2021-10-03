package com.sulake.habbo.friendbar.view.tabs
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.components.IRegionWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import flash.display.BitmapData;
   
   public class AddFriendsTab extends Tab
   {
      
      private static const const_1077:String = "icon";
      
      private static const TEXT:String = "text";
      
      private static const const_665:String = "header";
      
      private static const const_1888:String = "title";
      
      private static const BUTTON:String = "button";
      
      private static const const_1434:String = "addFriendsTabXML";
      
      private static const const_1433:String = "add_friends_icon_png";
      
      private static var var_986:int = -1;
      
      private static const POOL:Array = [];
      
      private static const const_460:Array = [];
       
      
      public function AddFriendsTab()
      {
         super();
      }
      
      public static function allocate() : AddFriendsTab
      {
         var _loc1_:AddFriendsTab = false ? POOL.pop() : new AddFriendsTab();
         _loc1_.var_479 = false;
         _loc1_._window = _loc1_.allocateEntityWindow();
         return _loc1_;
      }
      
      public function allocateEntityWindow() : IWindowContainer
      {
         var _loc1_:IWindowContainer = false ? const_460.pop() : var_1347.buildFromXML(var_875.getAssetByName(const_1434).content as XML) as IWindowContainer;
         var _loc2_:IRegionWindow = IRegionWindow(_loc1_.findChildByName(const_665));
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc1_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
         _loc1_.addEventListener(WindowMouseEvent.const_25,onMouseHover);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
         _loc2_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
         if(var_986 < 0)
         {
            var_986 = _loc1_.height;
         }
         _loc1_.height = name_1;
         var _loc3_:IBitmapWrapperWindow = _loc1_.findChildByName(const_1077) as IBitmapWrapperWindow;
         _loc3_.disposesBitmap = false;
         _loc3_.bitmap = var_875.getAssetByName(const_1433).content as BitmapData;
         var _loc4_:IWindow = _loc1_.findChildByName(BUTTON);
         _loc4_.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
         _loc4_.addEventListener(WindowMouseEvent.const_25,onMouseHover);
         var _loc5_:IWindow = _loc1_.findChildByName(TEXT);
         _loc5_.visible = false;
         return _loc1_;
      }
      
      private function releaseEntityWindow(param1:IWindowContainer) : void
      {
         var _loc2_:* = null;
         if(param1 && !param1.disposed)
         {
            param1.procedure = null;
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            param1.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
            param1.removeEventListener(WindowMouseEvent.const_25,onMouseHover);
            _loc2_ = IRegionWindow(param1.findChildByName(const_665));
            _loc2_.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onMouseClick);
            _loc2_.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,onMouseHover);
            param1.findChildByName(BUTTON).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onButtonClick);
            param1.findChildByName(TEXT).visible = false;
            param1.width = name_5;
            param1.height = name_1;
            if(const_460.indexOf(param1) == -1)
            {
               const_460.push(param1);
            }
         }
      }
      
      override public function select() : void
      {
         if(!selected)
         {
            _window.height = var_986;
            _window.y = 0 - (0 - name_1);
            _window.findChildByName(TEXT).visible = true;
            super.select();
         }
      }
      
      override public function deselect() : void
      {
         if(selected)
         {
            _window.y = 0;
            _window.height = name_1;
            _window.findChildByName(TEXT).visible = false;
            super.deselect();
         }
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
               var_479 = true;
               POOL.push(this);
            }
         }
      }
      
      private function onButtonClick(param1:WindowMouseEvent) : void
      {
         if(!disposed && !recycled)
         {
            var_1090.findNewFriends();
            this.deselect();
         }
      }
   }
}
