package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1787:String = "WE_DESTROY";
      
      public static const const_331:String = "WE_DESTROYED";
      
      public static const const_1606:String = "WE_OPEN";
      
      public static const const_1724:String = "WE_OPENED";
      
      public static const const_1729:String = "WE_CLOSE";
      
      public static const const_1561:String = "WE_CLOSED";
      
      public static const const_1618:String = "WE_FOCUS";
      
      public static const const_349:String = "WE_FOCUSED";
      
      public static const const_1688:String = "WE_UNFOCUS";
      
      public static const const_1808:String = "WE_UNFOCUSED";
      
      public static const const_1617:String = "WE_ACTIVATE";
      
      public static const const_596:String = "WE_ACTIVATED";
      
      public static const const_1838:String = "WE_DEACTIVATE";
      
      public static const const_509:String = "WE_DEACTIVATED";
      
      public static const const_352:String = "WE_SELECT";
      
      public static const const_58:String = "WE_SELECTED";
      
      public static const const_532:String = "WE_UNSELECT";
      
      public static const const_585:String = "WE_UNSELECTED";
      
      public static const const_1680:String = "WE_LOCK";
      
      public static const const_1687:String = "WE_LOCKED";
      
      public static const const_1655:String = "WE_UNLOCK";
      
      public static const const_1791:String = "WE_UNLOCKED";
      
      public static const const_833:String = "WE_ENABLE";
      
      public static const const_244:String = "WE_ENABLED";
      
      public static const const_863:String = "WE_DISABLE";
      
      public static const const_206:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_297:String = "WE_RELOCATED";
      
      public static const const_1298:String = "WE_RESIZE";
      
      public static const const_39:String = "WE_RESIZED";
      
      public static const const_1697:String = "WE_MINIMIZE";
      
      public static const const_1626:String = "WE_MINIMIZED";
      
      public static const const_1616:String = "WE_MAXIMIZE";
      
      public static const const_1592:String = "WE_MAXIMIZED";
      
      public static const const_1704:String = "WE_RESTORE";
      
      public static const const_1563:String = "WE_RESTORED";
      
      public static const const_526:String = "WE_CHILD_ADDED";
      
      public static const const_415:String = "WE_CHILD_REMOVED";
      
      public static const const_208:String = "WE_CHILD_RELOCATED";
      
      public static const const_143:String = "WE_CHILD_RESIZED";
      
      public static const const_355:String = "WE_CHILD_ACTIVATED";
      
      public static const const_554:String = "WE_PARENT_ADDED";
      
      public static const const_1676:String = "WE_PARENT_REMOVED";
      
      public static const const_1696:String = "WE_PARENT_RELOCATED";
      
      public static const const_851:String = "WE_PARENT_RESIZED";
      
      public static const const_1252:String = "WE_PARENT_ACTIVATED";
      
      public static const const_172:String = "WE_OK";
      
      public static const const_542:String = "WE_CANCEL";
      
      public static const const_103:String = "WE_CHANGE";
      
      public static const const_632:String = "WE_SCROLL";
      
      public static const const_184:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_712:IWindow;
      
      protected var var_1101:Boolean;
      
      protected var var_486:Boolean;
      
      protected var var_479:Boolean;
      
      protected var var_711:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_712 = param3;
         _loc5_.var_486 = param4;
         _loc5_.var_479 = false;
         _loc5_.var_711 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_712;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_486;
      }
      
      public function recycle() : void
      {
         if(this.var_479)
         {
            throw new Error("Event already recycled!");
         }
         this.var_712 = null;
         this._window = null;
         this.var_479 = true;
         this.var_1101 = false;
         this.var_711.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1101;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1101 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1101;
      }
      
      public function stopPropagation() : void
      {
         this.var_1101 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1101 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_486 + " window: " + this._window + " }";
      }
   }
}
