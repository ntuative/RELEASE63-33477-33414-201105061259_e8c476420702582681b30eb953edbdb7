package com.sulake.habbo.ui
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.habbo.advertisement.IAdManager;
   import com.sulake.habbo.advertisement.events.AdEvent;
   import com.sulake.habbo.avatar.IAvatarRenderManager;
   import com.sulake.habbo.avatar.IHabboAvatarEditor;
   import com.sulake.habbo.catalog.IHabboCatalog;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendlist.IHabboFriendList;
   import com.sulake.habbo.help.IHabboHelp;
   import com.sulake.habbo.inventory.IHabboInventory;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.moderation.IHabboModeration;
   import com.sulake.habbo.navigator.IHabboNavigator;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.room.events.RoomEngineDimmerStateEvent;
   import com.sulake.habbo.room.events.RoomEngineEvent;
   import com.sulake.habbo.room.events.RoomEngineObjectEvent;
   import com.sulake.habbo.room.events.RoomEngineRoomColorEvent;
   import com.sulake.habbo.room.events.RoomEngineSoundMachineEvent;
   import com.sulake.habbo.roomevents.IHabboUserDefinedRoomEvents;
   import com.sulake.habbo.session.IRoomSession;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.ISessionDataManager;
   import com.sulake.habbo.session.events.RoomSessionChatEvent;
   import com.sulake.habbo.session.events.RoomSessionDimmerPresetsEvent;
   import com.sulake.habbo.session.events.RoomSessionDoorbellEvent;
   import com.sulake.habbo.session.events.RoomSessionErrorMessageEvent;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.session.events.RoomSessionFriendRequestEvent;
   import com.sulake.habbo.session.events.RoomSessionPetPackageEvent;
   import com.sulake.habbo.session.events.RoomSessionPollEvent;
   import com.sulake.habbo.session.events.RoomSessionPresentEvent;
   import com.sulake.habbo.session.events.RoomSessionQueueEvent;
   import com.sulake.habbo.session.events.RoomSessionUserBadgesEvent;
   import com.sulake.habbo.session.events.RoomSessionUserDataUpdateEvent;
   import com.sulake.habbo.session.events.RoomSessionUserNotificationEvent;
   import com.sulake.habbo.session.events.RoomSessionViralFurniStatusEvent;
   import com.sulake.habbo.session.events.RoomSessionVoteEvent;
   import com.sulake.habbo.sound.IHabboSoundManager;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.tracking.IHabboTracking;
   import com.sulake.habbo.widget.IRoomWidgetFactory;
   import com.sulake.habbo.widget.enums.RoomWidgetEnum;
   import com.sulake.habbo.widget.messages.RoomWidgetMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.habbo.window.utils.IAlertDialog;
   import com.sulake.iid.IIDAvatarRenderManager;
   import com.sulake.iid.IIDHabboAdManager;
   import com.sulake.iid.IIDHabboAvatarEditor;
   import com.sulake.iid.IIDHabboCatalog;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboFriendList;
   import com.sulake.iid.IIDHabboHelp;
   import com.sulake.iid.IIDHabboInventory;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboModeration;
   import com.sulake.iid.IIDHabboNavigator;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboRoomWidget;
   import com.sulake.iid.IIDHabboSoundManager;
   import com.sulake.iid.IIDHabboToolbar;
   import com.sulake.iid.IIDHabboTracking;
   import com.sulake.iid.IIDHabboUserDefinedRoomEvents;
   import com.sulake.iid.IIDRoomEngine;
   import com.sulake.iid.IIDSessionDataManager;
   import iid.IIDHabboWindowManager;
   
   public class RoomUI extends Component implements IRoomUI, IUpdateReceiver
   {
       
      
      private var _windowManager:IHabboWindowManager;
      
      private var _roomEngine:IRoomEngine;
      
      private var _roomSessionManager:IRoomSessionManager;
      
      private var var_1165:IRoomWidgetFactory;
      
      private var var_349:ISessionDataManager;
      
      private var _friendList:IHabboFriendList;
      
      private var var_505:IAvatarRenderManager;
      
      private var _inventory:IHabboInventory;
      
      private var _toolbar:IHabboToolbar;
      
      private var _navigator:IHabboNavigator;
      
      private var var_2061:IHabboAvatarEditor = null;
      
      private var _catalog:IHabboCatalog;
      
      private var var_331:IAdManager;
      
      private var _localization:IHabboLocalizationManager;
      
      private var var_1264:IHabboHelp;
      
      private var var_1056:IHabboModeration;
      
      private var _config:IHabboConfigurationManager;
      
      private var _soundManager:IHabboSoundManager;
      
      private var var_330:Map;
      
      private var var_1590:int;
      
      private var _connection:IConnection;
      
      private var _habboTracking:IHabboTracking;
      
      private var var_1305:IHabboUserDefinedRoomEvents;
      
      public function RoomUI(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         this.var_1590 = RoomDesktop.const_472;
         super(param1,param2,param3);
         queueInterface(new IIDHabboWindowManager(),this.onWindowManagerReady);
         queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
         queueInterface(new IIDHabboRoomSessionManager(),this.onRoomSessionManagerReady);
         queueInterface(new IIDHabboRoomWidget(),this.onRoomWidgetFactoryReady);
         queueInterface(new IIDSessionDataManager(),this.onSessionDataManagerReady);
         queueInterface(new IIDHabboFriendList(),this.onFriendListReady);
         queueInterface(new IIDAvatarRenderManager(),this.onAvatarRenderManagerReady);
         queueInterface(new IIDHabboInventory(),this.onInventoryReady);
         queueInterface(new IIDHabboToolbar(),this.onToolbarReady);
         queueInterface(new IIDHabboNavigator(),this.onNavigatorReady);
         queueInterface(new IIDHabboAvatarEditor(),this.onAvatarEditorReady);
         queueInterface(new IIDHabboCatalog(),this.onCatalogReady);
         queueInterface(new IIDHabboAdManager(),this.onAdManagerReady);
         queueInterface(new IIDHabboLocalizationManager(),this.onLocalizationManagerReady);
         queueInterface(new IIDHabboHelp(),this.onHabboHelpReady);
         queueInterface(new IIDHabboModeration(),this.onHabboModerationReady);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationManagerReady);
         queueInterface(new IIDHabboSoundManager(),this.onSoundManagerReady);
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationReady);
         queueInterface(new IIDHabboUserDefinedRoomEvents(),this.onUserDefinedRoomEventsReady);
         this._habboTracking = IHabboTracking(queueInterface(new IIDHabboTracking()));
         this.var_330 = new Map();
         registerUpdateReceiver(this,0);
      }
      
      override public function dispose() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._windowManager != null)
         {
            this._windowManager.release(new IIDHabboWindowManager());
            this._windowManager = null;
         }
         if(this._roomEngine != null)
         {
            this._roomEngine.release(new IIDRoomEngine());
            this._roomEngine = null;
         }
         if(this._roomSessionManager != null)
         {
            this._roomSessionManager.release(new IIDHabboRoomSessionManager());
            this._roomSessionManager = null;
         }
         if(this.var_1165 != null)
         {
            this.var_1165.release(new IIDHabboRoomWidget());
            this.var_1165 = null;
         }
         if(this._inventory != null)
         {
            this._inventory.release(new IIDHabboInventory());
            this._inventory = null;
         }
         if(this._toolbar != null)
         {
            this._toolbar.release(new IIDHabboToolbar());
            this._toolbar = null;
         }
         if(this._config != null)
         {
            this._config.release(new IIDHabboConfigurationManager());
            this._config = null;
         }
         if(this._soundManager != null)
         {
            this._soundManager.release(new IIDHabboSoundManager());
            this._soundManager = null;
         }
         if(this.var_331 != null)
         {
            this.var_331.release(new IIDHabboAdManager());
            this.var_331 = null;
         }
         if(this.var_505 != null)
         {
            this.var_505.release(new IIDAvatarRenderManager());
            this.var_505 = null;
         }
         if(this._catalog != null)
         {
            this._catalog.release(new IIDHabboCatalog());
            this._catalog = null;
         }
         if(this._friendList != null)
         {
            this._friendList.release(new IIDHabboFriendList());
            this._friendList = null;
         }
         if(this.var_1264 != null)
         {
            this.var_1264.release(new IIDHabboHelp());
            this.var_1264 = null;
         }
         if(this._localization != null)
         {
            this._localization.release(new IIDHabboLocalizationManager());
            this._localization = null;
         }
         if(this.var_1056 != null)
         {
            this.var_1056.release(new IIDHabboModeration());
            this.var_1056 = null;
         }
         if(this._navigator != null)
         {
            this._navigator.release(new IIDHabboNavigator());
            this._navigator = null;
         }
         if(this.var_349 != null)
         {
            this.var_349.release(new IIDSessionDataManager());
            this.var_349 = null;
         }
         if(this._habboTracking)
         {
            this._habboTracking.release(new IIDHabboTracking());
            this._habboTracking = null;
         }
         if(this.var_1305)
         {
            this.var_1305.release(new IIDHabboUserDefinedRoomEvents());
            this.var_1305 = null;
         }
         this.var_2061 = null;
         this._connection = null;
         if(this.var_330)
         {
            while(this.var_330.length > 0)
            {
               _loc1_ = this.var_330.getKey(0) as String;
               _loc2_ = this.var_330.remove(_loc1_) as RoomDesktop;
               if(_loc2_ != null)
               {
                  _loc2_.dispose();
               }
            }
            this.var_330.dispose();
            this.var_330 = null;
         }
         removeUpdateReceiver(this);
         super.dispose();
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._windowManager = param2 as IHabboWindowManager;
      }
      
      private function onRoomWidgetFactoryReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_1165 = param2 as IRoomWidgetFactory;
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._roomSessionManager = param2 as IRoomSessionManager;
         this.registerSessionEvents();
         if(this._roomSessionManager != null && this._roomEngine != null && this._roomEngine.isInitialized)
         {
            this._roomSessionManager.roomEngineReady = true;
         }
      }
      
      private function onSessionDataManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_349 = param2 as ISessionDataManager;
      }
      
      private function onFriendListReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._friendList = param2 as IHabboFriendList;
      }
      
      private function onAvatarRenderManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_505 = param2 as IAvatarRenderManager;
      }
      
      private function onInventoryReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._inventory = param2 as IHabboInventory;
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._toolbar = param2 as IHabboToolbar;
      }
      
      private function onNavigatorReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._navigator = param2 as IHabboNavigator;
      }
      
      private function onAvatarEditorReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_2061 = param2 as IHabboAvatarEditor;
      }
      
      private function onCatalogReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._catalog = param2 as IHabboCatalog;
      }
      
      private function onAdManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_331 = param2 as IAdManager;
         if(this.var_331 != null && this.var_331.events != null)
         {
            this.var_331.events.addEventListener(AdEvent.const_535,this.adEventHandler);
            this.var_331.events.addEventListener(AdEvent.const_601,this.adEventHandler);
            this.var_331.events.addEventListener(AdEvent.const_592,this.adEventHandler);
         }
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._localization = param2 as IHabboLocalizationManager;
      }
      
      private function onHabboHelpReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_1264 = param2 as IHabboHelp;
      }
      
      private function onHabboModerationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this.var_1056 = param2 as IHabboModeration;
         Logger.log("XXXX GOT HABBO MODERATION: " + this.var_1056);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._config = param2 as IHabboConfigurationManager;
      }
      
      private function onSoundManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._soundManager = param2 as IHabboSoundManager;
      }
      
      private function registerSessionEvents() : void
      {
         if(this._roomSessionManager)
         {
            this._roomSessionManager.events.addEventListener(RoomSessionEvent.const_283,this.roomSessionStateEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionEvent.const_85,this.roomSessionStateEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionEvent.const_95,this.roomSessionStateEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionChatEvent.const_211,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionChatEvent.const_604,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionUserBadgesEvent.const_150,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionDoorbellEvent.const_130,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionDoorbellEvent.const_157,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionDoorbellEvent.const_63,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionPresentEvent.const_304,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionPetPackageEvent.const_600,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionPetPackageEvent.const_476,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionViralFurniStatusEvent.const_557,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionViralFurniStatusEvent.const_578,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_294,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_238,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_965,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_1248,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_1218,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_246,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_268,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_287,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_252,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_298,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_295,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_248,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_835,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_840,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_203,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_864,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionErrorMessageEvent.const_755,this.roomSessionDialogEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionQueueEvent.const_562,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionVoteEvent.const_161,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionVoteEvent.const_148,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionPollEvent.const_140,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionPollEvent.const_74,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionPollEvent.const_162,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionDimmerPresetsEvent.const_477,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionFriendRequestEvent.const_164,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionUserNotificationEvent.const_136,this.roomSessionEventHandler);
            this._roomSessionManager.events.addEventListener(RoomSessionUserDataUpdateEvent.const_125,this.roomSessionEventHandler);
         }
      }
      
      private function roomSessionStateEventHandler(param1:RoomSessionEvent) : void
      {
         var _loc2_:* = null;
         if(this._roomEngine == null)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomSessionEvent.const_283:
               _loc2_ = this.createDesktop(param1.session);
               break;
            case RoomSessionEvent.const_85:
               this._toolbar.events.dispatchEvent(new HabboToolbarEvent(HabboToolbarEvent.const_330));
               break;
            case RoomSessionEvent.const_95:
               if(param1.session != null)
               {
                  this.disposeDesktop(this.getRoomIdentifier(param1.session.roomId,param1.session.roomCategory));
                  this._toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_187,HabboToolbarIconEnum.ZOOM));
                  this._toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_187,HabboToolbarIconEnum.MEMENU));
                  this._toolbar.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_187,HabboToolbarIconEnum.INVENTORY));
                  this._toolbar.events.dispatchEvent(new HabboToolbarEvent(HabboToolbarEvent.const_346));
               }
         }
      }
      
      private function roomSessionEventHandler(param1:RoomSessionEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(this._roomEngine == null)
         {
            return;
         }
         if(param1.session != null)
         {
            _loc2_ = this.getRoomIdentifier(param1.session.roomId,param1.session.roomCategory);
            _loc3_ = this.getDesktop(_loc2_);
            if(_loc3_ != null)
            {
               _loc3_.processEvent(param1);
            }
         }
      }
      
      private function roomSessionDialogEventHandler(param1:RoomSessionEvent) : void
      {
         var errorMessage:String = null;
         var event:RoomSessionEvent = param1;
         var errorTitle:String = "${error.title}";
         switch(event.type)
         {
            case RoomSessionErrorMessageEvent.const_294:
               errorMessage = "${room.error.cant_trade_stuff}";
               break;
            case RoomSessionErrorMessageEvent.const_238:
               errorMessage = "${room.error.cant_set_item}";
               break;
            case RoomSessionErrorMessageEvent.const_965:
               errorMessage = "${room.error.cant_set_not_owner}";
               break;
            case RoomSessionErrorMessageEvent.const_246:
               errorMessage = "${room.error.max_furniture}";
               break;
            case RoomSessionErrorMessageEvent.const_203:
               errorMessage = "${room.error.max_pets}";
               break;
            case RoomSessionErrorMessageEvent.const_268:
               errorMessage = "${room.error.max_queuetiles}";
               break;
            case RoomSessionErrorMessageEvent.const_287:
               errorMessage = "${room.error.max_soundfurni}";
               break;
            case RoomSessionErrorMessageEvent.const_252:
               errorMessage = "${room.error.max_stickies}";
               break;
            case RoomSessionErrorMessageEvent.const_298:
               errorMessage = "${room.error.kicked}";
               errorTitle = "${generic.alert.title}";
               break;
            case RoomSessionErrorMessageEvent.const_248:
               errorMessage = "${room.error.guide.not.available}";
               break;
            case RoomSessionErrorMessageEvent.const_295:
               errorMessage = "${room.error.guide.already.exists}";
               break;
            case RoomSessionErrorMessageEvent.const_835:
               errorMessage = "${room.error.pets.forbidden_in_hotel}";
               break;
            case RoomSessionErrorMessageEvent.const_840:
               errorMessage = "${room.error.pets.forbidden_in_flat}";
               break;
            case RoomSessionErrorMessageEvent.const_864:
               errorMessage = "${room.error.pets.no_free_tiles}";
               break;
            case RoomSessionErrorMessageEvent.const_755:
               errorMessage = "${room.error.pets.selected_tile_not_free}";
               break;
            default:
               return;
         }
         this._windowManager.alert(errorTitle,errorMessage,0,function(param1:IAlertDialog, param2:WindowEvent):void
         {
            param1.dispose();
         });
      }
      
      private function adEventHandler(param1:AdEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:String = this.getRoomIdentifier(param1.roomId,param1.roomCategory);
         var _loc3_:RoomDesktop = this.getDesktop(_loc2_) as RoomDesktop;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.processEvent(param1);
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         this._roomEngine = param2 as IRoomEngine;
         this.initializeRoomEngineEvents();
         if(this._roomSessionManager != null && this._roomEngine != null && this._roomEngine.isInitialized)
         {
            this._roomSessionManager.roomEngineReady = true;
         }
      }
      
      private function onCommunicationReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(disposed)
         {
            return;
         }
         var _loc3_:IHabboCommunicationManager = param2 as IHabboCommunicationManager;
         if(_loc3_ != null)
         {
            this._connection = _loc3_.getHabboMainConnection(this.onConnectionReady);
            if(this._connection != null)
            {
               this.onConnectionReady(this._connection);
            }
         }
      }
      
      private function onUserDefinedRoomEventsReady(param1:IID = null, param2:IUnknown = null) : void
      {
         this.var_1305 = param2 as IHabboUserDefinedRoomEvents;
      }
      
      private function onConnectionReady(param1:IConnection) : void
      {
         if(disposed)
         {
            return;
         }
         if(param1 != null)
         {
            this._connection = param1;
         }
      }
      
      private function initializeRoomEngineEvents() : void
      {
         if(this._roomEngine != null && this._roomEngine.events != null)
         {
            this._roomEngine.events.addEventListener(RoomEngineEvent.const_855,this.roomEngineEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineEvent.const_315,this.roomEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineEvent.const_360,this.roomEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineEvent.const_648,this.roomEngineEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineEvent.const_518,this.roomEngineEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineDimmerStateEvent.const_66,this.roomEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineRoomColorEvent.const_807,this.roomEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_924,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_505,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_436,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.ROOM_OBJECT_REMOVED,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_183,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_972,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_181,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_179,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.ROOM_OBJECT_WIDGET_REQUEST_CREDITFURNI,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_144,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_165,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_156,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_168,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_163,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_139,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_141,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_616,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_628,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_538,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_649,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_110,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_160,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineObjectEvent.const_147,this.roomObjectEventHandler);
            this._roomEngine.events.addEventListener(RoomEngineSoundMachineEvent.const_239,this.roomObjectEventHandler);
         }
      }
      
      private function roomEngineEventHandler(param1:RoomEngineEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         if(param1.type == RoomEngineEvent.const_855)
         {
            if(this._roomSessionManager != null)
            {
               this._roomSessionManager.roomEngineReady = true;
            }
         }
         else if(param1.type == RoomEngineEvent.const_518 || param1.type == RoomEngineEvent.const_648)
         {
            _loc2_ = this.getRoomIdentifier(param1.roomId,param1.roomCategory);
            _loc3_ = this.getDesktop(_loc2_) as RoomDesktop;
            if(_loc3_ == null)
            {
               return;
            }
            _loc3_.roomEngineEventHandler(param1);
         }
      }
      
      private function roomEventHandler(param1:RoomEngineEvent) : void
      {
         var _loc4_:* = null;
         var _loc5_:Boolean = false;
         var _loc6_:* = null;
         var _loc7_:* = null;
         if(param1 == null)
         {
            return;
         }
         if(this._roomEngine == null)
         {
            return;
         }
         var _loc2_:String = this.getRoomIdentifier(param1.roomId,param1.roomCategory);
         var _loc3_:RoomDesktop = this.getDesktop(_loc2_) as RoomDesktop;
         if(_loc3_ == null)
         {
            if(this._roomSessionManager == null)
            {
               return;
            }
            _loc4_ = this._roomSessionManager.getSession(param1.roomId,param1.roomCategory);
            if(_loc4_ != null)
            {
               _loc3_ = this.createDesktop(_loc4_) as RoomDesktop;
            }
         }
         if(_loc3_ == null)
         {
            return;
         }
         switch(param1.type)
         {
            case RoomEngineEvent.const_315:
               _loc5_ = false;
               _loc3_.createRoomView(this.getActiveCanvasId(param1.roomId,param1.roomCategory));
               if(this._roomEngine != null)
               {
                  this._roomEngine.setActiveRoom(param1.roomId,param1.roomCategory);
                  if(!this._roomEngine.isPublicRoomWorldType(this._roomEngine.getWorldType(param1.roomId,param1.roomCategory)))
                  {
                     _loc7_ = new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_102,HabboToolbarIconEnum.ZOOM);
                     _loc7_.iconState = "2";
                     this._toolbar.events.dispatchEvent(_loc7_);
                  }
                  else
                  {
                     _loc5_ = true;
                  }
               }
               _loc3_.createWidget(RoomWidgetEnum.const_429);
               _loc3_.createWidget(RoomWidgetEnum.const_536);
               if(!_loc3_.session.isSpectatorMode)
               {
                  _loc3_.createWidget(RoomWidgetEnum.const_503);
                  _loc3_.createWidget(RoomWidgetEnum.CHAT_INPUT_WIDGET);
                  _loc3_.createWidget(RoomWidgetEnum.const_164);
               }
               _loc3_.createWidget(RoomWidgetEnum.const_926);
               _loc3_.createWidget(RoomWidgetEnum.const_633);
               _loc3_.createWidget(RoomWidgetEnum.const_624);
               _loc3_.createWidget(RoomWidgetEnum.const_560);
               _loc3_.createWidget(RoomWidgetEnum.const_594);
               _loc3_.createWidget(RoomWidgetEnum.const_527);
               _loc3_.createWidget(RoomWidgetEnum.const_573);
               _loc3_.createWidget(RoomWidgetEnum.const_646);
               _loc3_.createWidget(RoomWidgetEnum.const_130);
               _loc3_.createWidget(RoomWidgetEnum.const_392);
               _loc3_.createWidget(RoomWidgetEnum.const_134);
               _loc3_.createWidget(RoomWidgetEnum.const_639);
               _loc3_.createWidget(RoomWidgetEnum.const_482);
               _loc3_.createWidget(RoomWidgetEnum.const_918);
               _loc3_.createWidget(RoomWidgetEnum.const_136);
               _loc3_.createWidget(RoomWidgetEnum.const_627);
               if(this._config.getKey("avatar.widget.enabled","0") == "1")
               {
                  _loc3_.createWidget(RoomWidgetEnum.const_120);
               }
               if(this._config.getKey("purse.widget.enabled","0") == "1")
               {
                  _loc3_.createWidget(RoomWidgetEnum.const_441);
                  _loc3_.initializeWidget(RoomWidgetEnum.const_441);
               }
               if(!_loc5_)
               {
                  _loc3_.createWidget(RoomWidgetEnum.const_631);
               }
               _loc3_.createWidget(RoomWidgetEnum.const_366);
               if(this.var_1590 != RoomDesktop.const_472)
               {
                  _loc3_.initializeWidget(RoomWidgetEnum.const_366,this.var_1590);
               }
               if(this.var_331 != null)
               {
                  this.var_331.showRoomAd();
               }
               _loc3_.createWidget(RoomWidgetEnum.const_488);
               _loc3_.createWidget(RoomWidgetEnum.const_492);
               break;
            case RoomEngineEvent.const_360:
               this.disposeDesktop(_loc2_);
               break;
            case RoomEngineRoomColorEvent.const_807:
               _loc6_ = param1 as RoomEngineRoomColorEvent;
               if(_loc6_ == null)
               {
                  break;
               }
               if(_loc6_.bgOnly)
               {
                  _loc3_.setRoomViewColor(16777215,255);
               }
               else
               {
                  _loc3_.setRoomViewColor(_loc6_.color,_loc6_.brightness);
               }
               break;
            case RoomEngineDimmerStateEvent.const_66:
               _loc3_.processEvent(param1);
         }
      }
      
      private function roomObjectEventHandler(param1:RoomEngineObjectEvent) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(this._roomEngine == null)
         {
            return;
         }
         var _loc2_:String = this.getRoomIdentifier(param1.roomId,param1.roomCategory);
         var _loc3_:RoomDesktop = this.getDesktop(_loc2_) as RoomDesktop;
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.roomObjectEventHandler(param1);
      }
      
      public function processWidgetMessage(param1:int, param2:int, param3:RoomWidgetMessage) : void
      {
         if(param3 == null)
         {
            return;
         }
         if(this._roomEngine == null)
         {
            return;
         }
         var _loc4_:String = this.getRoomIdentifier(param1,param2);
         var _loc5_:RoomDesktop = this.getDesktop(_loc4_) as RoomDesktop;
         if(_loc5_ == null)
         {
            return;
         }
         _loc5_.processWidgetMessage(param3);
      }
      
      public function createDesktop(param1:IRoomSession) : IRoomDesktop
      {
         if(param1 == null)
         {
            return null;
         }
         if(this._roomEngine == null)
         {
            return null;
         }
         var _loc2_:String = this.getRoomIdentifier(param1.roomId,param1.roomCategory);
         var _loc3_:RoomDesktop = this.getDesktop(_loc2_) as RoomDesktop;
         if(_loc3_ != null)
         {
            return _loc3_;
         }
         _loc3_ = new RoomDesktop(param1,assets,this._connection);
         _loc3_.roomEngine = this._roomEngine;
         _loc3_.windowManager = this._windowManager;
         _loc3_.roomWidgetFactory = this.var_1165;
         _loc3_.sessionDataManager = this.var_349;
         _loc3_.roomSessionManager = this._roomSessionManager;
         _loc3_.friendList = this._friendList;
         _loc3_.avatarRenderManager = this.var_505;
         _loc3_.inventory = this._inventory;
         _loc3_.toolbar = this._toolbar;
         _loc3_.navigator = this._navigator;
         _loc3_.avatarEditor = this.var_2061;
         _loc3_.catalog = this._catalog;
         _loc3_.adManager = this.var_331;
         _loc3_.localization = this._localization;
         _loc3_.habboHelp = this.var_1264;
         _loc3_.moderation = this.var_1056;
         _loc3_.config = this._config;
         _loc3_.soundManager = this._soundManager;
         _loc3_.habboTracking = this._habboTracking;
         _loc3_.userDefinedRoomEvents = this.var_1305;
         var _loc4_:XmlAsset = assets.getAssetByName("room_desktop_layout_xml") as XmlAsset;
         if(_loc4_ != null)
         {
            _loc3_.layout = _loc4_.content as XML;
         }
         _loc3_.createWidget(RoomWidgetEnum.const_588);
         _loc3_.createWidget(RoomWidgetEnum.const_779);
         _loc3_.init();
         this.var_330.add(_loc2_,_loc3_);
         return _loc3_;
      }
      
      public function disposeDesktop(param1:String) : void
      {
         var _loc3_:int = 0;
         var _loc2_:RoomDesktop = this.var_330.remove(param1) as RoomDesktop;
         if(_loc2_ != null)
         {
            _loc3_ = _loc2_.getWidgetState(RoomWidgetEnum.const_366);
            if(_loc3_ != RoomDesktop.const_472)
            {
               this.var_1590 = _loc3_;
            }
            _loc2_.dispose();
         }
      }
      
      public function getDesktop(param1:String) : IRoomDesktop
      {
         return this.var_330.getValue(param1) as RoomDesktop;
      }
      
      public function getActiveCanvasId(param1:int, param2:int) : int
      {
         return 1;
      }
      
      public function update(param1:uint) : void
      {
         var _loc3_:* = null;
         var _loc2_:int = 0;
         while(_loc2_ < this.var_330.length)
         {
            _loc3_ = this.var_330.getWithIndex(_loc2_) as RoomDesktop;
            if(_loc3_ != null)
            {
               _loc3_.update();
            }
            _loc2_++;
         }
      }
      
      private function getRoomIdentifier(param1:int, param2:int) : String
      {
         return "hard_coded_room_id";
      }
   }
}
