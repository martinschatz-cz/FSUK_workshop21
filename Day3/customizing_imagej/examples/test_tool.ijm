var name="user";

macro "Test Tool - C000 T0h24T" {
  getCursorLoc(x, y, z, modifiers);
print (name, "clicked:",x, y);
}
macro "Test Tool Options" {
  name = getString("Name",name);
}
macro "Test Tool Selected" {
  print ("Test tool was selected");
}