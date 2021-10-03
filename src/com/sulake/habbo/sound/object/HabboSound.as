package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_1234:Sound = null;
      
      private var var_455:SoundChannel = null;
      
      private var var_542:Number;
      
      private var _complete:Boolean;
      
      public function HabboSound(param1:Sound)
      {
         super();
         this.var_1234 = param1;
         this.var_1234.addEventListener(Event.COMPLETE,this.onComplete);
         this.var_542 = 1;
         this._complete = false;
      }
      
      public function play(param1:Number = 0.0) : Boolean
      {
         this._complete = false;
         this.var_455 = this.var_1234.play(0);
         this.volume = this.var_542;
         return true;
      }
      
      public function stop() : Boolean
      {
         this.var_455.stop();
         return true;
      }
      
      public function get volume() : Number
      {
         return this.var_542;
      }
      
      public function set volume(param1:Number) : void
      {
         this.var_542 = param1;
         if(this.var_455 != null)
         {
            this.var_455.soundTransform = new SoundTransform(this.var_542);
         }
      }
      
      public function get position() : Number
      {
         return this.var_455.position;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get length() : Number
      {
         return this.var_1234.length;
      }
      
      public function get ready() : Boolean
      {
         return !this.var_1234.isBuffering;
      }
      
      public function get finished() : Boolean
      {
         return !this._complete;
      }
      
      public function get fadeOutSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeOutSeconds(param1:Number) : void
      {
      }
      
      public function get fadeInSeconds() : Number
      {
         return 0;
      }
      
      public function set fadeInSeconds(param1:Number) : void
      {
      }
      
      private function onComplete(param1:Event) : void
      {
         this._complete = true;
      }
   }
}
