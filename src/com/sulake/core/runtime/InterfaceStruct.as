package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1503:IID;
      
      private var var_1913:String;
      
      private var var_101:IUnknown;
      
      private var var_804:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1503 = param1;
         this.var_1913 = getQualifiedClassName(this.var_1503);
         this.var_101 = param2;
         this.var_804 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1503;
      }
      
      public function get iis() : String
      {
         return this.var_1913;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_101;
      }
      
      public function get references() : uint
      {
         return this.var_804;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_101 == null;
      }
      
      public function dispose() : void
      {
         this.var_1503 = null;
         this.var_1913 = null;
         this.var_101 = null;
         this.var_804 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_804;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_804) : uint(0);
      }
   }
}
