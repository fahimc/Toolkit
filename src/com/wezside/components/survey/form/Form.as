package com.wezside.components.survey.form 
{
	import com.wezside.utilities.managers.style.IStyleManager;
	import com.wezside.components.text.Label;
	import com.wezside.components.container.ContainerEvent;
	import com.wezside.components.survey.data.IFormData;
	import com.wezside.components.container.VBox;
	import flash.display.Sprite;

	/**
	 * @author Wesley.Swanepoel
	 */
	public class Form extends Sprite implements IForm 
	{

		public static const STATE_CREATION_COMPLETE:String = "stateFormCreationComplete";
		
		
		private var _items:Array = [];
		private var _layout:IFormLayout;
		private var _state:String;
		private var container:VBox;
		private var _data:IFormData;
		private var _heading:Label;
		private var _styleManager:IStyleManager;

		
		public function Form() 
		{
		}
		
		public function createChildren():void
		{
			container = new VBox();
			container.addEventListener( ContainerEvent.CREATION_COMPLETE, containerCreated );
			addChild( container );
			
			if ( _data.heading != "" )
			{
				_heading = new Label();
				_heading.text = _data.heading;
				_heading.styleManager = _styleManager;
			}
			
			container.children = [ _heading ];
		}


		public function purge():void
		{
		}
		
		public function get items():Array
		{
			return _items;
		}
		
		public function get layout():IFormLayout
		{
			return _layout;
		}
		
		public function set items( value:Array ):void
		{
			_items = value;
		}
		
		public function set layout( value:IFormLayout ):void
		{
			_layout = value;
		}
		
		public function get state():String
		{
			return _state;
		}
		
		public function set state( value:String ):void
		{
			_state = value;
			switch( _state )
			{
				case STATE_CREATION_COMPLETE: dispatchEvent( new FormEvent( FormEvent.CREATION_COMPLETE ));					
					break;
				default:
			}
		}
		
		public function get data():IFormData
		{
			return _data;
		}
		
		public function set data( value:IFormData ):void
		{
			_data = value;
		}
		

		private function containerCreated( event:ContainerEvent ):void 
		{
			container.update();
			container.removeEventListener( ContainerEvent.CREATION_COMPLETE, containerCreated );
			state = STATE_CREATION_COMPLETE;
		}
		
		public function get styleManager():IStyleManager
		{
			return _styleManager;
		}
		
		public function set styleManager( value:IStyleManager ):void
		{
			_styleManager = value;
		}		
	}
}
