package com.wezside.data.collection
{
	import com.wezside.data.iterator.IIterator;
	import com.wezside.utilities.logging.Tracer;

	import flash.utils.Dictionary;
	import flash.utils.getQualifiedClassName;

	/**
	 * @author Wesley.Swanepoel
	 */
	public class DictionaryCollection implements ICollection
	{
		
		
		private var _length:int;
		private var _collection:Dictionary;
		
		
		public function DictionaryCollection() 
		{
			_collection = new Dictionary();
		}
		
		public function purge() : void
		{
			for each ( var obj:* in _collection )
				delete _collection[ obj ];
		}
		
		public function addElement( key:*, value:* ):void
		{
			_collection[ key ] = value;
			_length++;
		}		
		
		public function getElement( key:* ):*
		{
			return _collection[ key ];
		}				

		public function iterator():IIterator
		{
			return null;
		}
		
		public function hasElement( key:* ):Boolean
		{					
			return _collection[ key ];
		}

		public function find( value:String = "" ):Object
		{
			return _collection[ value ];
		}

		public function toString():String
		{
			var str:String = "";
			for each ( var obj:* in _collection )
				str += obj.toString() + ",";			
			return str;
		}
		
		public function get length():int
		{
			return _length;
		}
	}
}
