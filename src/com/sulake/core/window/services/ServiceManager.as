package com.sulake.core.window.services
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class ServiceManager implements IInternalWindowServices, IDisposable
   {
       
      
      private var var_2992:uint;
      
      private var var_148:DisplayObject;
      
      private var _disposed:Boolean = false;
      
      private var var_253:IWindowContext;
      
      private var var_1243:IMouseDraggingService;
      
      private var var_1244:IMouseScalingService;
      
      private var var_1248:IMouseListenerService;
      
      private var var_1247:IFocusManagerService;
      
      private var var_1245:IToolTipAgentService;
      
      private var var_1246:IGestureAgentService;
      
      public function ServiceManager(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         this.var_2992 = 0;
         this.var_148 = param2;
         this.var_253 = param1;
         this.var_1243 = new WindowMouseDragger(param2);
         this.var_1244 = new WindowMouseScaler(param2);
         this.var_1248 = new WindowMouseListener(param2);
         this.var_1247 = new FocusManager(param2);
         this.var_1245 = new WindowToolTipAgent(param2);
         this.var_1246 = new GestureAgentService();
      }
      
      public function dispose() : void
      {
         if(this.var_1243 != null)
         {
            this.var_1243.dispose();
            this.var_1243 = null;
         }
         if(this.var_1244 != null)
         {
            this.var_1244.dispose();
            this.var_1244 = null;
         }
         if(this.var_1248 != null)
         {
            this.var_1248.dispose();
            this.var_1248 = null;
         }
         if(this.var_1247 != null)
         {
            this.var_1247.dispose();
            this.var_1247 = null;
         }
         if(this.var_1245 != null)
         {
            this.var_1245.dispose();
            this.var_1245 = null;
         }
         if(this.var_1246 != null)
         {
            this.var_1246.dispose();
            this.var_1246 = null;
         }
         this.var_148 = null;
         this.var_253 = null;
         this._disposed = true;
      }
      
      public function getMouseDraggingService() : IMouseDraggingService
      {
         return this.var_1243;
      }
      
      public function getMouseScalingService() : IMouseScalingService
      {
         return this.var_1244;
      }
      
      public function getMouseListenerService() : IMouseListenerService
      {
         return this.var_1248;
      }
      
      public function getFocusManagerService() : IFocusManagerService
      {
         return this.var_1247;
      }
      
      public function getToolTipAgentService() : IToolTipAgentService
      {
         return this.var_1245;
      }
      
      public function getGestureAgentService() : IGestureAgentService
      {
         return this.var_1246;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
   }
}
