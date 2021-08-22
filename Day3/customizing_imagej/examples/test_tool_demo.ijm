var name="user";

macro "Test Tool - C000 T0h24T" {
  getCursorLoc(x, y, z, modifiers);
  print (name, "clicked:",x, y);

  makePoint(x, y);
  Overlay.addSelection("red");
  run("Select None");
  
}
macro "Test Tool Options" {
  name = getString("Name",name);
}
macro "Test Tool Selected" {
  print ("Test tool was selected");
}

macro "Clear Action Tool - C00cO11cc" {
  Overlay.clear();
  Overlay.show();
}