// source: 
// https://forum.image.sc/t/auto-code-completion-for-ij-macro/11642/95

/***** Installs custom functions from folder *****
 * To load at startup, this macro file should reside inside /macros/AutoRun/
 * 
 * Nicolas De Francesco (image.sc @NicoDF), July 2019
 * Scanning folder trick taken from Fiji's AutorRun_Scripts.ijm 
 */

custom_folder = "/function library/"; // modify to suit your needs. The folder should be inside the macros folder.

functionDirectory = getDirectory("macros") + custom_folder;
if (File.isDirectory(functionDirectory)) {
    list = getFileList(functionDirectory);
    for (i=0; i<list.length; i++) {
        path=functionDirectory + list[i];
        functions = File.openAsString(path);
        existing=call("ij.macro.Interpreter.getAdditionalFunctions");
        if(existing==0) existing="";
		call("ij.macro.Interpreter.setAdditionalFunctions", existing+functions);
    }
}

showStatus("Custom Functions Installed");