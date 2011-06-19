package com.wezside.component 
{
	import com.wezside.data.iterator.IIterator;

	import flash.events.IEventDispatcher;

	/**
	 * @author Wesley.Swanepoel
	 */
	public interface IUIDecorator extends IEventDispatcher
	{
	
		function get width():Number
		function set width( value:Number ):void
		
		function get height():Number
		function set height( value:Number ):void	
				
	 	function iterator( type:String = null ):IIterator;
		function arrange():void;
	
	}
}