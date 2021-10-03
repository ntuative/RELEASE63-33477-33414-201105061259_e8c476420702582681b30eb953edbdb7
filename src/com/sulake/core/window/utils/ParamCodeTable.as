package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_217;
         param1["bound_to_parent_rect"] = const_106;
         param1["child_window"] = const_1201;
         param1["embedded_controller"] = const_1243;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_31;
         param1["internal_event_handling"] = const_934;
         param1["mouse_dragging_target"] = const_267;
         param1["mouse_dragging_trigger"] = const_428;
         param1["mouse_scaling_target"] = const_337;
         param1["mouse_scaling_trigger"] = const_475;
         param1["horizontal_mouse_scaling_trigger"] = const_263;
         param1["vertical_mouse_scaling_trigger"] = const_274;
         param1["observe_parent_input_events"] = const_1102;
         param1["optimize_region_to_layout_size"] = const_524;
         param1["parent_window"] = const_1156;
         param1["relative_horizontal_scale_center"] = const_199;
         param1["relative_horizontal_scale_fixed"] = const_138;
         param1["relative_horizontal_scale_move"] = const_442;
         param1["relative_horizontal_scale_strech"] = const_421;
         param1["relative_scale_center"] = const_1177;
         param1["relative_scale_fixed"] = const_871;
         param1["relative_scale_move"] = const_1100;
         param1["relative_scale_strech"] = const_1131;
         param1["relative_vertical_scale_center"] = const_222;
         param1["relative_vertical_scale_fixed"] = const_146;
         param1["relative_vertical_scale_move"] = const_278;
         param1["relative_vertical_scale_strech"] = const_367;
         param1["on_resize_align_left"] = const_870;
         param1["on_resize_align_right"] = const_568;
         param1["on_resize_align_center"] = const_473;
         param1["on_resize_align_top"] = const_914;
         param1["on_resize_align_bottom"] = const_625;
         param1["on_resize_align_middle"] = const_636;
         param1["on_accommodate_align_left"] = const_1236;
         param1["on_accommodate_align_right"] = const_519;
         param1["on_accommodate_align_center"] = const_723;
         param1["on_accommodate_align_top"] = const_1286;
         param1["on_accommodate_align_bottom"] = const_598;
         param1["on_accommodate_align_middle"] = const_699;
         param1["route_input_events_to_parent"] = const_502;
         param1["use_parent_graphic_context"] = const_34;
         param1["draggable_with_mouse"] = const_1116;
         param1["scalable_with_mouse"] = const_1107;
         param1["reflect_horizontal_resize_to_parent"] = const_638;
         param1["reflect_vertical_resize_to_parent"] = const_485;
         param1["reflect_resize_to_parent"] = const_347;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1230;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
