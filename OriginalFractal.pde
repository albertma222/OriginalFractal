float a = 250;
float b = 250;
float c = 0;
float k = 0;

public void setup() {
	size(500, 500);
	noFill();
	strokeWeight(1);
	background(0);
}

public void draw() {
	aFractal(125, 125, 250);
	sierpinski(250, 250, a);
}

public void mousePressed()
{
	c++;
	if(c < 6) {
		b = b /2;
		fill(255, 255, 255, 10);
		rect(0,0,500,500);
		background(0);
		sierpinski(250, 250, b);
	}
	else {
		c = 0;
		b = 250;
		sierpinski(250, 250, b);
	}
}

public void aFractal(float x, float y, float r) {
	if(r <= b) {
		ellipse(x, y, r, r);
	}
	else {
		stroke(0);
		aFractal(x/2, y, r/2);
		ellipse(x, y, r, r);
	}
}

public void sierpinski(float x, float y, float len) {
	if(len <= b) {
		triangle(x, y, x + len/2, y - len,x + len, y);
	}
	else {
		noStroke();
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
}