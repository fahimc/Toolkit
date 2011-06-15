/*
	The MIT License

	Copyright (c) 2011 Wesley Swanepoel
	
	Permission is hereby granted, free of charge, to any person obtaining a copy
	of this software and associated documentation files (the "Software"), to deal
	in the Software without restriction, including without limitation the rights
	to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
	copies of the Software, and to permit persons to whom the Software is
	furnished to do so, subject to the following conditions:
	
	The above copyright notice and this permission notice shall be included in
	all copies or substantial portions of the Software.
	
	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
	IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
	FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
	AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
	LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
	OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
	THE SOFTWARE.
 */
package com.wezside.component 
{
	import com.wezside.component.decorators.layout.ILayout;
	import com.wezside.component.decorators.scroll.IScroll;
	import com.wezside.component.decorators.shape.IShape;
	import com.wezside.utilities.manager.style.IStyleManager;
	import flash.text.StyleSheet;


	/**
	 * @author Wesley.Swanepoel
	 */
	public interface IUIElement extends IUIDecorator
	{
		
		 function get styleManager():IStyleManager;
		 function set styleManager( value:IStyleManager ):void;
		 function get styleName():String;
		 function set styleName( value:String ):void;
		 function get styleSheet():StyleSheet;
		 function set styleSheet( value:StyleSheet ):void;
		 function get skin():IUIElementSkin;
		 function set skin( value:IUIElementSkin ):void;
		 function get x():Number;
		 function set x( value:Number ):void;
		 function get y():Number;
		 function set y( value:Number ):void;
		 function get background():IShape;
		 function set background( value:IShape ):void;
		 function get layout():ILayout;
		 function set layout( value:ILayout ):void;
		 function get scroll():IScroll;
		 function set scroll( value:IScroll ):void;
		 function get state():String;
		 function set state( value:String ):void;
		 function hasOwnProperty( V:* = undefined ):Boolean;
		 
		 function build():void;
		 function setStyle():void;		 
		 function purge():void;
	
	}
}
