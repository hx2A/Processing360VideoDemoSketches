void setup() {
  size(500, 500, P3D);

  // default camera settings:
  //
  // camera(width/2, height/2, (height/2) / tan(PI/6),
  // width/2, height/2, 0,
  // 0, 1, 0);

  background(color(0, 127, 127));
  camera(0, 0, 0, // position
    0, 0, -100, // look-at location
    0, 1, 0); // up vector

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