package scripting.imports;

import flixel.math.FlxPoint.FlxBasePoint;

/**
 * Runtime facade for the FlxPoint abstract. It extends FlxBasePoint so values
 * created with `new FlxPoint()` still satisfy APIs expecting a FlxPoint.
 */
class HScriptFlxPoint extends FlxBasePoint
{
	public static var EPSILON:Float = flixel.math.FlxPoint.EPSILON;
	public static var EPSILON_SQUARED:Float = flixel.math.FlxPoint.EPSILON_SQUARED;
	public static var EPSILON_LENGTH:Float = flixel.math.FlxPoint.EPSILON_LENGTH;

	public static function get(x:Float = 0, y:Float = 0):flixel.math.FlxPoint
		return flixel.math.FlxPoint.get(x, y);

	public static function weak(x:Float = 0, y:Float = 0):flixel.math.FlxPoint
		return flixel.math.FlxPoint.weak(x, y);

	public function new(x:Float = 0, y:Float = 0)
	{
		super(x, y);
	}
}
