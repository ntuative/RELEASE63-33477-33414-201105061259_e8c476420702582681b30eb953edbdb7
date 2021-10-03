package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1226:int = 1;
      
      public static const const_843:int = 2;
      
      public static const const_977:int = 3;
      
      public static const const_1849:int = 4;
       
      
      private var _index:int;
      
      private var var_2678:String;
      
      private var var_2680:String;
      
      private var var_2677:Boolean;
      
      private var var_2676:String;
      
      private var var_994:String;
      
      private var var_2679:int;
      
      private var var_2440:int;
      
      private var _type:int;
      
      private var var_2477:String;
      
      private var var_1002:GuestRoomData;
      
      private var var_1003:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2678 = param1.readString();
         this.var_2680 = param1.readString();
         this.var_2677 = param1.readInteger() == 1;
         this.var_2676 = param1.readString();
         this.var_994 = param1.readString();
         this.var_2679 = param1.readInteger();
         this.var_2440 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1226)
         {
            this.var_2477 = param1.readString();
         }
         else if(this._type == const_977)
         {
            this.var_1003 = new PublicRoomData(param1);
         }
         else if(this._type == const_843)
         {
            this.var_1002 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1002 != null)
         {
            this.var_1002.dispose();
            this.var_1002 = null;
         }
         if(this.var_1003 != null)
         {
            this.var_1003.dispose();
            this.var_1003 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2678;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2680;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2677;
      }
      
      public function get picText() : String
      {
         return this.var_2676;
      }
      
      public function get picRef() : String
      {
         return this.var_994;
      }
      
      public function get folderId() : int
      {
         return this.var_2679;
      }
      
      public function get tag() : String
      {
         return this.var_2477;
      }
      
      public function get userCount() : int
      {
         return this.var_2440;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1002;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1003;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1226)
         {
            return 0;
         }
         if(this.type == const_843)
         {
            return this.var_1002.maxUserCount;
         }
         if(this.type == const_977)
         {
            return this.var_1003.maxUsers;
         }
         return 0;
      }
   }
}
