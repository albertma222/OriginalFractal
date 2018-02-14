float a = 250;
float b = 250;
float c = 0;
float d = 0;

public void setup() {
	size(500, 500);
	noFill();
	strokeWeight(1);
	background(0);

}

public void draw() {
	aFractal(125, 125, a);
	sierpinski(250, 250, a);
	aRect(0, 250, a);
	text("Click to make the ting go skrraa", 300, 300);
	skya(260, 300);
}

public void mousePressed()
{
	c++;
	d++;
	if(c < 8) {
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

public void aRect(float x, float y, float s) {
	if(s <= b) {
		rect(x, y, s, s);
	}
	else {
		stroke(0);
		aRect(x, y, s/2);
		rect(x, y, s, s);
	}
}

public void skya(float x, float y) {
	textSize(10);
	if(d == 2) {
		text("Your girl knows I've got the sauce, no ketchup", x, y + 10);
	}
	else if(d == 3) {
		text("Just sauce, raw sauce", x, y + 20);
	}
	else if(d == 4) {
		text("AH, YA, BOOM, AH", x, y + 30);
	}
	else if(d == 5) {
		text("THE TING GOES SKRRAA", x, y + 40);
	}
	else if(d == 6) {
		text("SKIDIKI-PAP-PAP, AND A TUM TUM TRRR BOOM", x, y + 50);
	}
	else if(d == 7) {
		text("SKYYYYYAAAA", x, y + 60);
	}
	else if(d == 8) {
		d = 2;
	}
}