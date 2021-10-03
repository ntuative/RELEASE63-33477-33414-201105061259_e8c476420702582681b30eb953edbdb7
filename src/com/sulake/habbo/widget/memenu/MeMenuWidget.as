package com.sulake.habbo.widget.memenu
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.utils.WindowToggle;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarActionUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarEditorUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetDanceUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetHabboClubUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPurseUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetSettingsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetToolbarClickedUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetTutorialEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEffectsUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetWaveUpdateEvent;
   import com.sulake.habbo.widget.memenu.enum.HabboMeMenuTrackingEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetRequestWidgetMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetSelectOutfitMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetToolbarMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import com.sulake.habbo.window.enum.HabboWindowStyle;
   import com.sulake.habbo.window.enum.HabboWindowType;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.external.ExternalInterface;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getTimer;
   
   public class MeMenuWidget extends RoomWidgetBase
   {
      
      public static const const_114:String = "me_menu_top_view";
      
      public static const const_1582:String = "me_menu_rooms_view";
      
      public static const const_316:String = "me_menu_my_clothes_view";
      
      public static const const_1120:String = "me_menu_dance_moves_view";
      
      public static const const_747:String = "me_menu_effects_view";
      
      public static const const_791:String = "me_menu_settings_view";
      
      public static const const_893:String = "me_menu_sound_settings";
      
      private static const const_1349:int = 5000;
      
      private static const const_1002:Point = new Point(95,185);
       
      
      private var var_43:IMeMenuView;
      
      private var _mainContainer:IWindowContainer;
      
      private var _eventDispatcher:IEventDispatcher;
      
      private var var_1128:Point;
      
      private var var_1402:int = 0;
      
      private var var_2253:int = 0;
      
      private var var_2250:int = 0;
      
      private var var_2251:Boolean = false;
      
      private var var_1702:int = 0;
      
      private var var_1127:Boolean = false;
      
      private var var_2254:Boolean = false;
      
      private var var_354:Boolean = false;
      
      private var var_2252:int = 0;
      
      private var var_2249:Boolean = false;
      
      private var var_1704:int = 0;
      
      private var var_1703:Boolean = false;
      
      private var _config:IHabboConfigurationManager;
      
      private var var_905:Boolean;
      
      public function MeMenuWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboLocalizationManager, param4:IEventDispatcher, param5:IHabboConfigurationManager)
      {
         super(param1,param2,param3);
         this._config = param5;
         this.var_1128 = new Point(0,0);
         this._eventDispatcher = param4;
         this.var_905 = this._config.getKey("client.toolbar.static.enabled","false") == "true";
         if(param5 != null && false)
         {
            this.var_2249 = param5.getKey("client.news.embed.enabled","false") == "true";
         }
         this.changeView(const_114);
         this.hide();
      }
      
      override public function dispose() : void
      {
         if(disposed)
         {
            return;
         }
         this.hide();
         this._eventDispatcher = null;
         if(this.var_43 != null)
         {
            this.var_43.dispose();
            this.var_43 = null;
         }
         super.dispose();
      }
      
      override public function get mainWindow() : IWindow
      {
         return this._mainContainer;
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.addEventListener(RoomWidgetWaveUpdateEvent.const_888,this.onWaveEvent);
         param1.addEventListener(RoomWidgetDanceUpdateEvent.const_740,this.onDanceEvent);
         param1.addEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_967,this.onUpdateEffects);
         param1.addEventListener(RoomWidgetToolbarClickedUpdateEvent.const_943,this.onToolbarClicked);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_810,this.onAvatarEditorClosed);
         param1.addEventListener(RoomWidgetAvatarEditorUpdateEvent.const_853,this.onHideAvatarEditor);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_111,this.onAvatarDeselected);
         param1.addEventListener(RoomWidgetHabboClubUpdateEvent.const_285,this.onHabboClubEvent);
         param1.addEventListener(RoomWidgetAvatarActionUpdateEvent.const_920,this.onAvatarActionEvent);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_126,this.onUserInfo);
         param1.addEventListener(RoomWidgetSettingsUpdateEvent.const_440,this.onSettingsUpdate);
         param1.addEventListener(RoomWidgetTutorialEvent.const_122,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetTutorialEvent.const_480,this.onTutorialEvent);
         param1.addEventListener(RoomWidgetPurseUpdateEvent.const_73,this.onCreditBalance);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_92,this.onNormalMode);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_410,this.onGameMode);
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetWaveUpdateEvent.const_888,this.onWaveEvent);
         param1.removeEventListener(RoomWidgetDanceUpdateEvent.const_740,this.onDanceEvent);
         param1.removeEventListener(RoomWidgetUpdateEffectsUpdateEvent.const_967,this.onUpdateEffects);
         param1.removeEventListener(RoomWidgetToolbarClickedUpdateEvent.const_943,this.onToolbarClicked);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_111,this.onAvatarDeselected);
         param1.removeEventListener(RoomWidgetHabboClubUpdateEvent.const_285,this.onHabboClubEvent);
         param1.removeEventListener(RoomWidgetAvatarActionUpdateEvent.const_920,this.onAvatarActionEvent);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_810,this.onHideAvatarEditor);
         param1.removeEventListener(RoomWidgetAvatarEditorUpdateEvent.const_853,this.onAvatarEditorClosed);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_126,this.onUserInfo);
         param1.removeEventListener(RoomWidgetSettingsUpdateEvent.const_440,this.onSettingsUpdate);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_480,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetTutorialEvent.const_122,this.onTutorialEvent);
         param1.removeEventListener(RoomWidgetPurseUpdateEvent.const_73,this.onCreditBalance);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_92,this.onNormalMode);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_92,this.onGameMode);
      }
      
      public function hide(param1:RoomWidgetRoomObjectUpdateEvent = null) : void
      {
         var _loc2_:* = null;
         if(!this.var_905)
         {
            _loc2_ = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_834);
            _loc2_.window = this._mainContainer.parent as IWindowContainer;
            if(messageListener != null)
            {
               messageListener.processWidgetMessage(_loc2_);
            }
         }
         if(this.var_43 != null)
         {
            this._mainContainer.removeChild(this.var_43.window);
            this.var_43.dispose();
            this.var_43 = null;
         }
         if(this.var_905)
         {
            this._mainContainer.visible = false;
         }
         this.var_354 = false;
         this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_CLOSE));
      }
      
      private function show() : void
      {
         if(!this._mainContainer || !this._mainContainer.parent)
         {
            return;
         }
         this.changeView(const_114);
         if(this.var_905)
         {
            this._mainContainer.position = const_1002;
            this._mainContainer.visible = true;
         }
         var _loc1_:RoomWidgetToolbarMessage = new RoomWidgetToolbarMessage(RoomWidgetToolbarMessage.const_964);
         _loc1_.window = this._mainContainer.parent as IWindowContainer;
         if(messageListener != null)
         {
            messageListener.processWidgetMessage(_loc1_);
         }
         this.var_354 = true;
         this._mainContainer.activate();
      }
      
      private function onUserInfo(param1:RoomWidgetUserInfoUpdateEvent) : void
      {
         var _loc2_:* = null;
         if(!(this.var_354 && this.var_43.window.name == const_316))
         {
            _loc2_ = new RoomWidgetRequestWidgetMessage(RoomWidgetRequestWidgetMessage.const_857);
            if(messageListener != null)
            {
               if(!this.var_1703)
               {
                  messageListener.processWidgetMessage(_loc2_);
               }
            }
         }
      }
      
      private function onSettingsUpdate(param1:RoomWidgetSettingsUpdateEvent) : void
      {
         if(!this.var_354)
         {
            return;
         }
         if(this.var_43.window.name == const_893)
         {
            (this.var_43 as MeMenuSoundSettingsView).updateSettings(param1);
         }
      }
      
      private function onTutorialEvent(param1:RoomWidgetTutorialEvent) : void
      {
         switch(param1.type)
         {
            case RoomWidgetTutorialEvent.const_480:
               Logger.log("* MeMenuWidget: onHighlightClothesIcon " + this.var_354 + " view: " + this.var_43.window.name);
               if(this.var_354 != true || this.var_43.window.name != const_114)
               {
                  return;
               }
               (this.var_43 as MeMenuMainView).setIconAssets("clothes_icon",const_114,"clothes_highlighter_blue");
               break;
            case RoomWidgetTutorialEvent.const_122:
               this.hide();
         }
      }
      
      private function onToolbarClicked(param1:RoomWidgetToolbarClickedUpdateEvent) : void
      {
         switch(param1.iconType)
         {
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ME_MENU:
               if(this.var_354)
               {
                  if(this._mainContainer != null && WindowToggle.isHiddenByOtherWindows(this._mainContainer,this._mainContainer.desktop))
                  {
                     this._mainContainer.activate();
                     return;
                  }
                  this.var_354 = false;
               }
               else
               {
                  this.var_354 = true;
               }
               break;
            case RoomWidgetToolbarClickedUpdateEvent.ICON_TYPE_ROOM_INFO:
               this.var_354 = false;
               break;
            default:
               return;
         }
         if(this.var_354)
         {
            this.show();
         }
         else
         {
            this.hide();
         }
      }
      
      private function onUpdateEffects(param1:RoomWidgetUpdateEffectsUpdateEvent) : void
      {
         var _loc2_:* = null;
         this.var_1127 = false;
         for each(_loc2_ in param1.effects)
         {
            if(_loc2_.isInUse)
            {
               this.var_1127 = true;
            }
         }
         if(this.var_43 != null && this.var_43.window.name == const_747)
         {
            (this.var_43 as MeMenuEffectsView).updateEffects(param1.effects);
         }
      }
      
      private function onAvatarDeselected(param1:Event) : void
      {
         if(this.var_43 != null && this.var_43.window.name != const_316)
         {
            this.hide();
         }
      }
      
      private function onAvatarEditorClosed(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_43 != null && this.var_43.window.name == const_316)
         {
            this.changeView(const_114);
         }
      }
      
      private function onHideAvatarEditor(param1:RoomWidgetAvatarEditorUpdateEvent) : void
      {
         if(this.var_43 != null && this.var_43.window.name == const_316)
         {
            this.changeView(const_114);
         }
      }
      
      private function onWaveEvent(param1:RoomWidgetWaveUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Wave Event received");
      }
      
      private function onDanceEvent(param1:RoomWidgetDanceUpdateEvent) : void
      {
         Logger.log("[MeMenuWidget] Dance Event received, style: " + param1.style);
      }
      
      private function onHabboClubEvent(param1:RoomWidgetHabboClubUpdateEvent) : void
      {
         var _loc2_:* = param1.daysLeft != this.var_1402;
         this.var_1402 = param1.daysLeft;
         this.var_2253 = param1.periodsLeft;
         this.var_2250 = param1.pastPeriods;
         this.var_2251 = param1.allowClubDances;
         _loc2_ = Boolean(_loc2_ || param1.clubLevel != this.var_1702);
         this.var_1702 = param1.clubLevel;
         if(_loc2_)
         {
            if(this.var_43 != null)
            {
               this.changeView(this.var_43.window.name);
            }
         }
      }
      
      private function onAvatarActionEvent(param1:RoomWidgetAvatarActionUpdateEvent) : void
      {
         switch(param1.actionType)
         {
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_ACTIVE:
               this.var_1127 = true;
               break;
            case RoomWidgetAvatarActionUpdateEvent.EFFECT_INACTIVE:
               this.var_1127 = false;
         }
      }
      
      private function onCreditBalance(param1:RoomWidgetPurseUpdateEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         this.var_1704 = param1.balance;
         localizations.registerParameter("widget.memenu.credits","credits",this.var_1704.toString());
      }
      
      private function onNormalMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1703 = false;
      }
      
      private function onGameMode(param1:RoomWidgetRoomEngineUpdateEvent) : void
      {
         this.var_1703 = true;
      }
      
      public function get mainContainer() : IWindowContainer
      {
         if(this._mainContainer == null)
         {
            this._mainContainer = windowManager.createWindow("me_menu_main_container","",HabboWindowType.const_1532,HabboWindowStyle.const_1308,HabboWindowParam.const_44,new Rectangle(0,0,170,260)) as IWindowContainer;
            if(!this.var_905)
            {
               this._mainContainer.tags.push("room_widget_me_menu");
            }
         }
         return this._mainContainer;
      }
      
      public function changeView(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case const_114:
               _loc2_ = new MeMenuMainView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DEFAULT));
               break;
            case const_747:
               _loc2_ = new MeMenuEffectsView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_EFFECTS));
               break;
            case const_1120:
               _loc2_ = new MeMenuDanceView();
               this._eventDispatcher.dispatchEvent(new Event(HabboMeMenuTrackingEvent.HABBO_MEMENU_TRACKING_EVENT_DANCE));
               break;
            case const_316:
               _loc2_ = new MeMenuClothesView();
               break;
            case const_1582:
               _loc2_ = new MeMenuRoomsView();
               break;
            case const_791:
               _loc2_ = new MeMenuSettingsMenuView();
               break;
            case const_893:
               _loc2_ = new MeMenuSoundSettingsView();
               break;
            default:
               Logger.log("Me Menu Change view: unknown view: " + param1);
         }
         if(_loc2_ != null)
         {
            if(this.var_43 != null)
            {
               this._mainContainer.removeChild(this.var_43.window);
               this.var_43.dispose();
               this.var_43 = null;
            }
            this.var_43 = _loc2_;
            this.var_43.init(this,param1);
         }
         this.updateSize();
         if(this.var_905 && param1 == const_114)
         {
            this.mainContainer.position = const_1002;
         }
      }
      
      public function updateSize() : void
      {
         if(this.var_43 != null)
         {
            this.var_1128.x = this.var_43.window.width + 10;
            this.var_1128.y = this.var_43.window.height;
            this.var_43.window.x = 5;
            this.var_43.window.y = 0;
            this._mainContainer.width = this.var_1128.x;
            this._mainContainer.height = this.var_1128.y;
         }
      }
      
      public function get allowHabboClubDances() : Boolean
      {
         return this.var_2251;
      }
      
      public function get isHabboClubActive() : Boolean
      {
         return this.var_1402 > 0;
      }
      
      public function get habboClubDays() : int
      {
         return this.var_1402;
      }
      
      public function get habboClubPeriods() : int
      {
         return this.var_2253;
      }
      
      public function get habboClubPastPeriods() : int
      {
         return this.var_2250;
      }
      
      public function get habboClubLevel() : int
      {
         return this.var_1702;
      }
      
      public function get isNewsEnabled() : Boolean
      {
         return this.var_2249;
      }
      
      public function get creditBalance() : int
      {
         return this.var_1704;
      }
      
      public function get config() : IHabboConfigurationManager
      {
         return this._config;
      }
      
      public function changeToOutfit(param1:int) : void
      {
         this.var_2252 = getTimer();
         this.messageListener.processWidgetMessage(new RoomWidgetSelectOutfitMessage(param1));
      }
      
      public function canChangeOutfit() : Boolean
      {
         var _loc1_:Number = getTimer();
         return _loc1_ - this.var_2252 > const_1349;
      }
      
      public function get hasEffectOn() : Boolean
      {
         return this.var_1127;
      }
      
      public function get isDancing() : Boolean
      {
         return this.var_2254;
      }
      
      public function set isDancing(param1:Boolean) : void
      {
         this.var_2254 = param1;
      }
   }
}
