package com.sulake.habbo.widget.avatarinfo
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.room.object.RoomObjectCategoryEnum;
   import com.sulake.habbo.room.object.RoomObjectTypeEnum;
   import com.sulake.habbo.widget.RoomWidgetBase;
   import com.sulake.habbo.widget.events.RoomWidgetAvatarInfoEvent;
   import com.sulake.habbo.widget.events.RoomWidgetFurniInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomEngineUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectNameEvent;
   import com.sulake.habbo.widget.events.RoomWidgetRoomObjectUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserDataUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserInfoUpdateEvent;
   import com.sulake.habbo.widget.events.RoomWidgetUserLocationUpdateEvent;
   import com.sulake.habbo.widget.messages.RoomWidgetGetUserLocationMessage;
   import com.sulake.habbo.widget.messages.RoomWidgetRoomObjectMessage;
   import com.sulake.habbo.window.IHabboWindowManager;
   import flash.events.IEventDispatcher;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class AvatarInfoWidget extends RoomWidgetBase implements IUpdateReceiver
   {
       
      
      private var var_21:Component;
      
      private var var_183:IHabboConfigurationManager;
      
      private var _view:AvatarInfoView;
      
      private var var_194:Boolean = false;
      
      private var var_1703:Boolean = false;
      
      private var var_1161:Timer;
      
      private var var_2974:int = 3000;
      
      private var var_1427:Boolean;
      
      private var var_924:Boolean;
      
      private var _blend:Number;
      
      private var var_1428:int;
      
      private var var_2976:int = 500;
      
      private var var_308:AvatarInfoData;
      
      private var var_2325:Boolean;
      
      private var var_1747:Boolean;
      
      private var var_1748:int = -1;
      
      private var var_2975:Boolean;
      
      private var var_756:AvatarInfoView;
      
      private var var_755:AvatarMenuView;
      
      public function AvatarInfoWidget(param1:IHabboWindowManager, param2:IAssetLibrary, param3:IHabboConfigurationManager, param4:IHabboLocalizationManager, param5:Component)
      {
         super(param1,param2,param4);
         this.var_21 = param5;
         this.var_183 = param3;
         this.var_1427 = false;
         this.var_924 = false;
         this.var_1161 = new Timer(this.var_2974,1);
         this.var_1161.addEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerComplete);
         this.var_308 = new AvatarInfoData();
         this.var_2325 = Boolean(this.var_183.getBoolean("menu.avatar.enabled",false));
         this.var_1747 = Boolean(this.var_183.getBoolean("hover.name.enabled",false));
      }
      
      public function get configuration() : IHabboConfigurationManager
      {
         return this.var_183;
      }
      
      private function onTimerComplete(param1:TimerEvent) : void
      {
         this.var_924 = true;
         this.var_1428 = 0;
      }
      
      private function getOwnCharacterInfo() : void
      {
         messageListener.processWidgetMessage(new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_938,0,0));
      }
      
      override public function dispose() : void
      {
         if(disposed)
         {
            return;
         }
         if(this.var_21)
         {
            this.var_21.removeUpdateReceiver(this);
            this.var_21 = null;
         }
         if(this.var_756)
         {
            this.var_756.dispose();
            this.var_756 = null;
         }
         if(this.var_755)
         {
            this.var_755.dispose();
            this.var_755 = null;
         }
         this._view = null;
         this.var_183 = null;
         super.dispose();
      }
      
      override public function registerUpdateEvents(param1:IEventDispatcher) : void
      {
         if(!param1)
         {
            return;
         }
         param1.addEventListener(RoomWidgetAvatarInfoEvent.const_120,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_126,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.const_115,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_111,this.updateEventHandler);
         param1.addEventListener(RoomWidgetFurniInfoUpdateEvent.const_354,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.updateEventHandler);
         param1.addEventListener(RoomWidgetPetInfoUpdateEvent.PET_INFO,this.updateEventHandler);
         param1.addEventListener(RoomWidgetUserDataUpdateEvent.const_125,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_177,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_92,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomEngineUpdateEvent.const_410,this.updateEventHandler);
         param1.addEventListener(RoomWidgetRoomObjectNameEvent.const_593,this.updateEventHandler);
         if(this.var_1747)
         {
            param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_705,this.updateEventHandler);
            param1.addEventListener(RoomWidgetRoomObjectUpdateEvent.const_395,this.updateEventHandler);
         }
         super.registerUpdateEvents(param1);
      }
      
      override public function unregisterUpdateEvents(param1:IEventDispatcher) : void
      {
         if(param1 == null)
         {
            return;
         }
         param1.removeEventListener(RoomWidgetAvatarInfoEvent.const_120,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_126,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.const_115,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_111,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetFurniInfoUpdateEvent.const_354,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserInfoUpdateEvent.BOT,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetPetInfoUpdateEvent.PET_INFO,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetUserDataUpdateEvent.const_125,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_177,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_92,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomEngineUpdateEvent.const_410,this.updateEventHandler);
         param1.removeEventListener(RoomWidgetRoomObjectNameEvent.const_593,this.updateEventHandler);
         if(this.var_1747)
         {
            param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_395,this.updateEventHandler);
            param1.removeEventListener(RoomWidgetRoomObjectUpdateEvent.const_395,this.updateEventHandler);
         }
      }
      
      private function updateEventHandler(param1:RoomWidgetUpdateEvent) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(param1.type)
         {
            case RoomWidgetAvatarInfoEvent.const_120:
               _loc2_ = param1 as RoomWidgetAvatarInfoEvent;
               this.updateView(_loc2_.userId,_loc2_.userName,_loc2_.roomIndex,RoomObjectTypeEnum.const_142,_loc2_.allowNameChange,null);
               this.var_194 = true;
               break;
            case RoomWidgetRoomObjectNameEvent.const_593:
               if(RoomWidgetRoomObjectNameEvent(param1).category == RoomObjectCategoryEnum.const_33)
               {
                  this.updateView(RoomWidgetRoomObjectNameEvent(param1).userId,RoomWidgetRoomObjectNameEvent(param1).userName,RoomWidgetRoomObjectNameEvent(param1).roomIndex,RoomObjectTypeEnum.const_142,false,null);
               }
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_111:
            case RoomWidgetFurniInfoUpdateEvent.const_354:
               this.removeView();
               break;
            case RoomWidgetUserInfoUpdateEvent.const_126:
               this.getOwnCharacterInfo();
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_705:
               if(!(this._view is AvatarMenuView))
               {
                  this.var_1748 = RoomWidgetRoomObjectUpdateEvent(param1).id;
                  messageListener.processWidgetMessage(new RoomWidgetRoomObjectMessage(RoomWidgetRoomObjectMessage.const_732,RoomWidgetRoomObjectUpdateEvent(param1).id,RoomWidgetRoomObjectUpdateEvent(param1).category));
               }
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_395:
               if(!(this._view is AvatarMenuView))
               {
                  if(RoomWidgetRoomObjectUpdateEvent(param1).id == this.var_1748)
                  {
                     if(this._view && !this._view.allowNameChange)
                     {
                        this.removeView();
                        this.var_1748 = -1;
                     }
                  }
               }
               break;
            case RoomWidgetUserInfoUpdateEvent.const_115:
               _loc3_ = param1 as RoomWidgetUserInfoUpdateEvent;
               this.var_308.amIAnyRoomController = _loc3_.amIAnyRoomController;
               this.var_308.amIController = _loc3_.amIController;
               this.var_308.amIOwner = _loc3_.amIOwner;
               this.var_308.canBeAskedAsFriend = _loc3_.canBeAskedAsFriend;
               this.var_308.canBeKicked = _loc3_.canBeKicked;
               this.var_308.canTrade = _loc3_.canTrade;
               this.var_308.canTradeReason = _loc3_.canTradeReason;
               this.var_308.hasFlatControl = _loc3_.hasFlatControl;
               this.var_308.isIgnored = _loc3_.isIgnored;
               this.var_308.respectLeft = _loc3_.respectLeft;
               this.updateView(_loc3_.webID,_loc3_.name,_loc3_.userRoomId,RoomObjectTypeEnum.const_142,false,!!_loc3_.isSpectatorMode ? null : this.var_308);
               break;
            case RoomWidgetUserInfoUpdateEvent.BOT:
               _loc4_ = param1 as RoomWidgetUserInfoUpdateEvent;
               this.updateView(_loc4_.webID,_loc4_.name,_loc4_.userRoomId,RoomObjectTypeEnum.const_608,false,null);
               break;
            case RoomWidgetPetInfoUpdateEvent.PET_INFO:
               _loc5_ = param1 as RoomWidgetPetInfoUpdateEvent;
               this.updateView(_loc5_.id,_loc5_.name,_loc5_.roomIndex,RoomObjectTypeEnum.const_221,false,null);
               break;
            case RoomWidgetUserDataUpdateEvent.const_125:
               if(!this.var_194)
               {
                  this.getOwnCharacterInfo();
               }
               break;
            case RoomWidgetRoomObjectUpdateEvent.const_177:
               _loc6_ = param1 as RoomWidgetRoomObjectUpdateEvent;
               if(this._view && this._view.roomIndex == _loc6_.id)
               {
                  this.disposeView();
               }
               break;
            case RoomWidgetRoomEngineUpdateEvent.const_92:
               this.var_1703 = false;
               break;
            case RoomWidgetRoomEngineUpdateEvent.const_410:
               this.var_1703 = true;
         }
         this.checkUpdateNeed();
      }
      
      private function updateView(param1:int, param2:String, param3:int, param4:int, param5:Boolean, param6:AvatarInfoData) : void
      {
         this.var_924 = false;
         if(this.var_1161.running)
         {
            this.var_1161.stop();
         }
         var _loc7_:Boolean = param6 != null && this.var_2325;
         if(_loc7_ && !(this._view is AvatarMenuView))
         {
            this.disposeView();
         }
         if(this._view == null || this._view.userId != param1 || this._view.userName != param2 || this._view.roomIndex != param3 || this._view.userType != param4 || param5)
         {
            if(this._view)
            {
               this.disposeView();
            }
            if(!this.var_1703)
            {
               if(_loc7_)
               {
                  if(!this.var_755)
                  {
                     this.var_755 = new AvatarMenuView(this);
                  }
                  this._view = this.var_755;
                  AvatarMenuView.setup(this._view as AvatarMenuView,param1,param2,param3,param4,param6);
               }
               else
               {
                  if(!this.var_756)
                  {
                     this.var_756 = new AvatarInfoView(this);
                  }
                  this._view = this.var_756;
                  AvatarInfoView.setup(this._view,param1,param2,param3,param4,param5);
               }
            }
         }
         else if(this._view is AvatarMenuView)
         {
            if(this._view.userName == param2)
            {
               this.disposeView();
            }
         }
      }
      
      public function disposeView() : void
      {
         if(this._view)
         {
            if(this.var_2975)
            {
               this._view.hide();
            }
            else
            {
               this._view.dispose();
               this.var_756 = null;
               this.var_755 = null;
            }
            this._view = null;
            this.var_1427 = true;
            this.var_924 = false;
         }
      }
      
      public function removeView() : void
      {
         if(!this.var_1427)
         {
            this.var_1427 = true;
            this.var_1161.start();
         }
         else if(!this.var_924)
         {
            this.disposeView();
         }
      }
      
      public function checkUpdateNeed() : void
      {
         if(!this.var_21)
         {
            return;
         }
         if(this._view)
         {
            this.var_21.registerUpdateReceiver(this,10);
         }
         else
         {
            this.var_21.removeUpdateReceiver(this);
         }
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(!this._view)
         {
            return;
         }
         _loc2_ = messageListener.processWidgetMessage(new RoomWidgetGetUserLocationMessage(this._view.userId,this._view.userType)) as RoomWidgetUserLocationUpdateEvent;
         if(!_loc2_)
         {
            return;
         }
         if(this.var_924)
         {
            this.var_1428 += param1;
            this._blend = 1 - this.var_1428 / Number(this.var_2976);
         }
         else
         {
            this._blend = 1;
         }
         if(this._blend <= 0)
         {
            this.disposeView();
            return;
         }
         this._view.update(_loc2_.rectangle,_loc2_.screenLocation,this._blend);
      }
   }
}
