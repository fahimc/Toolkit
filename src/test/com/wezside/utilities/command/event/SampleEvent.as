package test.com.wezside.utilities.command.event 
{
	import flash.events.Event;

	/**
	 * @author Sean Lailvaux
	 */
	public class SampleEvent extends Event {
		
		public static const SAMPLE_1_EVENT : String = "SAMPLE_1_EVENT";
		
		public function SampleEvent( type : String ) {
			super( type );
		}
		
		override public function clone() : Event {
			return new SampleEvent( type );
		}
	}
}