package com.sulake.habbo.friendbar.view.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import flash.display.BitmapData;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class Icon implements IDisposable
   {
      
      protected static const const_2139:int = 0;
      
      protected static const const_651:int = 1;
      
      protected static const const_1864:int = 2;
      
      protected static const const_1862:int = 3;
      
      protected static const const_135:int = 4;
      
      protected static const const_650:int = 8;
      
      protected static const const_289:int = 18;
      
      protected static const const_1863:int = 18;
       
      
      private var _disposed:Boolean = false;
      
      private var var_1839:Boolean = false;
      
      protected var var_45:BitmapDataAsset;
      
      protected var var_84:IBitmapWrapperWindow;
      
      private var var_1197:uint;
      
      protected var var_207:Timer;
      
      protected var _frame:int = 0;
      
      private var var_632:Point;
      
      protected var var_884:Boolean = false;
      
      protected var _hover:Boolean = false;
      
      public function Icon()
      {
         this.var_1197 = const_651 | const_650;
         this.var_632 = new Point();
         super();
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get disabled() : Boolean
      {
         return this.var_1839;
      }
      
      protected function set image(param1:BitmapDataAsset) : void
      {
         this.var_45 = param1;
         this.redraw();
      }
      
      protected function get image() : BitmapDataAsset
      {
         return this.var_45;
      }
      
      protected function set canvas(param1:IBitmapWrapperWindow) : void
      {
         this.var_84 = param1;
         this.redraw();
      }
      
      protected function get canvas() : IBitmapWrapperWindow
      {
         return this.var_84;
      }
      
      protected function set alignment(param1:uint) : void
      {
         this.var_1197 = param1;
         this.redraw();
      }
      
      protected function get alignment() : uint
      {
         return this.var_1197;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this.toggleTimer(false,0);
            this.image = null;
            this.canvas = null;
            this._disposed = true;
         }
      }
      
      public function notify(param1:Boolean) : void
      {
         this.var_884 = param1;
         if(this.var_884 && this.var_1839)
         {
            this.enable(true);
         }
      }
      
      public function hover(param1:Boolean) : void
      {
         this._hover = param1;
      }
      
      public function enable(param1:Boolean) : void
      {
         this.var_1839 = !param1;
      }
      
      protected function redraw() : void
      {
         var _loc1_:* = null;
         if(this.var_84 && !this.var_84.disposed)
         {
            if(!this.var_84.bitmap)
            {
               this.var_84.bitmap = new BitmapData(this.var_84.width,this.var_84.height,true,0);
            }
            else
            {
               this.var_84.bitmap.fillRect(this.var_84.bitmap.rect,0);
            }
            if(this.var_45 && !this.var_45.disposed)
            {
               this.var_632.x = this.var_632.y = 0;
               _loc1_ = this.var_45.content as BitmapData;
               switch(this.var_1197 & const_1862)
               {
                  case const_651:
                     this.var_632.x = this.var_84.bitmap.width / 2 - _loc1_.width / 2;
                     break;
                  case const_1864:
                     this.var_632.x = this.var_84.bitmap.width - _loc1_.width;
               }
               switch(this.var_1197 & const_1863)
               {
                  case const_650:
                     this.var_632.y = this.var_84.bitmap.height / 2 - _loc1_.height / 2;
                     break;
                  case const_289:
                     this.var_632.y = this.var_84.bitmap.height - _loc1_.height;
               }
               this.var_84.bitmap.copyPixels(_loc1_,_loc1_.rect,this.var_632);
               this.var_84.invalidate();
            }
         }
      }
      
      protected function toggleTimer(param1:Boolean, param2:int) : void
      {
         if(param1)
         {
            if(!this.var_207)
            {
               this.var_207 = new Timer(param2,0);
               this.var_207.addEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_207.start();
               this.onTimerEvent(null);
            }
            this.var_207.delay = param2;
         }
         else
         {
            this._frame = 0;
            if(this.var_207)
            {
               this.var_207.reset();
               this.var_207.removeEventListener(TimerEvent.TIMER,this.onTimerEvent);
               this.var_207 = null;
            }
         }
      }
      
      protected function onTimerEvent(param1:TimerEvent) : void
      {
      }
   }
}
