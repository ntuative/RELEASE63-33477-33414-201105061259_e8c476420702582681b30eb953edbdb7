package com.sulake.room.object.visualization.utils
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.assets.IAsset;
   import flash.display.BitmapData;
   
   public class GraphicAsset implements IGraphicAsset
   {
       
      
      private var var_2082:String;
      
      private var var_2521:String;
      
      private var var_430:BitmapDataAsset;
      
      private var var_1385:Boolean;
      
      private var var_1386:Boolean;
      
      private var var_2520:Boolean;
      
      private var _offsetX:int;
      
      private var var_1273:int;
      
      private var var_246:int;
      
      private var _height:int;
      
      private var var_813:Boolean;
      
      public function GraphicAsset(param1:String, param2:String, param3:IAsset, param4:Boolean, param5:Boolean, param6:int, param7:int, param8:Boolean = false)
      {
         super();
         this.var_2082 = param1;
         this.var_2521 = param2;
         var _loc9_:BitmapDataAsset = param3 as BitmapDataAsset;
         if(_loc9_ != null)
         {
            this.var_430 = _loc9_;
            this.var_813 = false;
         }
         else
         {
            this.var_430 = null;
            this.var_813 = true;
         }
         this.var_1385 = param4;
         this.var_1386 = param5;
         this._offsetX = param6;
         this.var_1273 = param7;
         this.var_2520 = param8;
      }
      
      public function dispose() : void
      {
         this.var_430 = null;
      }
      
      private function initialize() : void
      {
         var _loc1_:* = null;
         if(!this.var_813 && this.var_430 != null)
         {
            _loc1_ = this.var_430.content as BitmapData;
            if(_loc1_ != null)
            {
               this.var_246 = _loc1_.width;
               this._height = _loc1_.height;
            }
            this.var_813 = true;
         }
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1386;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1385;
      }
      
      public function get width() : int
      {
         this.initialize();
         return this.var_246;
      }
      
      public function get height() : int
      {
         this.initialize();
         return this._height;
      }
      
      public function get assetName() : String
      {
         return this.var_2082;
      }
      
      public function get libraryAssetName() : String
      {
         return this.var_2521;
      }
      
      public function get asset() : IAsset
      {
         return this.var_430;
      }
      
      public function get usesPalette() : Boolean
      {
         return this.var_2520;
      }
      
      public function get offsetX() : int
      {
         if(!this.var_1385)
         {
            return this._offsetX;
         }
         return -(this.width + this._offsetX);
      }
      
      public function get offsetY() : int
      {
         if(!this.var_1386)
         {
            return this.var_1273;
         }
         return -(this.height + this.var_1273);
      }
      
      public function get originalOffsetX() : int
      {
         return this._offsetX;
      }
      
      public function get originalOffsetY() : int
      {
         return this.var_1273;
      }
   }
}
