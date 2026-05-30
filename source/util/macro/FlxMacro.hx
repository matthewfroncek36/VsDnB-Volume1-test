package util.macro;

#if macro
import haxe.macro.Context;
import haxe.macro.Expr.Field;

/**
 * Macro utilities for the project.
 */
class FlxMacro
{
	/**
	 * Adds runtime fields needed by the project to `flixel.FlxBasic`.
	 */
	public static function buildFlxBasic():Array<Field>
	{
		var fields:Array<Field> = Context.getBuildFields();

		// `Main.toggleFuckedFPS` expects `util.backend.debug.FPSDisplay` to access this.
		// Keeping it compatible: expose a `zIndex` field at runtime.
		fields = fields.concat([
			{
				name: 'zIndex',
				access: [APublic],
				kind: FVar(macro :Int, macro $v{0}),
				pos: Context.currentPos(),
			}
		]);

		return fields;
	}
}
#end

