package com.wezside.utilities.business.rpc
{
	import com.wezside.utilities.business.IResponder;

	import flash.events.Event;

	/**
	 * @author Wesley.Swanepoel
	 * @version .326
	 */
	
   public interface IService
   {

		function get wsdl():String;
		function set wsdl( value:String ):void;
		function get responder():IResponder;
		function set responder( value:IResponder ):void;
		function get url():String;
		function set url( value:String ):void;
		function get method():String;
		function set method( value:String ):void;
		function get contentType():String;
		function set contentType( value:String ):void;
		function get loaded():Boolean;
		function set loaded( value:Boolean ):void;
		function get requestHeaders():Array;
		function set requestHeaders( value:Array ):void;		

		function addEventListener( type:String, listener:Function, useCapture:Boolean = false, priority:int = 0, useWeakReference:Boolean = false):void;
		function dispatchEvent( event:Event ):Boolean;
		function removeEventListener(type : String, listener : Function, useCapture : Boolean = false) : void;
		function hasEventListener(type : String) : Boolean;		

		function loadWSDL(uri:String = null):void;
		function kill():void;
		function send( params:Object = null, operationID:String = "" ):Boolean;
		function toString():String;
 	
   }
}