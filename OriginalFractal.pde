int a = 250;
int b = 10;
int k = 10;

public void setup() {
	size(500, 500);
	noFill();
	stroke(228, 155, 15);
}

public void draw() {
	background(205);
	aFractal(125, 125, 250);
}

public void aFractal(int x, int y, int r) {
	if(r <= b) {
		ellipse(x, y, r, r);
	}
	else {
		aFractal(x/2, y, r/2);
		ellipse(x, y, r, r);
	}
}