package scripting.imports;

/**
 * Runtime facade for the FlxColor abstract, which cannot be resolved by
 * Type.resolveClass() when Polymod parses script imports.
 */
class HScriptFlxColor
{
	public static var TRANSPARENT:flixel.util.FlxColor = flixel.util.FlxColor.TRANSPARENT;
	public static var WHITE:flixel.util.FlxColor = flixel.util.FlxColor.WHITE;
	public static var GRAY:flixel.util.FlxColor = flixel.util.FlxColor.GRAY;
	public static var BLACK:flixel.util.FlxColor = flixel.util.FlxColor.BLACK;

	public static var GREEN:flixel.util.FlxColor = flixel.util.FlxColor.GREEN;
	public static var LIME:flixel.util.FlxColor = flixel.util.FlxColor.LIME;
	public static var YELLOW:flixel.util.FlxColor = flixel.util.FlxColor.YELLOW;
	public static var ORANGE:flixel.util.FlxColor = flixel.util.FlxColor.ORANGE;
	public static var RED:flixel.util.FlxColor = flixel.util.FlxColor.RED;
	public static var PURPLE:flixel.util.FlxColor = flixel.util.FlxColor.PURPLE;
	public static var BLUE:flixel.util.FlxColor = flixel.util.FlxColor.BLUE;
	public static var BROWN:flixel.util.FlxColor = flixel.util.FlxColor.BROWN;
	public static var PINK:flixel.util.FlxColor = flixel.util.FlxColor.PINK;
	public static var MAGENTA:flixel.util.FlxColor = flixel.util.FlxColor.MAGENTA;
	public static var CYAN:flixel.util.FlxColor = flixel.util.FlxColor.CYAN;

	public static function fromInt(value:Int):flixel.util.FlxColor
		return flixel.util.FlxColor.fromInt(value);

	public static function fromRGB(red:Int, green:Int, blue:Int, alpha:Int = 255):flixel.util.FlxColor
		return flixel.util.FlxColor.fromRGB(red, green, blue, alpha);

	public static function fromRGBFloat(red:Float, green:Float, blue:Float, alpha:Float = 1):flixel.util.FlxColor
		return flixel.util.FlxColor.fromRGBFloat(red, green, blue, alpha);

	public static function fromCMYK(cyan:Float, magenta:Float, yellow:Float, black:Float, alpha:Float = 1):flixel.util.FlxColor
		return flixel.util.FlxColor.fromCMYK(cyan, magenta, yellow, black, alpha);

	public static function fromHSB(hue:Float, saturation:Float, brightness:Float, alpha:Float = 1):flixel.util.FlxColor
		return flixel.util.FlxColor.fromHSB(hue, saturation, brightness, alpha);

	public static function fromHSL(hue:Float, saturation:Float, lightness:Float, alpha:Float = 1):flixel.util.FlxColor
		return flixel.util.FlxColor.fromHSL(hue, saturation, lightness, alpha);

	public static function fromString(str:String):Null<flixel.util.FlxColor>
		return flixel.util.FlxColor.fromString(str);

	public static function interpolate(color1:flixel.util.FlxColor, color2:flixel.util.FlxColor, factor:Float = 0.5):flixel.util.FlxColor
		return flixel.util.FlxColor.interpolate(color1, color2, factor);

	public static function multiply(lhs:flixel.util.FlxColor, rhs:flixel.util.FlxColor):flixel.util.FlxColor
		return flixel.util.FlxColor.multiply(lhs, rhs);
}
