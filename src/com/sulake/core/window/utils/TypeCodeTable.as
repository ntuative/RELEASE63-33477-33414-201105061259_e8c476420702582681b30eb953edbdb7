package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_984;
         param1["bitmap"] = const_933;
         param1["border"] = const_976;
         param1["border_notify"] = const_1600;
         param1["button"] = const_641;
         param1["button_thick"] = const_715;
         param1["button_icon"] = const_1795;
         param1["button_group_left"] = const_865;
         param1["button_group_center"] = const_695;
         param1["button_group_right"] = const_741;
         param1["canvas"] = const_746;
         param1["checkbox"] = const_858;
         param1["closebutton"] = const_1215;
         param1["container"] = const_438;
         param1["container_button"] = const_890;
         param1["display_object_wrapper"] = const_945;
         param1["dropmenu"] = const_569;
         param1["dropmenu_item"] = const_497;
         param1["frame"] = const_398;
         param1["frame_notify"] = const_1839;
         param1["header"] = const_948;
         param1["html"] = const_1135;
         param1["icon"] = const_1094;
         param1["itemgrid"] = const_1278;
         param1["itemgrid_horizontal"] = const_511;
         param1["itemgrid_vertical"] = const_856;
         param1["itemlist"] = const_1268;
         param1["itemlist_horizontal"] = const_416;
         param1["itemlist_vertical"] = const_403;
         param1["label"] = WINDOW_TYPE_LABEL;
         param1["maximizebox"] = const_1596;
         param1["menu"] = const_1699;
         param1["menu_item"] = const_1601;
         param1["submenu"] = const_1288;
         param1["minimizebox"] = const_1681;
         param1["notify"] = const_1805;
         param1["null"] = const_868;
         param1["password"] = const_982;
         param1["radiobutton"] = const_949;
         param1["region"] = const_603;
         param1["restorebox"] = const_1635;
         param1["scaler"] = const_623;
         param1["scaler_horizontal"] = const_1846;
         param1["scaler_vertical"] = const_1855;
         param1["scrollbar_horizontal"] = const_484;
         param1["scrollbar_vertical"] = const_850;
         param1["scrollbar_slider_button_up"] = const_1214;
         param1["scrollbar_slider_button_down"] = const_1223;
         param1["scrollbar_slider_button_left"] = const_1227;
         param1["scrollbar_slider_button_right"] = const_1180;
         param1["scrollbar_slider_bar_horizontal"] = const_1262;
         param1["scrollbar_slider_bar_vertical"] = const_1264;
         param1["scrollbar_slider_track_horizontal"] = const_1121;
         param1["scrollbar_slider_track_vertical"] = const_1206;
         param1["scrollable_itemlist"] = const_1726;
         param1["scrollable_itemlist_vertical"] = const_528;
         param1["scrollable_itemlist_horizontal"] = const_1274;
         param1["selector"] = const_751;
         param1["selector_list"] = const_895;
         param1["submenu"] = const_1288;
         param1["tab_button"] = const_789;
         param1["tab_container_button"] = const_1241;
         param1["tab_context"] = const_435;
         param1["tab_content"] = const_1159;
         param1["tab_selector"] = const_691;
         param1["text"] = const_610;
         param1["input"] = const_971;
         param1["toolbar"] = const_1784;
         param1["tooltip"] = const_420;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
