package com.sulake.core.communication.connection
{
   public interface IConnectionStateListener
   {
       
      
      function connectionInit(param1:String, param2:int) : void;
      
      function messageReceived(param1:String, param2:String) : void;
      
      function method_10(param1:String, param2:String) : void;
   }
}
