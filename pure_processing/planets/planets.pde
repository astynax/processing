int p1, s1, p2, s2, p3, s3;

void settings() {
  size(800, 800);
  smooth();
  p1 = 0;
  s1 = 0;
  p2 = 0;
  s2 = 0;
  p3 = 0;
  s3 = 0;
}

void setup() {
  noFill();
  ellipseMode(CENTER);
}

void planet(float orbit, float s, float angle,
            float satOrbit, float ss, float satAngle) {
  pushMatrix();
  stroke(#606060);
  circle(0, 0, orbit);
  rotate(radians(angle));
  translate(0, orbit / 2);
  stroke(#ffffff);
  circle(0, 0, s);
  stroke(#606060);
  circle(0, 0, satOrbit);
  rotate(radians(satAngle - angle));
  translate(0, satOrbit / 2);
  stroke(#ffffff);
  circle(0, 0, ss);
  popMatrix();
}

void draw() {
  background(#000000);
  translate(width / 2, height / 2);
  stroke(#ffff80);
  circle(0, 0, 50);
  planet(200, 10, p1, 30, 3, s1);
  planet(350, 20, p2, 70, 7, s2);
  planet(650, 25, p3, 80, 9, s3);
  p1 = (p1 + 5) % 360;
  s1 = (s1 + 20) % 360;
  p2 = (p2 - 2) % 360;
  s2 = (s2 - 16) % 360;
  p3 = (p3 + 1) % 360;
  s3 = (s3 + 8) % 360;
}
