package modding;

import polymod.Polymod.PolymodErrorType;
import flixel.FlxG;
import polymod.Polymod.PolymodError;

class PolymodErrorHandler
{
    public static function printError(error:PolymodError):Void
    {
        switch (error.code)
        {
            case SCRIPT_PARSE_ERROR:
                // Print the parsing error in the console.
                log(ERROR, error.message);

                // Show a popup.
                showErrorAlert(error.message, 'There was an error while parsing a script.');

            case SCRIPT_CLASS_MODULE_BLACKLISTED:
                log(ERROR, error.message);

                // Show a pop-up for a blacklist error.
                showErrorAlert(error.message, 'Polymod Script Blacklist Error');

            case SCRIPT_RUNTIME_EXCEPTION:
                // Log the runtime error in the console.
                log(ERROR, 'SCRIPT RUNTIME ERROR - ${error.message}');

                showErrorAlert(error.message, 'There was an error while the script was running.');
            case PARSE_MOD_META, PARSE_MOD_VERSION, PARSE_MOD_API_VERSION, PARSE_API_VERSION:
                log(ERROR, 'MOD PARSING ERROR - ${error.message}');

                showErrorAlert(error.message, 'There was an error while parsing a mod.');
                
            case SCRIPT_CLASS_NOT_REGISTERED, SCRIPT_CLASS_MODULE_NOT_FOUND:
                log(WARNING, 'SCRIPT WARNING - ${error.message}');
                
                showErrorAlert(error.message, 'Polymod Script Notice');
                
            case MOD_LOAD_FAILED:
                log(NOTICE, '[MOD] FAILED TO LOAD - ${error.message}');
            case MOD_LOAD_PREPARE:
                log(NOTICE, '[MOD] LOADING - ${error.message}');
            case MOD_LOAD_DONE:
                log(NOTICE, '[MOD] FINISHED LOADING: ${error.message}');

            case SCRIPT_NOT_FOUND:
                log(ERROR, 'SCRIPT NOT FOUND - ${error.message}');
            case SCRIPT_CLASS_ALREADY_REGISTERED, SCRIPT_CLASS_MODULE_ALREADY_IMPORTED:
                log(WARNING, 'SCRIPT INFO - ${error.message}');
            case POLYMOD_NOT_LOADED:
                log(ERROR, 'NOT LOADED - ${error.message}');
            case MISSING_MOD:
                log(ERROR, 'MISSING MOD - ${error.message}');
            default:
                log(error.severity, error.message);
        }
    }

    /**
     * Displays a window pop-up message to give an error message.
     * @param message The message to show.
     * @param title The title of the window.
     */
    public static function showErrorAlert(errorMessage:String, title:String)
    {
        FlxG.stage.application.window.alert(errorMessage, title);
    }

    /**
     * Logs a Polymod error into the console.
     * @param type The severity of the Polymod error.
     * @param message The message to display.
     */
    public static function log(type:PolymodErrorType, message:String)
    {
        switch (type)
        {
            case NOTICE: info(message);
            case WARNING: warning(message);
            case ERROR: error(message);
        }
    }

    public static function info(message:String):Void
    {
        trace(' POLYMOD: INFO '.bg_blue().bold() + ' ' + message);
    }
    
    public static function warning(message:String):Void
    {
        trace(' POLYMOD: WARNING '.bg_yellow().bold() + ' ' + message);
    }
    
    public static function debug(message:String):Void
    {
        trace(' POLYMOD: DEBUG '.bg_white().bold() + ' ' + message);
    }
    
    public static function error(message:String):Void
    {
        trace(' POLYMOD: ERROR '.bg_red().bold() + ' ' + message);
    }
}