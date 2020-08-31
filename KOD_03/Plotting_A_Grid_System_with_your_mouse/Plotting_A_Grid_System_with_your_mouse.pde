/*

 notes:
 'for' in 'for' loop
 define the gap and fill the canvas with circles

 */

int gap = 40;  //grid gap size
int size = 30;  //circle size

void setup() {
  size(400, 600);
}

void draw() {
  background(0, 0, 255);

  for (int i=gap/2; i<mouseX; i+=gap) {
    for (int j=gap/2; j<mouseY; j+=gap) {
      float x = i;
      float y = j;

      noFill();
      stroke(255);
      strokeWeight(2);
      ellipse(x, y, size, size);
    }
  }
}

/*

 try to change 'i<width' to 'i<mouseX'
 and 'j<height' to 'j<mouseY'

 */
