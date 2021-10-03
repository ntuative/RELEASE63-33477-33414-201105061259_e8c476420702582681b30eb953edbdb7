package com.sulake.habbo.tracking
{
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   
   public class ToolbarClickTracker
   {
       
      
      private var var_1371:IHabboTracking;
      
      private var var_2028:Boolean = false;
      
      private var var_2931:int = 0;
      
      private var var_2109:int = 0;
      
      public function ToolbarClickTracker(param1:IHabboTracking)
      {
         super();
         this.var_1371 = param1;
      }
      
      public function dispose() : void
      {
         this.var_1371 = null;
      }
      
      public function configure(param1:IHabboConfigurationManager) : void
      {
         this.var_2028 = Boolean(parseInt(param1.getKey("toolbar.tracking.enabled","1")));
         this.var_2931 = parseInt(param1.getKey("toolbar.tracking.max.events","100"));
      }
      
      public function track(param1:String) : void
      {
         if(!this.var_2028)
         {
            return;
         }
         ++this.var_2109;
         if(this.var_2109 <= this.var_2931)
         {
            this.var_1371.track("toolbar",param1);
         }
      }
   }
}
