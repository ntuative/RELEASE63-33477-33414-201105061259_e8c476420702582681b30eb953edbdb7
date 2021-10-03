package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_2134:int = 0;
      
      public static const const_1609:int = 1;
      
      public static const const_1644:int = 2;
      
      public static const const_2078:int = 3;
      
      public static const const_2132:int = 4;
      
      public static const const_2122:int = 5;
      
      public static const const_1809:int = 10;
      
      public static const const_2130:int = 11;
      
      public static const const_2109:int = 12;
      
      public static const const_2062:int = 13;
      
      public static const const_2092:int = 16;
      
      public static const const_2004:int = 17;
      
      public static const const_2000:int = 18;
      
      public static const const_2091:int = 19;
      
      public static const const_1986:int = 20;
      
      public static const const_2020:int = 22;
      
      public static const const_2100:int = 23;
      
      public static const const_1996:int = 24;
      
      public static const const_2015:int = 25;
      
      public static const const_1989:int = 26;
      
      public static const const_2104:int = 27;
      
      public static const const_2006:int = 28;
      
      public static const const_1957:int = 29;
      
      public static const const_1988:int = 100;
      
      public static const const_1991:int = 101;
      
      public static const const_2096:int = 102;
      
      public static const const_1939:int = 103;
      
      public static const const_1977:int = 104;
      
      public static const const_2045:int = 105;
      
      public static const const_2101:int = 106;
      
      public static const const_1963:int = 107;
      
      public static const const_2007:int = 108;
      
      public static const const_2114:int = 109;
      
      public static const const_1955:int = 110;
      
      public static const const_2024:int = 111;
      
      public static const const_1985:int = 112;
      
      public static const const_2029:int = 113;
      
      public static const const_1970:int = 114;
      
      public static const const_2084:int = 115;
      
      public static const const_2099:int = 116;
      
      public static const const_1961:int = 117;
      
      public static const const_2119:int = 118;
      
      public static const const_2066:int = 119;
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : int
      {
         return (this.var_10 as DisconnectReasonParser).reason;
      }
      
      public function get reasonString() : String
      {
         switch(this.reason)
         {
            case const_1609:
            case const_1809:
               return "banned";
            case const_1644:
               return "concurrentlogin";
            default:
               return "logout";
         }
      }
   }
}
