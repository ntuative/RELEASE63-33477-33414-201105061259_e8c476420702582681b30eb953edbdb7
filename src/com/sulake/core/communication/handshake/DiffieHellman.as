package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   import com.sulake.core.utils.ErrorReportStorage;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1016:BigInteger;
      
      private var var_2230:BigInteger;
      
      private var var_1679:BigInteger;
      
      private var var_2229:BigInteger;
      
      private var var_1389:BigInteger;
      
      private var var_1678:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         this.var_1389 = param1;
         this.var_1678 = param2;
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         ErrorReportStorage.addDebugData("DiffieHellman","Prime: " + this.var_1389.toString() + ",generator: " + this.var_1678.toString() + ",secret: " + param1);
         this.var_1016 = new BigInteger();
         this.var_1016.fromRadix(param1,param2);
         this.var_2230 = this.var_1678.modPow(this.var_1016,this.var_1389);
         return true;
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         this.var_1679 = new BigInteger();
         this.var_1679.fromRadix(param1,param2);
         this.var_2229 = this.var_1679.modPow(this.var_1016,this.var_1389);
         return this.getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return this.var_2230.toRadix(param1);
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return this.var_2229.toRadix(param1);
      }
   }
}
