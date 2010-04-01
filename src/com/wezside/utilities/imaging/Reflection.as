package com.wezside.utilities.imaging 
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.display.BlendMode;
	import flash.display.GradientType;
	import flash.display.Shape;
	import flash.display.SpreadMethod;
	import flash.display.Sprite;
	import flash.geom.ColorTransform;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;

	/**
	 * @author Wesley.Swanepoel
	 */
	public class Reflection extends Sprite 
	{


		private var result:BitmapData;

		
		public function Reflection( sourceBmp:Bitmap, ratios:Array, reflectionHeight:Number = 100 )
		{

			var matrix:Matrix = new Matrix();
			matrix.scale( 1, -1 );
			matrix.translate( 0, sourceBmp.height );
			
			var reflection:BitmapData = new BitmapData( sourceBmp.width, sourceBmp.height, true, 0x000000FF );
			reflection.draw( sourceBmp, matrix, new ColorTransform( 1, 1, 1, 1 ), BlendMode.NORMAL, new Rectangle( 0, 0, sourceBmp.width, reflectionHeight ));

			matrix = new Matrix();
			matrix.createGradientBox( reflection.width, reflectionHeight, Math.PI / 2 );
		 
			var linear:String = GradientType.LINEAR;
			var colors:Array = [0xFFFFFF, 0xFFFFFF];
			var alphas:Array = [1.0, 0.0];
			var spread:String = SpreadMethod.PAD;

			var gradient:Shape = new Shape();
			gradient.graphics.beginGradientFill( linear, colors, alphas, ratios, matrix, spread );
			gradient.graphics.drawRect(0, 0, reflection.width, reflectionHeight);
			gradient.graphics.endFill();
		 
			var gradientBitmap:BitmapData = new BitmapData( gradient.width, gradient.height, true, 0 );
			gradientBitmap.draw( gradient );
		 
			result = new BitmapData( reflection.width, reflection.height, true, 0 );
			result.copyPixels( reflection, result.rect, new Point(), gradientBitmap, new Point(), true );

			addChild( new Bitmap( result ) );
			
		}
		
		
		public function get bitmap():Bitmap
		{
			return new Bitmap( result );
		}

	}
}
