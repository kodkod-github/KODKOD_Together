/*

 'for' structure:
 for ('initial'; 'test'; 'update'){
 ...
 }

 */

int max = 20;  //maximum number of the circle
int size = 50;  //circle size

void setup() {
  size(400, 600);
}

void draw() {
  background(0, 0, 255);

  // map the range of mouseY from '0~height' to '1~max'
  int m = (int)map(mouseY, 0, height, 1, max);

  for (int i=1; i<m; i++) {
    float x = width/2;
    float y = i*height/m;

    noFill();
    stroke(255);
    strokeWeight(2);
    ellipse(x, y, size, size);
  }

  /*

   'i' starts from 1
   for all the 'i' less than 'm', execute functions inside {}
   **increment is 1

   */
}
