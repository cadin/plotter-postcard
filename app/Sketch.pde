class Sketch extends PlotterCanvas {
	// vars available in this Sketch:

	// int w, h;                       -- width & height in pixels
	// float screenScale, ppi;         -- the scale factor and pixels per inch of current canvas
	// float strokeWeight;             -- the scaled stroke weight for the sketch
	// int canvasMouseX, canvasMouseY; -- mouse position in canvas coordinates

	LineWobbler wob = new LineWobbler();
	PlotterText pt = new PlotterText("fonts/astroTown/", 20);

	Sketch(){}

	void draw() {
		drawDivider();
		drawMessage();
		drawAddress();
		drawCaption();
	}

	void drawLayersWithPenSize(float penSize) {
		if(messagePenThickness == penSize) {
			drawMessage();
		} 
		if(addressPenThickness == penSize) {
			drawAddress();
		}
		if(captionPenThickness == penSize) {
			drawCaption();
		} 
		if(dividerPenThickness == penSize) {
			drawDivider();
		} 
	}

	void drawDivider() {
		int quarterInch = int(0.25 * ppi);
		strokeWeight(calculateStrokeSize(dividerPenThickness));
		randomSeed(0);

		wob.wobbleEndPointPosition = false;
		wob.wobbleEndPointAmplitude = false;
		wob.drawBrokenLine(w / 2, quarterInch, w / 2, h - quarterInch);
	}

	void drawMessage() {
		int sideMargin = int(messageSideMargin * ppi);
		int topMargin = int(messageTopMargin * ppi);
		strokeWeight(calculateStrokeSize(messagePenThickness));

		pushMatrix();
			translate(sideMargin, topMargin);
			pt.setSize(messageTextSize);
			pt.lineHeight = messageLineHeight;
			pt.drawText(messageText, 0, 0, w/2 - sideMargin * 2);
		popMatrix();
	}

	void drawAddress() {
		int sideMargin = int(addressSideMargin * ppi);
		int bottomMargin = int(0.5 * ppi);
		strokeWeight(calculateStrokeSize(messagePenThickness));

		pushMatrix();
			translate(w/2 + sideMargin, h/2);
			pt.setSize(addressTextSize);
			pt.lineHeight = addressLineHeight;
			pt.drawText(addressText, 0, 0, w/2 - sideMargin);
		popMatrix();
	}

	void drawCaption() {
		int sideMargin = int(messageSideMargin * ppi);
		int topMargin = int(captionTopMargin * ppi);
		strokeWeight(calculateStrokeSize(captionPenThickness));

		pushMatrix();
			translate(sideMargin, topMargin);
			pt.setSize(captionTextSize);
			pt.lineHeight = captionLineHeight;
			pt.drawText(captionText, 0, 0, w/2 - sideMargin * 2);
		popMatrix();
	}

	
}