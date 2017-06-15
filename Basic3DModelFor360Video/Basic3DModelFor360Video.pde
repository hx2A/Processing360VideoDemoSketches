void setup() {
  size(500, 500, P3D);
  int direction = 1;

  if (direction == 0) { // look up
    background(color(0, 0, 127));
    camera(0, 0, 0, 0, -100, 0, 0, 0, -1);
  } else if (direction == 1) { // look straight
    background(color(0, 127, 127));
    camera(0, 0, 0, 0, 0, -100, 0, 1, 0);
  } else if (direction == 2) { // look right
    background(color(0, 127, 0));
    camera(0, 0, 0, 100, 0, 0, 0, 1, 0);
  } else if (direction == 3) { // look to rear
    background(color(127, 127, 0));
    camera(0, 0, 0, 0, 0, 100, 0, 1, 0);
  } else if (direction == 4) { // look left
    background(color(127, 0, 0));
    camera(0, 0, 0, -100, 0, 0, 0, 1, 0);
  } else if (direction == 5) { // look down
    background(color(127, 0, 127));
    camera(0, 0, 0, 0, 100, 0, 0, 0, 1);
  }

  perspective(PI / 2, 1, 1, 1000);
}

void draw() {
  pushMatrix();
  translate(-35, 42, -50);
  fill(color(255, 0, 0));
  box(20);
  popMatrix();

  pushMatrix();
  translate(35, 10, -50);
  fill(color(0, 0, 255));
  sphere(20);
  popMatrix();
}