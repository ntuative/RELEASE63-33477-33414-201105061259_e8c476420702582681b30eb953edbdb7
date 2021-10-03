package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.MouseCursorType;
   import flash.display.DisplayObject;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.ui.Mouse;
   import flash.ui.MouseCursor;
   import flash.utils.Dictionary;
   
   public class MouseCursorControl
   {
      
      private static var _type:uint = MouseCursorType.const_30;
      
      private static var var_134:Stage;
      
      private static var var_318:Boolean = true;
      
      private static var _disposed:Boolean = false;
      
      private static var var_817:Boolean = true;
      
      private static var var_120:DisplayObject;
      
      private static var var_1523:Dictionary = new Dictionary();
       
      
      public function MouseCursorControl(param1:DisplayObject)
      {
         super();
         var_134 = param1.stage;
      }
      
      public static function dispose() : void
      {
         if(!_disposed)
         {
            if(var_120)
            {
               var_134.removeChild(var_120);
               var_134.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
               var_134.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
               var_134.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
               var_134.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
            }
            _disposed = true;
         }
      }
      
      public static function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public static function get type() : uint
      {
         return _type;
      }
      
      public static function set type(param1:uint) : void
      {
         if(_type != param1)
         {
            _type = param1;
            var_817 = true;
         }
      }
      
      public static function get visible() : Boolean
      {
         return var_318;
      }
      
      public static function set visible(param1:Boolean) : void
      {
         var_318 = param1;
         if(var_318)
         {
            if(var_120)
            {
               var_120.visible = true;
            }
            else
            {
               Mouse.show();
            }
         }
         else if(var_120)
         {
            var_120.visible = false;
         }
         else
         {
            Mouse.hide();
         }
      }
      
      public static function change() : void
      {
         var _loc1_:* = null;
         if(var_817)
         {
            _loc1_ = var_1523[_type];
            if(_loc1_)
            {
               if(var_120)
               {
                  var_134.removeChild(var_120);
               }
               else
               {
                  var_134.addEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_134.addEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_134.addEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_134.addEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  Mouse.hide();
               }
               var_120 = _loc1_;
               var_134.addChild(var_120);
            }
            else
            {
               if(var_120)
               {
                  var_134.removeChild(var_120);
                  var_134.removeEventListener(Event.MOUSE_LEAVE,onStageMouseLeave);
                  var_134.removeEventListener(MouseEvent.MOUSE_MOVE,onStageMouseMove);
                  var_134.removeEventListener(MouseEvent.MOUSE_OVER,onStageMouseMove);
                  var_134.removeEventListener(MouseEvent.MOUSE_OUT,onStageMouseMove);
                  var_120 = null;
                  Mouse.show();
               }
               switch(_type)
               {
                  case MouseCursorType.const_30:
                  case MouseCursorType.ARROW:
                     Mouse.cursor = MouseCursor.ARROW;
                     break;
                  case MouseCursorType.const_361:
                     Mouse.cursor = MouseCursor.BUTTON;
                     break;
                  case MouseCursorType.const_973:
                  case MouseCursorType.const_250:
                  case MouseCursorType.const_1637:
                  case MouseCursorType.const_1693:
                     Mouse.cursor = MouseCursor.HAND;
                     break;
                  case MouseCursorType.NONE:
                     Mouse.cursor = MouseCursor.ARROW;
                     Mouse.hide();
               }
            }
            var_817 = false;
         }
      }
      
      public static function defineCustomCursorType(param1:uint, param2:DisplayObject) : void
      {
         var_1523[param1] = param2;
      }
      
      private static function onStageMouseMove(param1:MouseEvent) : void
      {
         if(var_120)
         {
            var_120.x = param1.stageX - 2;
            var_120.y = param1.stageY;
            if(_type == MouseCursorType.const_30)
            {
               var_318 = false;
               Mouse.show();
            }
            else
            {
               var_318 = true;
               Mouse.hide();
            }
         }
      }
      
      private static function onStageMouseLeave(param1:Event) : void
      {
         if(var_120 && _type != MouseCursorType.const_30)
         {
            Mouse.hide();
            var_318 = false;
         }
      }
   }
}
