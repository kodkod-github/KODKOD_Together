/*

 notes:

 key 'r', 'g', 'b', 'a' to change fill
 key 'spacebar' to reset

 mouse left to start saving frames
 mouse right to stop saving frames

 */

int size = 50;   //circle size
PVector pos;     //circle position
PVector vel;     //circle velocity
PVector gravity;
float fx = 0.95; //x friction
float fy = 0.9;  //y friction
int r, g, b;     //colour
int a = 255;     //alpha
boolean save = false; //boolean for saveFrame

void setup() {
  size(400, 600);  //canvas size
  pos = new PVector (width/2, size);  //initial position
  vel = new PVector (random(-3, 3), random(2));  //initial velocity
  gravity = new PVector (0, 0.2);  //set gravity
}

void draw() {
  background(0, 0, 255);

  fill(r, g, b, a);
  stroke(255);
  strokeWeight(2);
  ellipse(pos.x, pos.y, size, size);

  pos.add(vel);      //add velocity
  vel.add(gravity);  //add gravity

  //bounce off canvas boundary (x direction)
  if (pos.x < size/2) {
    vel.x *= -fx;
    pos.x = size/2;
  }
  if (pos.x > width-size/2) {
    vel.x *= -fx;
    pos.x = width-size/2;
  }

  //bounce off canvas boundary (y direction)
  if (pos.y>height-size/2) {
    vel.y *= -fy;
    pos.y = height-size/2;
  }

  //save frames
  if (save == true) {
    saveFrame("frame/f-#####.png");  //save frames in folder 'frame'
  }

  println(vel.x, vel.y);
}

void keyPressed() {

  //change colour
  if (key == 'r') {
    r++;
  }
  if (key == 'g') {
    g++;
  }
  if (key == 'b') {
    b++;
  }
  if (key == 'a') {
    a--;
  }

  //reset
  if (key == ' ') {
    pos.set(width/2, size);
    vel.set(random(-3, 3), random(2));
    r=g=b=0;
    a=255;
  }
}

void mousePressed() {

  //start saving frames
  if (mouseButton == LEFT) {
    save = true;
  }

  //stop saving frames
  if (mouseButton == RIGHT) {
    save = false;
  }
}
