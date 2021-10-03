package com.sulake.core.window.utils.tablet
{
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.utils.EventProcessorState;
   import com.sulake.core.window.utils.IEventQueue;
   import com.sulake.core.window.utils.MouseEventProcessor;
   
   public class TabletEventProcessor extends MouseEventProcessor
   {
       
      
      private var var_3017:String = "";
      
      public function TabletEventProcessor()
      {
         super();
      }
      
      override public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         if(param2.length == 0)
         {
            return;
         }
         var_80 = param1.desktop;
         var_61 = param1.var_1343 as WindowController;
         var_173 = param1.var_1348 as WindowController;
         var_171 = param1.renderer;
         var_881 = param1.var_1345;
         param2.begin();
         param2.end();
         param1.desktop = var_80;
         param1.var_1343 = var_61;
         param1.var_1348 = var_173;
         param1.renderer = var_171;
         param1.var_1345 = var_881;
      }
   }
}
