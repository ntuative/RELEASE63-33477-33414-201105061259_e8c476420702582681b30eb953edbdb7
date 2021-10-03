package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_445:int = 1;
      
      public static const const_241:int = 2;
      
      public static const const_311:int = 3;
      
      public static const const_407:int = 4;
      
      public static const const_266:int = 5;
      
      public static const const_449:int = 1;
      
      public static const const_906:int = 2;
      
      public static const const_958:int = 3;
      
      public static const const_825:int = 4;
      
      public static const const_300:int = 5;
      
      public static const const_859:int = 6;
      
      public static const const_959:int = 7;
      
      public static const const_270:int = 8;
      
      public static const const_433:int = 9;
      
      public static const const_1944:int = 10;
      
      public static const const_947:int = 11;
      
      public static const const_481:int = 12;
       
      
      private var var_421:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_421 = new Array();
         this.var_421.push(new Tab(this._navigator,const_445,const_481,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_471));
         this.var_421.push(new Tab(this._navigator,const_241,const_449,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_471));
         this.var_421.push(new Tab(this._navigator,const_407,const_947,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1235));
         this.var_421.push(new Tab(this._navigator,const_311,const_300,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_471));
         this.var_421.push(new Tab(this._navigator,const_266,const_270,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_766));
         this.setSelectedTab(const_445);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_407;
      }
      
      public function get tabs() : Array
      {
         return this.var_421;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_421)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_421)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_421)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
