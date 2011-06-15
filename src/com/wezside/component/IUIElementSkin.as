package com.wezside.component 
{
	import flash.display.DisplayObject;

	/**
	 * @author Wesley.Swanepoel
	 */
	public interface IUIElementSkin
	{
		function get upSkin():DisplayObject;
		function set upSkin( value:DisplayObject ):void;
		
		function get overSkin():DisplayObject;
		function set overSkin( value:DisplayObject ):void;
		
		function get downSkin():DisplayObject;
		function set downSkin( value:DisplayObject ):void;
		
		function get selectedSkin():DisplayObject;
		function set selectedSkin( value:DisplayObject ):void;
		
		function get invalidSkin():DisplayObject;
		function set invalidSkin( value:DisplayObject ):void;
		
		function get disabledSkin():DisplayObject;
		function set disabledSkin( value:DisplayObject ):void;
		
		function get width():Number;
		function set width( value:Number ):void;
		
		function get height():Number;
		function set height( value:Number ):void;
		
		function setSize( w:int, h:int ):void;
		function setSkin( visibleStates:Array ):void;
		function hasSkinProperty( V:* = undefined ):Boolean;

	}
}
