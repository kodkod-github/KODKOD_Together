/*

 notes:

 key 'r', 'g', 'b', 'a' to change fill
 key 'spacebar' to reset colour

 key '+' to start saving frames
 key '-' to stop saving frames

 mousePressed: circle moves towards mouse position
 (try dragging the mouse)

 */

int size = 50;  //circle size
PVector pos;    //circle position
PVector vel;    //circle velocity
float easing = 0.02; //easing value (towards mouse)
int r, g, b;    //colour
int a = 255;    //alpha
boolean save = false;  //boolean for saveFrame

void setup() {
  size(400, 600);  //canvas size
  pos = new PVector (width/2, height/2);  //set initial position
  vel = new PVector (4, 3);  //set initial velocity
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

  //move towards mouse
  if (mousePressed) {
    PVector m = new PVector(mouseX, mouseY);
    PVector comeHere = m.sub(pos);
    comeHere.mult(easing);
    vel.set(comeHere);
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

  //save frame
  if (key == '+') {
    save = true;
  }
  if (key == '-') {
    save = false;
  }

  //reset
  if (key == ' ') {
    r=g=b=0;
    a=255;
  }
}

//reset velocity when mouse released
void mouseReleased() {
  vel.set(4, 3);
}
