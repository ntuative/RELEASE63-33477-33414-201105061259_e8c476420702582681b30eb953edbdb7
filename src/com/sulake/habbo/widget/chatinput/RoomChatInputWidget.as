package com.sulake.habbo.widget.chatinput
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.exceptions.CrashMeError;
   import com.sulake.core.window.IWindow;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetChatInputContentUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFloodControlEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetChatMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class RoomChatInputWidget extends RoomWidgetBase
   {
      
      private static const const_1431:int = 5000;
       
      
      private var _visualization:RoomChatInputView;
      
      private var var_1891:String = "";
      
      private var var_800:int = 0;
      
      private var var_1497:Boolean = false;
      
      private var var_446:Timer = null;
      
      private var var_2566:int;
      
      private var var_2985:Boolean = false;
      
      private var var_21:Component = null;
      
      private var var_183:IHabboConfigurationManager;
      
      public function RoomChatInputWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IHabboConfigurationManager, param5:Component)
      {
         super(param1,param2,param3);
         this.var_21 = param5;
         this.var_183 = param4;
         this._visualization = new RoomChatInputView(this);
      }
      
      public function get floodBlocked() : Boolean
      {
         return this.var_1497;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this.var_183;
      }
      
      override public function dispose() : void
      {
         if(this._visualization != null)
         {
            this._visualization.dispose();
            this._visualization = null;
         }
         if(this.var_446 != null)
         {
            this.var_446.stop();
            this.var_446 = null;
         }
         this.var_21 = null;
         this.var_183 = null;
         super.dispose();
      }
      
      public function get allowPaste() : Boolean
      {
         return getTimer() - this.var_2566 > const_1431;
      }
      
      public function setLastPasteTime() : void
      {
         this.var_2566 = getTimer();
      }
      
      public function sendChat(param1:String, param2:int, param3:String = "") : void
      {
         if(this.var_1497)
         {
            return;
         }
         var _loc4_:RoomWidgetChatMessage = new RoomWidgetChatMessage(RoomWidgetChatMessage.const_595,param1,param2,param3);
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc4_);
         }
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_299,this.onRoomObjectSelected);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_111,this.onRoomObjectDeselected);
         param1.addEventListener(RoomWidgetChatInputContentUpdateEvent.const_379,this.onChatInputUpdate);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_115,this.onUserInfo);
         param1.addEventListener(RoomWidgetFloodControlEvent.const_425,this.onFloodControl);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_299,this.onRoomObjectSelected);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_111,this.onRoomObjectDeselected);
         param1.removeEventListener(RoomWidgetChatInputContentUpdateEvent.const_379,this.onChatInputUpdate);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_115,this.onUserInfo);
         param1.removeEventListener(RoomWidgetFloodControlEvent.const_425,this.onFloodControl);
      }
      
      private function onRoomObjectSelected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         var _loc2_:RoomWidgetRoomObjectMessage = new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_336,param1.id,param1.category);
      }
      
      private function onRoomObjectDeselected(param1:RoomWidgetRoomObjectUpdateEvent) : void
      {
         this.var_1891 = "";
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         this.var_1891 = param1.name;
      }
      
      private function onChatInputUpdate(param1:RoomWidgetChatInputContentUpdateEvent) : void
      {
         var _loc2_:String = "";
         switch(param1.messageType)
         {
            case RoomWidgetChatInputContentUpdateEvent.const_980:
               _loc2_ = localizations.getKey("widgets.chatinput.mode.whisper",":tell");
               this._visualization.displaySpecialChatMessage(_loc2_,param1.userName);
               break;
            case RoomWidgetChatInputContentUpdateEvent.const_1119:
         }
      }
      
      private function onReleaseTimerComplete(param1:TimerEvent) : void
      {
         Logger.log("Releasing flood blocking");
         this.var_1497 = false;
         if(this._visualization != null)
         {
            this._visualization.hideFloodBlocking();
         }
         this.var_446 = null;
      }
      
      private function onReleaseTimerTick(param1:TimerEvent) : void
      {
         if(this._visualization != null)
         {
            this.var_800 = this.var_800 - 1;
            this._visualization.updateBlockText(this.var_800);
         }
      }
      
      public function get selectedUserName() : String
      {
         return this.var_1891;
      }
      
      public function triggerManualCrash() : void
      {
         this.var_2985 = true;
         throw new CrashMeError();
      }
      
      public function onFloodControl(param1:RoomWidgetFloodControlEvent) : void
      {
         this.var_1497 = true;
         this.var_800 = param1.seconds;
         Logger.log("Enabling flood blocking for " + this.var_800 + " seconds");
         if(this.var_446)
         {
            this.var_446.reset();
         }
         else
         {
            this.var_446 = new Timer(1000,this.var_800);
            this.var_446.addEventListener(TimerEvent.TIMER,this.onReleaseTimerTick);
            this.var_446.addEventListener(TimerEvent.TIMER_COMPLETE,this.onReleaseTimerComplete);
         }
         this.var_446.start();
         if(this._visualization != null)
         {
            this._visualization.updateBlockText(this.var_800);
            this._visualization.showFloodBlocking();
         }
      }
      
      override public function get mainWindow() : IWindow
      {
         return this._visualization.window;
      }
   }
}
