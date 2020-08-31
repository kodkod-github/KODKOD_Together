/*

 'for' structure:
 for ('initial'; 'test'; 'update'){
 ...
 }

 */

int size = 50;  //circle size
int r;  //pattern radius

void setup() {
  size(400, 600);
}

void draw() {
  background(0, 0, 255);
  r = (int)map(mouseY, 0, height, 0, 170); //use mouseY to control the radius size

  for (int i=0; i<360; i+=20) {
    float rad = radians(i); //change degree to radius
    float x = width/2 + r*sin(rad);
    float y = height/2 + r*cos(rad);

    noFill();
    stroke(255);
    strokeWeight(2);
    ellipse(x, y, size, size);
  }

  /*

   'i' values = {0, 20, 40, 60, 80, ..., 300, 320, 340}

   */
}
