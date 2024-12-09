// SCREEN SCALES
// helps scale canvas to appear 1:1 on screen
float MACBOOK_15_SCALE = 0.4912;
float MACBOOK_13_SCALE = 0.5;
float LG_DISPLAY_SCALE = 0.366;
// ----------------------------
// ### PROJECT CONFIG ###

// SCREEN SETTINGS (for previewing)
boolean useRetinaDisplay = true;
boolean fullscreen = true;
float displayScale = LG_DISPLAY_SCALE;

// PLOTTER SETTINGS (in inches)
float maxPlotW = 17;
float maxPlotH = 11;
boolean constrainToPlotArea = false;


// ----------------------------
// ### POSTCARD CONFIG ###

// PRINT SETTINGS (in inches)
float printW = 7;
float printH = 5;

// save a PNG preview alongside SVG
boolean savePNGPreview = true;

// save separate SVG for each pen size
boolean saveLayers = true;


// ----------------------------
// ### POSTCARD TEXT ###

String messageText = "Happy PTPX,\n\nI made the image for this in Processing. If you’re interested, you can find the code on my Github: github.com/cadin\n\nI also have a demo video of the project on youtube:\nyoutube.com/@cadinb\n\nI hope you like the postcard!";
float messageTextSize = 9;
float messageLineHeight = 2;
float messageSideMargin = 0.25; // in inches
float messageTopMargin = 0.75; // in inches
float messagePenThickness = 0.5; // in mm

String addressText = "PTPX Participant\n123 Fake Street\nSpringfield, OH 12345\nUSA";
float addressTextSize = 10;
float addressLineHeight = 2;
float addressSideMargin = 0.5; // in inches
float addressPenThickness = 0.5; // in mm

String captionText = "Artwork by Cadin Batrack | #ptpx 2024\ncadinbatrack.com • Instagram: cadinbatrack";
float captionTextSize = 6.5;
float captionLineHeight = 2;
float captionTopMargin = 0.25; // in inches
float captionPenThickness = 0.35; // in mm

// pen thickness for the divider line (in mm)
float dividerPenThickness = 0.5;