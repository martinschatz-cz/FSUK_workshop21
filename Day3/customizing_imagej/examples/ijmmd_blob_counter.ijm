/*
# Counting blobs
Robert Haase, robert.haase@tu-dresden.de

We start with cleaning up
*/
run("Close All");
run("Clear Results");

/*
## Loading data
*/
filename = "http://imagej.nih.gov/ij/images/blobs.gif"
open(filename);

/*
## Segmentation
*/
// binarize
setOption("BlackBackground", true);
setAutoThreshold("Default");
run("Convert to Mask");
// Connected components labeling
run("Analyze Particles...", "  show=[Count Masks]");
run("glasbey on dark");

/*
## Meaurement
*/
run("Set Measurements...", "min redirect=None decimal=3");
run("Measure");

/*
## Comclusions
*/
number_of_blobs = getResult("Max", 0);
print("There are " + number_of_blobs + " in " + filename);


