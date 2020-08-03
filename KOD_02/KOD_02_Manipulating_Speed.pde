/*

 notes:

 key 'r', 'g', 'b', 'a' to change fill
 key '+', '-' to change speed
 key 'spacebar' to reset

 mouse left to start saving frames
 mouse right to stop saving frames

 */

int size = 50;  //circle size
PVector pos;    //circle position
PVector vel;    //circle velocity
int r, g, b;    //colour
int a = 255;    //alpha
boolean save = false;  //boolean for saveFrame

void setup() {
  size(400, 600);  //canvas size
  pos = new PVector (width/2, height/2);  //set initial position
  vel = new PVector (random(-5, 5), random(-5, 5));  //set initial velocity
}

void draw() {
  background(0, 0, 255);

  fill(r, g, b, a);
  stroke(255);
  strokeWeight(2);
  ellipse(pos.x, pos.y, size, size);

  pos.add(vel); //add velocity

  //bounce off canvas boundary
  if (pos.x<size/2 || pos.x>width-size/2) {
    vel.x = -vel.x;
  }
  if (pos.y<size/2 || pos.y>height-size/2) {
    vel.y = -vel.y;
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

  //change velocity
  if (key == '+') {
    vel.mult(1.1);
  }
  if (key == '-') {
    vel.mult(0.9);
  }

  //reset
  if (key == ' ') {
    pos.set(width/2, height/2);
    vel.set(random(-5, 5), random(-5, 5));
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
