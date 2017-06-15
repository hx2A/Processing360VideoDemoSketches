import camera3D.Camera3D;

Camera3D camera3D;

void setup() {
  size(1000, 500, P3D);

  camera3D = new Camera3D(this);

  camera3D.renderMonoscopic360();
  // .setOutputSizeAndLocation(4096, "/tmp/basic_model_frames/####_basic_model.jpg");

  camera3D.setBackgroundColor(0);
  camera3D.enableSaveFrame('s', "/tmp/basic_model/");
  camera3D.camera(0, 0, 0, 0, 0, -100, 0, 1, 0);
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