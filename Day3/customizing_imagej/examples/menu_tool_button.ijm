
var dCmds = newMenu("Color Menu Tool",
      newArray("Red", "Green", "Blue"));
      
macro "Color Menu Tool - C000" {
    cmd = getArgument();
    if (cmd=="Red") {
        run("Alert ", "object=Image color=Red duration=2000");
    } else if (cmd=="Green") {
        run("Alert ", "object=Image color=Green duration=2000");
    } else if (cmd=="Blue") {
        run("Alert ", "object=Image color=Blue duration=2000");
    }
}
