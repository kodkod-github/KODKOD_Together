/*

 notes:
 'for' in 'for' loop
 define the number of the circles and evenly arrange them in the canvas

 */

int maxColumn = 10; //number of columns
int maxRow = 20; //number of rows
int size = 30;  //circle size

void setup() {
  size(400, 600);
}

void draw() {
  background(0, 0, 255);

  for (int i=1; i<maxColumn; i++) {
    for (int j=1; j<maxRow; j++) {
      float x = i*width/maxColumn;
      float y = j*height/maxRow;

      noFill();
      stroke(255);
      strokeWeight(2);
      ellipse(x, y, size, size);
    }
  }
}

/*

 if 'i' starts from 0, then there will be 10 (maxColumn) columns
 if 'i' starts from 1, then there will be 9 (maxColumn-1) columns
 ** same logic applies to 'j'

 because I prefer not to start right at the edge, I chose to start from 1

 */
