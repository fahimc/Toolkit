package com.wezside.utilities.command {
	import flash.events.Event;

	/**
	 * @author Sean Lailvaux
	 */
	public class CommandEvent extends Event {
		
		public static const SEQUENCE_COMPLETE 	: String = "CommandEvent_SEQUENCE_COMPLETE";
		
		public var commandEventType : String;
		public var asynchronous : Boolean;
		public var data : *;
		
		
		public function CommandEvent( type : String, groupID : String = "", asynchronous : Boolean = false, data:* = null ) {
			super( type );
			this.groupID = groupID;
			this.asynchronous = asynchronous;
			this.data = data;
		}
		
		override public function clone() : Event {
			var commandEvent : CommandEvent = new CommandEvent( type );
			commandEvent.commandEventType = commandEventType;
			commandEvent.data = data;
			return commandEvent;
		}
	}
}