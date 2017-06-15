import camera3D.Camera3D;

Camera3D camera3D;

int x;
int y;
int z;

void setup() {
  size(1000, 500, P3D);

  camera3D = new Camera3D(this);

  camera3D.renderMonoscopic360();
  camera3D.camera(0, 0, 0, 0, 0, -100, 0, 1, 0);

  x = -12;
  y = 25;
  z = -17;
}

void draw() {
  int direction = camera3D.getFrameNum();

  if (direction == 0) { // look up
    background(color(0, 0, 127));
  } else if (direction == 1) { // look straight
    background(color(0, 127, 127));
  } else if (direction == 2) { // look right
    background(color(0, 127, 0));
  } else if (direction == 3) { // look to rear
    background(color(127, 127, 0));
  } else if (direction == 4) { // look left
    background(color(127, 0, 0));
  } else if (direction == 5) { // look down
    background(color(127, 0, 127));
  }

  strokeWeight(5);
  stroke(color(0));
  fill(color(255));

  pushMatrix();
  translate(x, y, z);
  box(10);
  popMatrix();
}